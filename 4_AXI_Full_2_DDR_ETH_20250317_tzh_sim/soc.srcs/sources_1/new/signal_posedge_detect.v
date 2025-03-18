`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/12/23 10:23:29
// Design Name:
// Module Name: signal_posedge_detect
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


module signal_posedge_detect (
    input   wire        clk             ,
    input   wire        rst_n           ,
    input   wire        signal_in       ,

    output  reg         enable_signal   ,
    output  reg         posedge_out     ,
    output  reg [9:0]   posedge_count
);

reg signal_in_d1;
// reg [9:0] count;         // 计数器，10位可以计数到1023
reg negedge_out;

// 检测 signal_in 的上升沿
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        signal_in_d1 <= 0;
    else
        signal_in_d1 <= signal_in;
end

// 侦测信号的上升沿
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        posedge_out <= 0;
    else if (signal_in && !signal_in_d1)
        posedge_out <= 1;
    else
        posedge_out <= 0;
end

// 侦测信号的上升沿
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        negedge_out <= 0;
    else if (!signal_in && signal_in_d1)
        negedge_out <= 1;
    else
        negedge_out <= 0;
end

// // 控制使能信号和计数器
// always @(posedge clk or negedge rst_n) begin
//     if (!rst_n) begin
//         count <= 0;
//     end
//     else if (signal_in && posedge_out) begin
//         count <= 0;  // 遇到新的上升沿时复位计数器
//     end
//     else if (signal_in && count < 'd1000) begin
//         count <= count + 1'd1;  // 累加计数
//     end
// end

// 对 posedge_out 进行计数
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        posedge_count <= 0;
    end
    else if (posedge_out) begin
        posedge_count <= posedge_count + 1'd1;  // 每检测到上升沿时累加
    end
end

// 控制使能信号
always @(posedge clk or negedge rst_n) begin
    if (!rst_n || negedge_out) begin
        enable_signal <= 0;
    end
    else if (posedge_out) begin
        enable_signal <= 1;  // 计数器在范围内，且输入信号为高电平时使能
    end
    else begin
        enable_signal <= 0;  // 否则关闭使能信号
    end
end

endmodule

