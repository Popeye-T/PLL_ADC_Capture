`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2023/10/21 09:55:46
// Design Name:
// Module Name: E_Trig
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

//检测到外正沿，Flag置1，标志开始传输USB信号
module I_Trig(
    input clk,
    input rst_n,
    output reg clk_div
);
parameter NUM_DIV = 200;
reg [15:0]cnt;

always @(posedge clk or negedge rst_n)
if(!rst_n) begin
	cnt     <= 0;
	clk_div    <= 1'b0;
end
else if(cnt < NUM_DIV / 2 - 1) begin
	cnt     <= cnt + 1'b1;
	clk_div    <= clk_div;
end
else begin
	cnt     <= 0;
	clk_div    <= ~clk_div;
end
endmodule
