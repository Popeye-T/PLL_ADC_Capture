`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2025/03/13 15:32:59
// Design Name:
// Module Name: extern_trig
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
module extern_trig(
    input   wire        clk             ,
    input   wire        rst_n           ,
    input   wire        signal_in       ,
    input   wire        ps_signal_in    ,
    input   wire        axi_done_flag   ,

    output  reg         signal_out      ,
    output  reg         signal_enable   ,
    output  wire        fifo_rst
);

// signal_in
reg     signal_in_d1            ;
wire    signal_in_posedge       ;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        signal_in_d1 <= 0;
    else
        signal_in_d1 <= signal_in;
end
assign signal_in_posedge = signal_in && !signal_in_d1;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n || !signal_in)
        signal_out <= 0;
    else if(ps_signal_in && signal_in_posedge)
        signal_out <= 1;
end

//fifo_rst
reg first_rst;
reg first_rst_d1;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n || !ps_signal_in)
        first_rst <= 0;
    else if(ps_signal_in && signal_in_posedge)
        first_rst <= 1;
end
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        first_rst_d1 <= 0;
    else
        first_rst_d1 <= first_rst;
end
assign fifo_rst = first_rst && !first_rst_d1;

//ps_signal_in
reg     ps_signal_in_d1         ;
wire    ps_signal_in_posedge    ;
wire    ps_signal_in_negedge    ;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        ps_signal_in_d1 <= 0;
    else
        ps_signal_in_d1 <= ps_signal_in;
end
assign ps_signal_in_posedge = ps_signal_in && !ps_signal_in_d1;
assign ps_signal_in_negedge = !ps_signal_in && ps_signal_in_d1;

//signal_enable
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        signal_enable <= 0;
    else if(ps_signal_in && signal_in_posedge)
        signal_enable <= 1;
    else if(axi_done_flag)
        signal_enable <= 0;
    else
        signal_enable <= signal_enable;
end

endmodule
