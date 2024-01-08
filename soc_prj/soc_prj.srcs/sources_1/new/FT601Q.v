`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/08 19:59:14
// Design Name: 
// Module Name: ft60x_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ft60x_top(
    //ila clk
    input                   ila_clk,

    //FIFO interface     
    input [31:0]            usb_data_ch_1,
    output                  usb_data_req,
    input                   usb_fifo_almost_empty,
    output reg              usb_burst_trigger,

    //trigger interface
    input                   In_Trig,
    output                  trigger_en,

    //USB interface
    input                  CLK_i,
    inout [31:0]           DATA_io,
    inout [3:0]            BE_io,
    input                  RXF_N_i,   // ACK_N
    input                  TXE_N_i,
    output reg             OE_N_o,
    output reg             WR_N_o,    // REQ_N
    output                 SIWU_N_o,
    output reg             RD_N_o,
    output                 WAKEUP_o,
    output [1:0]           GPIO_o
);

localparam Stage_Idle = 2'b00;
localparam Stage_Host_Write = 2'b01;
localparam Stage_Host_Read = 2'b10;
localparam Stage_Wait = 2'b11;

assign USBSS_EN = 1'b1;    
assign WAKEUP_o = 1'b1;
assign GPIO_o   = 2'b00;    
assign SIWU_N_o = 1'b0;

wire rstn;

wire [31:0] FIFO_Din;
wire [31:0] FIFO_Dout;
wire [3 :0] BE_RD;
wire [ 3:0] BE_WR;
wire FIFO_F,FIFO_V;
reg [1:0] USB_S;
wire FIFO_WR, FIFO_RD;

assign FIFO_Dout = usb_data_ch_1;
assign usb_data_req = FIFO_RD;

//read or write flag
assign FIFO_Din =  (USB_S==Stage_Host_Write ) ? DATA_io     : 32'd0;//read data dir
assign DATA_io  =  (USB_S==Stage_Host_Read  ) ? FIFO_Dout   : 32'bz;// write data dir
assign BE_RD    =  (USB_S==Stage_Host_Write ) ? BE_io       : 4'd0;
assign BE_io    =  (USB_S==Stage_Host_Read  ) ? BE_WR       : 4'bz;// write data dir
assign BE_WR    =  4'b1111;

assign FIFO_WR    = (!RD_N_o)&&(!RXF_N_i);
assign FIFO_RD    = (!WR_N_o)&&(!TXE_N_i);

reg     usb_fifo_almost_empty_d1 = 1;
reg     usb_fifo_almost_empty_d2 = 1;

always @(posedge CLK_i)begin
    usb_fifo_almost_empty_d1 <= usb_fifo_almost_empty;
    usb_fifo_almost_empty_d2 <= usb_fifo_almost_empty_d1;
end
ila_0 u_ila_0 (
	.clk    (ila_clk        ), // input wire clk

	.probe0 (DATA_io[0+:16] ), // input wire [15:0]  probe0  
	.probe1 (FIFO_RD        ), // input wire [0:0]  probe1 
	.probe2 (USB_S          ), // input wire [1:0]  probe2
	.probe3 (FIFO_Din       ), // input wire [31:0]  probe3 
	.probe4 (FIFO_WR        ) // input wire [0:0]  probe4
);

always @(posedge CLK_i)begin
    if(!rstn)begin
        USB_S <= 2'd0;
        OE_N_o <= 1'b1;
        RD_N_o <= 1'b1; 
        WR_N_o <= 1'b1; 
        usb_burst_trigger   <=  0;
    end 
    else begin
        case(USB_S)
        Stage_Idle:begin
            OE_N_o <= 1'b1;
            RD_N_o <= 1'b1; 
            WR_N_o <= 1'b1; 
            if((!RXF_N_i)) begin
                USB_S  <= Stage_Host_Write;
                OE_N_o <= 1'b0;   
            end
            else if(!TXE_N_i)begin
                usb_burst_trigger   <=  1;
                if(!usb_fifo_almost_empty_d2) begin
                    usb_burst_trigger   <=  0;
                    USB_S  <= Stage_Host_Read;
                end
            end
        end
        Stage_Host_Write:begin
            RD_N_o <= 1'b0;   
            if(RXF_N_i) begin
                USB_S  <= Stage_Idle;
                RD_N_o <= 1'b1;
                OE_N_o <= 1'b1;      
            end
        end
        Stage_Host_Read:begin
            WR_N_o <= 1'b0; 
            if(TXE_N_i) begin
                USB_S  <= Stage_Idle;
                WR_N_o <= 1'b1; 
             end
        end
        3:begin
            USB_S <= Stage_Idle;
        end
        endcase                 
    end
end

// ila_1 ila_1_inst (
// 	.clk    (CLK_i          ), // input wire clk
// 	.probe0 (USB_S          ), // input wire [1:0]  probe0  
// 	.probe1 (FIFO_Din       ) // input wire [0:0]  probe1
// );

trigger_ctrl  trigger_ctrl_inst (
    .clk            (CLK_i      ),
    .rst_n          (rstn       ),
    .usb_wr_data    (FIFO_Din   ),
    .usb_wr_en      (FIFO_WR    ),
    .In_Trig        (In_Trig    ),
    .trigger_en     (trigger_en )
);

Delay_rst #(
    .num            (20'hffff0      )
)Delay_rst_inst(
    .clk_i          (CLK_i          ),
    .rstn_i         (1              ),
    .rst_o          (rstn           ) 
);

endmodule
