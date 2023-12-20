`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/10 14:25:08
// Design Name: 
// Module Name: LVDS_ADC_TB
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


module LVDS_ADC_TB();
    
reg rst_n;
reg [6:0] adc_data_p_in;
reg [6:0] adc_data_n_in;
wire [13:0] adc_data_out;

parameter period = 2.5;
reg clk_200m = 0;

always #(period/4) clk_200m = ~clk_200m;

//时钟和复位初始化、复位产生
initial begin
	clk_200m <= 0;
	rst_n <= 0;
	adc_data_p_in <= 7'b00011001;
    adc_data_n_in <= 7'b11100110;
    #1000;
	rst_n <= 1;
	#1;
	adc_data_p_in <= 7'b10001101;
    adc_data_n_in <= 7'b01110010;
    #1;
	adc_data_p_in <= 7'b10001101;
    adc_data_n_in <= 7'b01110010;
    #1;
	adc_data_p_in <= 7'b10000000;
    adc_data_n_in <= 7'b01111111;
   	#1;
	adc_data_p_in <= 7'b11001100;
    adc_data_n_in <= 7'b00110011;
    #1;
	adc_data_p_in <= 7'b11011100;
    adc_data_n_in <= 7'b00100011;
end

adc_iddr adc_iddr_inst1(
    .dclk_in(clk_200m),
    .rst_n(rst_n),
    .adc_data_p_in(adc_data_p_in),
    .adc_data_n_in(adc_data_n_in),
    
    .adc_data_out(adc_data_out)
    );
    
endmodule
