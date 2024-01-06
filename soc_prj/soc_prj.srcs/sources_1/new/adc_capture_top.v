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
    /*USB3.0接口*/
    input                  CLK_i,
    inout [31:0]           DATA_io,
    inout [3:0]            BE_io,
    input                  RXF_N_i,   // ACK_N
    input                  TXE_N_i,
    output                 OE_N_o,
    output                 WR_N_o,    // REQ_N
    output                 SIWU_N_o,
    output                 RD_N_o,
    output                 WAKEUP_o,
    output [1:0]           GPIO_o,

    /*FPGA_Sys_100MHz*/
    input       Sys_clk_P,
    input       Sys_clk_N,

    /*Unknow ports*/
    output      I_Trig_P,
    output      I_Trig_N,

   /*ADC1*/
    input       ADC1_CLK_N,
    input       ADC1_CLK_P,
    input [6:0] ADC1_DATA_P,
    input [6:0] ADC1_DATA_N,
    input       ADC1_OVR,             //超范围指示器
    output      ADC1_ADS5547_reset,   //AD复位,并行需要把复位绑定到高点平
    //output reg DFS,     //数据格式与LVDS/CMOS输出接口
    output      ADC1_SEN,             //串并行模式选择，串行、并行、串并行。//串行并行的区别，串行先清除寄存器，然后通过SDATA读取寄存器数据；并行直接通过外界引脚获取数据。
    output      ADC1_SDATA,           //待机模式-全局(ADC、内部基准电压源和输出缓冲器关断）
    output      ADC1_SCLK,            //低采样频率(<50MHZ）的低速模式控制

   /*ADC2*/
    input       ADC2_CLK_N,
    input       ADC2_CLK_P,
    input [6:0] ADC2_DATA_P,
    input [6:0] ADC2_DATA_N,
    input       ADC2_OVR,             //超范围指示器
    output      ADC2_ADS5547_reset,   //AD复位,并行需要把复位绑定到高点平
    //output reg DFS,     //数据格式与LVDS/CMOS输出接口
    output      ADC2_SEN,             //串并行模式选择，串行、并行、串并行。//串行并行的区别，串行先清除寄存器，然后通过SDATA读取寄存器数据；并行直接通过外界引脚获取数据。
    output      ADC2_SDATA,           //待机模式-全局(ADC、内部基准电压源和输出缓冲器关断）
    output      ADC2_SCLK,            //低采样频率(<50MHZ）的低速模式控制

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

wire I_Trig;
wire trigger_en;
wire Sys_clk;
wire clk_200M;
wire clk_10M;
wire        adc_clk_ch_1;
wire [13:0] adc_data_ch_1;
wire [13:0] ADC1_DATA_USB;
wire [13:0] ADC2_DATA_USB;
wire                usb_burst_trigger           ;
wire                usb_fifo_almost_empty       ;
wire    [31:0]      usb_data_ch_1               ;
wire                usb_data_req                ;


/*系统时钟，差分转单端*/
IBUFDS IBUFDS_Sys_clk(
    .I(Sys_clk_P),
    .IB(Sys_clk_N),
    .O(Sys_clk)
);

/*把100M系统时钟倍频至200M，给 ILA 和 IDELAYE2 作为参考时钟*/
clk_wiz_0 clk_wiz_0_inst(
    // Clock out ports
    .clk_out1(clk_200M),     // output clk_out1
    .clk_out2(clk_10M),
    // Clock in ports
    .clk_in1(Sys_clk)      // input clk_in1
);

/*I_Trig输出差分信号，200M分成500kHz，400分频*/
I_Trig #(
   .NUM_DIV(2000)
)I_Trig_inst(
    .clk        (clk_200M   ),
    .rst_n      (trigger_en ),
    .clk_div    (I_Trig     )
);

OBUFDS OBUFDS_inst(
    .I          (I_Trig     ),
    .O          (I_Trig_P   ),
    .OB         (I_Trig_N   )
);

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

ila_0 u_ila_0(
	    .clk                    (adc_clk_ch_1           )  // input wire clk
	,   .probe0                 (adc_data_ch_1          )  // input wire [13:0]  probe0  
);
          
ft60x_top u_ft60x_top(
    // FIFO interface
        .usb_data_ch_1          (usb_data_ch_1          )
    ,   .usb_data_req           (usb_data_req           )
    ,   .usb_fifo_almost_empty  (usb_fifo_almost_empty  )
    ,   .usb_burst_trigger      (usb_burst_trigger      )

    //output trigger interface
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

system_wrapper u_system_wrapper(
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
    ,   .ps_emio_tri_io             (ps_emio_tri_io             )
    ,   .adc_clk_ch_1_0             (adc_clk_ch_1               )
    ,   .adc_data_ch_1_0            (adc_data_ch_1              )
    ,   .trigger_en_0               (trigger_en                 )
    ,   .usb_burst_trigger_0        (usb_burst_trigger          )
    ,   .usb_fifo_almost_empty_0    (usb_fifo_almost_empty      )
    ,   .usb_clk_ch_1_0             (CLK_i                      )
    ,   .usb_data_ch_1_0            (usb_data_ch_1              )
    ,   .usb_data_req_0             (usb_data_req               )
);

endmodule

