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
    input                  clk_50m,
    // FIFO interface     
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
wire [11 : 0] rd_data_count;

reg [7:0] cnt;
wire [31:0] data_cnt;
assign data_cnt = {8'd0,cnt,8'd0,cnt};
always @(posedge clk_50m)begin
    cnt <= cnt + 1;
end

wire [31:0] FIFO_Din;
wire [31:0] FIFO_Dout;
wire [3 :0] BE_RD;
wire [ 3:0] BE_WR;
wire FIFO_F,FIFO_V;
reg [1:0] USB_S;
wire FIFO_WR, FIFO_RD;

//read or write flag
assign FIFO_Din =  (USB_S==Stage_Host_Write ) ? DATA_io     : 32'd0;//read data dir
assign DATA_io  =  (USB_S==Stage_Host_Read  ) ? FIFO_Dout   : 32'bz;// write data dir
assign BE_RD    =  (USB_S==Stage_Host_Write ) ? BE_io       : 4'd0;
assign BE_io    =  (USB_S==Stage_Host_Read  ) ? BE_WR       : 4'bz;// write data dir
assign BE_WR    =  4'b1111;

assign FIFO_WR    = (!RD_N_o)&&(!RXF_N_i);
assign FIFO_RD    = (!WR_N_o)&&(!TXE_N_i);

reg wr_en = 0;
reg wr_en_d1 = 0;
reg wr_en_d2 = 0;
reg fifo_rst = 0;
reg [27:0]  fifo_rst_cnt;

always@(clk_50m) begin
    wr_en_d1 <= wr_en;
    wr_en_d2 <= wr_en_d1;
end   

always@(posedge CLK_i)begin
    if(!rstn)begin
        fifo_rst_cnt   <=    0;
    end 
    else if(USB_S == Stage_Host_Read) begin    
        fifo_rst_cnt   <=    0;
    end
    else if(fifo_rst_cnt < {26{1'b1}}) begin
        fifo_rst_cnt   <=   fifo_rst_cnt + 1;
    end
end

always@(posedge CLK_i)begin
    if(!rstn)begin
        wr_en   <=    0;
    end 
    else if((USB_S == Stage_Idle) & (!TXE_N_i)) begin    
        wr_en   <=    1;
    end
    else if(fifo_rst_cnt == {25{1'b1}}) begin
        wr_en   <=    0;
    end
end  

always@(posedge CLK_i)begin
    if(!rstn)begin
        fifo_rst   <=    0;
    end 
    else if(fifo_rst_cnt == {25{1'b1}}) begin    
        fifo_rst   <=    1;
    end
    else if(fifo_rst_cnt == {26{1'b1}}) begin
        fifo_rst   <=    0;
    end
end  


always @(posedge CLK_i)begin
    if(!rstn)begin
        USB_S <= 2'd0;
        OE_N_o <= 1'b1;
        RD_N_o <= 1'b1; 
        WR_N_o <= 1'b1; 
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
                if(rd_data_count > 1024) begin
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

fifo_generator_0 u_fifo_generator_1 (
  .rst              (fifo_rst       ),          // input wire rst
  .wr_clk           (clk_50m        ),          // input wire wr_clk
  .wr_en            (wr_en_d2       ),          // input wire wr_en
  .din              (data_cnt       ),          // input wire [31 : 0] din
  .rd_clk           (CLK_i          ),          // input wire rd_clk
  .rd_en            (FIFO_RD        ),          // input wire rd_en
  .dout             (FIFO_Dout      ),          // output wire [31 : 0] dout
  .full             (),                         // output wire full
  .empty            (),                         // output wire empty
  .rd_data_count    (rd_data_count  ),          // output wire [11 : 0] rd_data_count
  .wr_rst_busy      (),                         // output wire wr_rst_busy
  .rd_rst_busy      ()                          // output wire rd_rst_busy
);


Delay_rst #(
    .num            (20'hffff0      )
)Delay_rst_inst(
    .clk_i          (CLK_i          ),
    .rstn_i         (1              ),
    .rst_o          (rstn           ) 
);

endmodule
