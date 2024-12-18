`timescale 1ns / 1ps

module ADC_Capture_ETH_top(
    /*FPGA_Sys_100MHz*/
    input           Sys_clk_P           ,
    input           Sys_clk_N           ,

    /*Input Trigger ports*/
    input           In_Trig_P           ,
    input           In_Trig_N           ,

    /*ADC1*/
    input           ADC1_CLK_N          ,
    input           ADC1_CLK_P          ,
    input [6:0]     ADC1_DATA_P         ,
    input [6:0]     ADC1_DATA_N         ,
    input           ADC1_OVR            ,//超范围指示器
    output          ADC1_ADS5547_reset  ,//AD复位,并行需要把复位绑定到高点平
    //output reg DFS                    ,//数据格式与LVDS/CMOS输出接口
    output          ADC1_SEN            ,//串并行模式选择，串行、并行、串并行。//串行并行的区别，串行先清除寄存器，然后通过SDATA读取寄存器数据；并行直接通过外界引脚获取数据。
    output          ADC1_SDATA          ,//待机模式-全局(ADC、内部基准电压源和输出缓冲器关断）
    output          ADC1_SCLK           ,//低采样频率(<50MHZ）的低速模式控制

    /*ADC2*/
    input           ADC2_CLK_N          ,
    input           ADC2_CLK_P          ,
    input [6:0]     ADC2_DATA_P         ,
    input [6:0]     ADC2_DATA_N         ,
    input           ADC2_OVR            ,//超范围指示器
    output          ADC2_ADS5547_reset  ,//AD复位,并行需要把复位绑定到高点平
    //output reg DFS                    ,//数据格式与LVDS/CMOS输出接口
    output          ADC2_SEN            ,//串并行模式选择，串行、并行、串并行。//串行并行的区别，串行先清除寄存器，然后通过SDATA读取寄存器数据；并行直接通过外界引脚获取数据。
    output          ADC2_SDATA          ,//待机模式-全局(ADC、内部基准电压源和输出缓冲器关断）
    output          ADC2_SCLK           ,//低采样频率(<50MHZ）的低速模式控制

    /*system_wrapper*/
    inout   [14:0]  DDR_addr            ,
    inout   [2:0]   DDR_ba              ,
    inout           DDR_cas_n           ,
    inout           DDR_ck_n            ,
    inout           DDR_ck_p            ,
    inout           DDR_cke             ,
    inout           DDR_cs_n            ,
    inout   [3:0]   DDR_dm              ,
    inout   [31:0]  DDR_dq              ,
    inout   [3:0]   DDR_dqs_n           ,
    inout   [3:0]   DDR_dqs_p           ,
    inout           DDR_odt             ,
    inout           DDR_ras_n           ,
    inout           DDR_reset_n         ,
    inout           DDR_we_n            ,
    inout           FIXED_IO_ddr_vrn    ,
    inout           FIXED_IO_ddr_vrp    ,
    inout   [53:0]  FIXED_IO_mio        ,
    inout           FIXED_IO_ps_clk     ,
    inout           FIXED_IO_ps_porb    ,
    inout           FIXED_IO_ps_srstb   ,
    inout   [3:0]   ps_emio_tri_io
);

wire            Out_Trig        ;
wire            In_Trig         ;
wire            trigger_en      ;
wire            Sys_clk         ;
wire            clk_200M        ;
wire            clk_10M         ;
wire            adc_clk_ch_1    ;
wire    [13:0]  adc_data_ch_1   ;
wire    [13:0]  ADC1_DATA_USB   ;
wire    [13:0]  ADC2_DATA_USB   ;


// 系统时钟，差分转单端
IBUFDS IBUFDS_Sys_clk(
    .I  (Sys_clk_P  ),
    .IB (Sys_clk_N  ),
    .O  (Sys_clk    )
);

// In_Trig输入差分信号
IBUFDS IBUFDS_inst (
    .I  (In_Trig_P  ),
    .IB (In_Trig_N  ),
    .O  (In_Trig    )
);

//把100M系统时钟倍频至200M，给 ILA 和 IDELAYE2 作为参考时钟
clk_wiz_0 clk_wiz_0_inst(
    .clk_in1    (Sys_clk    ),
    .clk_out1   (clk_200M   ),
    .clk_out2   (clk_10M    )
);

//ADC1通道控制
adc_channel_ctrl u_adc_channel_1(
    .clk_200M               (clk_200M               ),
    .ADC_CLK_P              (ADC1_CLK_P             ),
    .ADC_CLK_N              (ADC1_CLK_N             ),
    .ADC_DATA_P             (ADC1_DATA_P            ),
    .ADC_DATA_N             (ADC1_DATA_N            ),

    .ADC_OVR                (ADC1_OVR               ),
    .ADC_ADS5547_reset      (ADC1_ADS5547_reset     ),
    .ADC_SEN                (ADC1_SEN               ),
    .ADC_SDATA              (ADC1_SDATA             ),
    .ADC_SCLK               (ADC1_SCLK              ),

    .adc_channel_clk        (adc_clk_ch_1           ),
    .adc_channel_data       (adc_data_ch_1          )
);

//逻辑上低电平复位
wire            fdma_rstn               ;
//PS端时钟250M
wire            ui_clk                  ;
//用户接口
wire    [31:0]  FDMA_S_0_fdma_raddr     ;
wire            FDMA_S_0_fdma_rareq     ;
wire            FDMA_S_0_fdma_rbusy     ;
wire    [127:0] FDMA_S_0_fdma_rdata     ;
wire            FDMA_S_0_fdma_rready    ;
wire    [15:0]  FDMA_S_0_fdma_rsize     ;
wire            FDMA_S_0_fdma_rvalid    ;
wire    [31:0]  FDMA_S_0_fdma_waddr     ;
wire            FDMA_S_0_fdma_wareq     ;
wire            FDMA_S_0_fdma_wbusy     ;
wire    [127:0] FDMA_S_0_fdma_wdata     ;
wire            FDMA_S_0_fdma_wready    ;
wire    [15:0]  FDMA_S_0_fdma_wsize     ;

system_wrapper u_system_wrapper(
    .DDR_addr                   (DDR_addr                   ),
    .DDR_ba                     (DDR_ba                     ),
    .DDR_cas_n                  (DDR_cas_n                  ),
    .DDR_ck_n                   (DDR_ck_n                   ),
    .DDR_ck_p                   (DDR_ck_p                   ),
    .DDR_cke                    (DDR_cke                    ),
    .DDR_cs_n                   (DDR_cs_n                   ),
    .DDR_dm                     (DDR_dm                     ),
    .DDR_dq                     (DDR_dq                     ),
    .DDR_dqs_n                  (DDR_dqs_n                  ),
    .DDR_dqs_p                  (DDR_dqs_p                  ),
    .DDR_odt                    (DDR_odt                    ),
    .DDR_ras_n                  (DDR_ras_n                  ),
    .DDR_reset_n                (DDR_reset_n                ),
    .DDR_we_n                   (DDR_we_n                   ),
    .FIXED_IO_ddr_vrn           (FIXED_IO_ddr_vrn           ),
    .FIXED_IO_ddr_vrp           (FIXED_IO_ddr_vrp           ),
    .FIXED_IO_mio               (FIXED_IO_mio               ),
    .FIXED_IO_ps_clk            (FIXED_IO_ps_clk            ),
    .FIXED_IO_ps_porb           (FIXED_IO_ps_porb           ),
    .FIXED_IO_ps_srstb          (FIXED_IO_ps_srstb          ),

    //用户接口
    .FDMA_S_0_fdma_raddr        (FDMA_S_0_fdma_raddr        ),
    .FDMA_S_0_fdma_rareq        (FDMA_S_0_fdma_rareq        ),
    .FDMA_S_0_fdma_rbusy        (FDMA_S_0_fdma_rbusy        ),
    .FDMA_S_0_fdma_rdata        (FDMA_S_0_fdma_rdata        ),
    .FDMA_S_0_fdma_rready       (FDMA_S_0_fdma_rready       ),
    .FDMA_S_0_fdma_rsize        (FDMA_S_0_fdma_rsize        ),
    .FDMA_S_0_fdma_rvalid       (FDMA_S_0_fdma_rvalid       ),
    .FDMA_S_0_fdma_waddr        (FDMA_S_0_fdma_waddr        ),
    .FDMA_S_0_fdma_wareq        (FDMA_S_0_fdma_wareq        ),
    .FDMA_S_0_fdma_wbusy        (FDMA_S_0_fdma_wbusy        ),
    .FDMA_S_0_fdma_wdata        (FDMA_S_0_fdma_wdata        ),
    .FDMA_S_0_fdma_wready       (FDMA_S_0_fdma_wready       ),
    .FDMA_S_0_fdma_wsize        (FDMA_S_0_fdma_wsize        ),
    .FDMA_S_0_fdma_wvalid       (FDMA_S_0_fdma_wvalid       ),
    //逻辑上低电平复位
    .fdma_rstn                  (fdma_rstn                  ),
    //用来配置AD9516时钟芯片的EMIO
    .ps_emio_tri_io             (ps_emio_tri_io             ),
    //PS端时钟250M
    .ui_clk                     (ui_clk                     )
);


fdma_test fdma_test_inst0
(
    .clk_200M       (clk_200M               ),
    .ui_clk         (ui_clk                 ),
    .fdma_rstn      (fdma_rstn              ),
    .fdma_waddr     (FDMA_S_0_fdma_waddr    ),
    .fdma_wareq     (FDMA_S_0_fdma_wareq    ),
    .fdma_wsize     (FDMA_S_0_fdma_wsize    ),
    .fdma_wbusy     (FDMA_S_0_fdma_wbusy    ),
    .fdma_wdata     (FDMA_S_0_fdma_wdata    ),
    .fdma_wvalid    (FDMA_S_0_fdma_wvalid   ),
    .fdma_wready    (FDMA_S_0_fdma_wready   ),
    .fdma_raddr     (FDMA_S_0_fdma_raddr    ),
    .fdma_rareq     (FDMA_S_0_fdma_rareq    ),
    .fdma_rsize     (FDMA_S_0_fdma_rsize    ),
    .fdma_rbusy     (FDMA_S_0_fdma_rbusy    ),
    .fdma_rdata     (FDMA_S_0_fdma_rdata    ),
    .fdma_rvalid    (FDMA_S_0_fdma_rvalid   ),
    .fdma_rready    (FDMA_S_0_fdma_rready   )
);

endmodule
