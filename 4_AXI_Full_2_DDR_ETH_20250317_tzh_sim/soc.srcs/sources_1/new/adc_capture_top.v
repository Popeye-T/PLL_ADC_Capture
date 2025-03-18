`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2023/12/20 20:53:23
// Design Name:
// Module Name: adc_capture_top
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


module adc_capture_top(

    /*FPGA_Sys_100MHz*/
    input       Sys_clk_P,
    input       Sys_clk_N,


   /*ADC1*/
    input       ADC1_CLK_N,
    input       ADC1_CLK_P,
    input [6:0] ADC1_DATA_P,
    input [6:0] ADC1_DATA_N,
    input       ADC1_OVR,             //超范围指示器
    output      ADC1_ADS5547_reset,   //AD复位,并�?��?????要把复位绑定到高点平
    //output reg DFS,     //数据格式与LVDS/CMOS输出接口
    output      ADC1_SEN,             //串并行模式�?�择，串行�?�并行�?�串并�?��?????//串�?�并行的区别，串行先清除寄存�?，然后�?�过SDATA读取寄存器数�?；并行直接�?�过外界引脚获取数据�????
    output      ADC1_SDATA,           //待机模式-全局(ADC、内部基准电压源和输出缓冲器关断�????
    output      ADC1_SCLK,            //低采样�?��?????(<50MHZ）的低�?�模式控�????
    output      IT_RIG_P,
    output      IT_RIG_N,

    input       E_TRIG_P,
    input       E_TRIG_N,
   /*system_wrapper*/
    inout [14:0]DDR_addr,
    inout [2:0] DDR_ba,
    inout       DDR_cas_n,
    inout       DDR_ck_n,
    inout       DDR_ck_p,
    inout       DDR_cke,
    inout       DDR_cs_n,
    inout [3:0] DDR_dm,
    inout [31:0]DDR_dq,
    inout [3:0] DDR_dqs_n,
    inout [3:0] DDR_dqs_p,
    inout       DDR_odt,
    inout       DDR_ras_n,
    inout       DDR_reset_n,
    inout       DDR_we_n,
    inout       FIXED_IO_ddr_vrn,
    inout       FIXED_IO_ddr_vrp,
    inout [53:0]FIXED_IO_mio,
    inout       FIXED_IO_ps_clk,
    inout       FIXED_IO_ps_porb,
    inout       FIXED_IO_ps_srstb,
    inout [3:0] ps_emio_tri_io

);

wire            IT_RIG          ;
wire            E_TRIG          ;
wire            Out_Trig        ;
wire            In_Trig         ;
wire            trigger_en      ;
wire            Sys_clk         ;
wire            clk_200M        ;
wire            clk_10M         ;
wire            adc_clk_ch_1    ;
wire    [15:0]  adc_data_ch_1   ;
//wire [13:0] ADC1_DATA_USB;
//wire [13:0] ADC2_DATA_USB;
//wire                usb_burst_trigger           ;
//wire                usb_fifo_almost_empty       ;
//wire    [31:0]      usb_data_ch_1               ;
//wire                usb_data_req                ;


/*系统时钟，差分转单�??*/
IBUFDS IBUFDS_Sys_clk(
    .I  (Sys_clk_P  ),
    .IB (Sys_clk_N  ),
    .O  (Sys_clk    )
);

IBUFDS IBUFDS_E_TRIG(
    .I  (E_TRIG_P   ),
    .IB (E_TRIG_N   ),
    .O  (E_TRIG     )
);

clk_wiz_0 clk_wiz_0_inst(
    .clk_out1   (clk_200M   ),
    .clk_out2   (clk_10M    ),
    .clk_in1    (Sys_clk    )
);
ila_0 ila_trig (
	.clk(clk_200M), // input wire clk


	.probe0(E_TRIG) // input wire [0:0] probe0
);
// /*Out_Trig输出�?分信号�?????200M分成500kHz�????400分�??*/
// Out_Trig #(
//    .NUM_DIV(40000)
// )Out_Trig_inst(
//     .clk        (clk_200M       ),
//     .rst_n      (trigger_en     ),
//     .clk_div    (Out_Trig       )
// );

OBUFDS OBUFDS_inst(
    .I          (IT_RIG       ),
    .O          (IT_RIG_P     ),
    .OB         (IT_RIG_N     )
);

/*In_Trig输入�?分信�?*/
/*IBUFDS IBUFDS_inst (
    .O          (In_Trig        ),  // 1-bit output: Buffer output
    .I          (In_Trig_P      ),  // 1-bit input: Diff_p buffer input (connect directly to top-level port)
    .IB         (In_Trig_N      )   // 1-bit input: Diff_n buffer input (connect directly to top-level port)
);
*/
adc_channel_ctrl u_adc_channel_1(
        .clk_200M               (clk_200M               )
    ,   .ADC_CLK_P              (ADC1_CLK_P             )
    ,   .ADC_CLK_N              (ADC1_CLK_N             )
    ,   .ADC_DATA_P             (ADC1_DATA_P            )
    ,   .ADC_DATA_N             (ADC1_DATA_N            )

    ,   .ADC_OVR                (ADC1_OVR               )
    ,   .ADC_ADS5547_reset      (ADC1_ADS5547_reset     )
    ,   .ADC_SEN                (ADC1_SEN               )
    ,   .ADC_SDATA              (ADC1_SDATA             )
    ,   .ADC_SCLK               (ADC1_SCLK              )

    ,   .adc_channel_clk        (adc_clk_ch_1           )
    ,   .adc_channel_data       (adc_data_ch_1          )
);




/*
ft60x_top u_ft60x_top(
    //ila clk
        .ila_clk                (clk_200M               )

    // FIFO interface
    ,   .usb_data_ch_1          (usb_data_ch_1          )
    ,   .usb_data_req           (usb_data_req           )
    ,   .usb_fifo_almost_empty  (usb_fifo_almost_empty  )
    ,   .usb_burst_trigger      (usb_burst_trigger      )

    //trigger interface
    ,   .In_Trig                (In_Trig                )
    ,   .trigger_en             (trigger_en             )

    //USB interface
    ,   .CLK_i                  (CLK_i              )
    ,   .DATA_io                (DATA_io            )
    ,   .BE_io                  (BE_io              )
    ,   .RXF_N_i                (RXF_N_i            )
    ,   .TXE_N_i                (TXE_N_i            )
    ,   .OE_N_o                 (OE_N_o             )
    ,   .WR_N_o                 (WR_N_o             )
    ,   .SIWU_N_o               (SIWU_N_o           )
    ,   .RD_N_o                 (RD_N_o             )
    ,   .WAKEUP_o               (WAKEUP_o           )
    ,   .GPIO_o                 (GPIO_o             )
);
*/
system_wrapper u_system_wrapper(
        // .ADC1_ADS5547_reset         (ADC1_ADS5547_reset         )
        .DDR_addr                   (DDR_addr                   )
    ,   .DDR_ba                     (DDR_ba                     )
    ,   .DDR_cas_n                  (DDR_cas_n                  )
    ,   .DDR_ck_n                   (DDR_ck_n                   )
    ,   .DDR_ck_p                   (DDR_ck_p                   )
    ,   .DDR_cke                    (DDR_cke                    )
    ,   .DDR_cs_n                   (DDR_cs_n                   )
    ,   .DDR_dm                     (DDR_dm                     )
    ,   .DDR_dq                     (DDR_dq                     )
    ,   .DDR_dqs_n                  (DDR_dqs_n                  )
    ,   .DDR_dqs_p                  (DDR_dqs_p                  )
    ,   .DDR_odt                    (DDR_odt                    )
    ,   .DDR_ras_n                  (DDR_ras_n                  )
    ,   .DDR_reset_n                (DDR_reset_n                )
    ,   .DDR_we_n                   (DDR_we_n                   )
    ,   .FIXED_IO_ddr_vrn           (FIXED_IO_ddr_vrn           )
    ,   .FIXED_IO_ddr_vrp           (FIXED_IO_ddr_vrp           )
    ,   .FIXED_IO_mio               (FIXED_IO_mio               )
    ,   .FIXED_IO_ps_clk            (FIXED_IO_ps_clk            )
    ,   .FIXED_IO_ps_porb           (FIXED_IO_ps_porb           )
    ,   .FIXED_IO_ps_srstb          (FIXED_IO_ps_srstb          )
    ,   .IT_RIG                     (IT_RIG)
    ,   .sys_clk                    (adc_clk_ch_1)
    ,   .din_0                      (adc_data_ch_1)
    ,   .ps_emio_tri_io             (ps_emio_tri_io             )
    ,   .signal_in_0                (E_TRIG                     )
);

endmodule

