`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/20 17:40:13
// Design Name: 
// Module Name: tb_top
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


module tb_top(

    );
reg trig;
reg sys_clk;
reg rst_n;
initial begin
    trig <= 0;
    sys_clk <= 0;
    rst_n <= 0;
    #100
    rst_n <= 1;
    #35000
    trig <= 1;
    #100000;
    trig <= 0;
    #10000
    trig <= 1;
    #100000;
    trig <= 0;
end
always #5 sys_clk <= ~sys_clk;

system_wrapper system_wrapper
(
    .trig           (trig),   
    .sys_clk        (sys_clk),
    .rst_n          (rst_n)
    );

endmodule
