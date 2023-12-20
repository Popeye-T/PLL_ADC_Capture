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


module FT601Q(
    // FIFO interface
    input               clk_ila,
    input wire [13:0]           ADC_DATA_IN,
    input                  CLK_i,
    inout [31:0]           DATA_io,
    inout [3:0]            BE_io,
    input                  RXF_N_i,   // ACK_N
    input                  TXE_N_i,
    output reg             OE_N_o,//信号输出使能
    output reg             WR_N_o,    // REQ_N，写使能
    output                 SIWU_N_o,
    output reg             RD_N_o,//读使能
    output                 WAKEUP_o,
    output [1:0]           GPIO_o
);

assign WAKEUP_o = 1'b1;
assign GPIO_o   = 2'b00;
assign SIWU_N_o = 1'b0;

wire rstn;

wire [31:0] rd_data;
reg [31:0] wr_data;
wire [3 :0] BE_RD;
wire [ 3:0] BE_WR;
reg [1:0] USB_S;
reg [7:0]wr_cnt;

//read or write flag
assign rd_data  =  (USB_S==2'd1) ? DATA_io : 32'd0;//read data dir
assign DATA_io  =  (USB_S==2'd2) ? wr_data : 32'bz;// write data dir
assign BE_RD    =  (USB_S==2'd1) ? BE_io   : 4'd0;
assign BE_io    =  (USB_S==2'd2) ? BE_WR   : 4'bz;// write data dir
assign BE_WR    =  4'b1111;

Delay_rst #(
    .num(20'hffff0)
)Delay_rst_inst(
    .clk_i(CLK_i),
    .rstn_i(1),
    .rst_o(rstn)
);

always @(posedge CLK_i)begin
    wr_data <= {2'b0,ADC_DATA_IN,2'b0,ADC_DATA_IN};
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
        0:begin
            OE_N_o <= 1'b1;
            RD_N_o <= 1'b1;
            WR_N_o <= 1'b1;
            //等待接收信号，输出使能，并切换到输出状态段
            if((!RXF_N_i)) begin
                USB_S  <= 2'd1;
                OE_N_o <= 1'b0;
            end
            //等到发送信号，切换到发送状态段
            else if(!TXE_N_i)begin
                USB_S  <= 2'd2;
            end
        end
        //接收状态
        1:begin
            RD_N_o <= 1'b0;
            if(RXF_N_i) begin
                USB_S  <= 2'd0;
                RD_N_o <= 1'b1;
                OE_N_o <= 1'b1;
            end
        end
        //发送状态
        2:begin
            WR_N_o <= 1'b0;
            if(TXE_N_i) begin
                USB_S  <= 2'd0;
                WR_N_o <= 1'b1;
             end
        end
        //
        3:begin
            USB_S <= 2'd0;
        end
        endcase
    end
end
endmodule
