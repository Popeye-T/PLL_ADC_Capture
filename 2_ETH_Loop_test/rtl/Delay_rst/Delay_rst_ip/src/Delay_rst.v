`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CZ123 MSXBO corperation
// BBS:www.osrc.cn
// Engineer:sanliuyaoling.
// Create Date:    07:28:50 12/04/2015 
// Design Name:    Delay_rst
// Module Name:    Delay_rst
// Project Name: 	 Delay_rst
// Description: 	 Delay_rst
// Revision: 		 V1.0
// Additional Comments: 
//1) _i PIN input  
//2) _o PIN output
//3) _n PIN active low
//4) _dg debug signal 
//5) _r  reg delay
//6) _s state machine
//////////////////////////////////////////////////////////////////////////////
module Delay_rst#
(
	parameter[19:0]num = 20'hffff0
)(
	input clk_i,
	input rstn_i,
	output rst_o
    );

reg[19:0] cnt = 20'd0;
reg rst_d0;

/*count for clock*/
always@(posedge clk_i)
begin 
    if(!rstn_i)
    begin
       cnt<=20'd0; 
    end
    else begin
	   cnt <= ( cnt <= num)?( cnt + 20'd1 ):num;
	end
end

/*generate output signal*/
always@(posedge clk_i)
begin
    if(!rstn_i)
    begin
        rst_d0 <= 1'b0; 
    end
    else begin
	   rst_d0 <= ( cnt >= num)?1'b1:1'b0;
	end
end	

assign rst_o = rst_d0;

endmodule

