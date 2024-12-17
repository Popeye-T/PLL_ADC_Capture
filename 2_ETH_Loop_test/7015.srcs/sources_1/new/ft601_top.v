`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/30 15:02:21
// Design Name: 
// Module Name: ft601_top
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


module ft601_top(
inout [3:0]             AD9516_SPI_tri_io,
// system control
//input                  Rstn_i,//fpga reset
//output                 USBSS_EN,//power enable    
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
output [1:0]           GPIO_o,

inout [53:0]FIXED_IO_mio,
inout FIXED_IO_ps_clk,
inout FIXED_IO_ps_porb,
inout FIXED_IO_ps_srstb,
inout [3:0]ps_emio_tri_io
);

//assign USBSS_EN = 1'b1;    
assign WAKEUP_o = 1'b1;
assign GPIO_o   = 2'b00;    
assign SIWU_N_o = 1'b0;


wire rstn;

(*mark_debug = "true"*) wire [31:0] FIFO_Din;
(*mark_debug = "true"*) wire [31:0] FIFO_Dout;
(*mark_debug = "true"*) (* KEEP = "TRUE" *) wire [3 :0] BE_RD;
(*mark_debug = "true"*) wire [ 3:0] BE_WR;
(*mark_debug = "true"*) wire FIFO_F,FIFO_V;
(*mark_debug = "true"*) reg [1:0] USB_S;
(*mark_debug = "true"*) wire FIFO_WR, FIFO_RD;

//read or write flag
assign FIFO_Din =  (USB_S==2'd1) ? DATA_io   : 32'd0;//read data dir
assign DATA_io  =  (USB_S==2'd2) ? FIFO_Dout : 32'bz;// write data dir
assign BE_RD    =  (USB_S==2'd1) ? BE_io   : 4'd0;
assign BE_io    =  (USB_S==2'd2) ? BE_WR   : 4'bz;// write data dir
assign BE_WR    =  4'b1111;

assign FIFO_WR    = (!RD_N_o)&&(!RXF_N_i);
assign FIFO_RD    = (!WR_N_o)&&(!TXE_N_i);


always @(posedge CLK_i)begin
    if(!rstn)begin
        USB_S <= 2'd0;
        OE_N_o <= 1'b1;
        RD_N_o <= 1'b1; 
        WR_N_o <= 1'b1; 
    end 
    else begin
        case(USB_S)
        0:begin
            OE_N_o <= 1'b1;
            RD_N_o <= 1'b1; 
            WR_N_o <= 1'b1; 
            if((!RXF_N_i)) begin
                USB_S  <= 2'd1;
                OE_N_o <= 1'b0;   
            end
            else if(!TXE_N_i)begin
                USB_S  <= 2'd2;
            end
        end
        1:begin
            RD_N_o <= 1'b0;   
            if(RXF_N_i) begin
                USB_S  <= 2'd0;
                RD_N_o <= 1'b1;
                OE_N_o <= 1'b1;      
            end
        end
        2:begin
            WR_N_o <= 1'b0; 
            if(TXE_N_i) begin
                USB_S  <= 2'd0;
                WR_N_o <= 1'b1; 
             end
        end
        3:begin
            USB_S <= 2'd0;
        end
        endcase                 
    end
end


// fifo master
fifo_generator_0 fifo_inst (
  .clk(CLK_i),      // input wire clk
  .srst(!rstn),    // input wire srst
  .din(FIFO_Din),      // input wire [15 : 0] din
  .wr_en(FIFO_WR),  // input wire wr_en
  .rd_en(FIFO_RD),  // input wire rd_en
  .dout(FIFO_Dout),    // output wire [15 : 0] dout
  .full(FIFO_F),    // output wire full
 // .empty(FIFO_E),  // output wire empty
  .valid(FIFO_V)  // output wire valid
);


Delay_rst #(
    .num(20'hffff0)
)
Delay_rst_inst
(
    .clk_i(CLK_i),
    .rstn_i(1),
    .rst_o(rstn) 
 );

system_wrapper system_wrapper_inst
(
    .AD9516_SPI_tri_io  (AD9516_SPI_tri_io)
);
endmodule
