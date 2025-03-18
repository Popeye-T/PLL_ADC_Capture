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
// reg [9:0] count;         // ��������10λ���Լ�����1023
reg negedge_out;

// ��� signal_in ��������
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        signal_in_d1 <= 0;
    else
        signal_in_d1 <= signal_in;
end

// ����źŵ�������
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        posedge_out <= 0;
    else if (signal_in && !signal_in_d1)
        posedge_out <= 1;
    else
        posedge_out <= 0;
end

// ����źŵ�������
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        negedge_out <= 0;
    else if (!signal_in && signal_in_d1)
        negedge_out <= 1;
    else
        negedge_out <= 0;
end

// // ����ʹ���źźͼ�����
// always @(posedge clk or negedge rst_n) begin
//     if (!rst_n) begin
//         count <= 0;
//     end
//     else if (signal_in && posedge_out) begin
//         count <= 0;  // �����µ�������ʱ��λ������
//     end
//     else if (signal_in && count < 'd1000) begin
//         count <= count + 1'd1;  // �ۼӼ���
//     end
// end

// �� posedge_out ���м���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        posedge_count <= 0;
    end
    else if (posedge_out) begin
        posedge_count <= posedge_count + 1'd1;  // ÿ��⵽������ʱ�ۼ�
    end
end

// ����ʹ���ź�
always @(posedge clk or negedge rst_n) begin
    if (!rst_n || negedge_out) begin
        enable_signal <= 0;
    end
    else if (posedge_out) begin
        enable_signal <= 1;  // �������ڷ�Χ�ڣ��������ź�Ϊ�ߵ�ƽʱʹ��
    end
    else begin
        enable_signal <= 0;  // ����ر�ʹ���ź�
    end
end

endmodule

