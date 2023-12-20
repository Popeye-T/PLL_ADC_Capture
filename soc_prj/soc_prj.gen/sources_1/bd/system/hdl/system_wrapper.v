//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Sun Aug 20 12:50:02 2023
//Host        : naive_1109 running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (


   /*USB3.0接口*/
    //    Rstn_i,//fpga reset
    //    USBSS_EN,//power enable
    CLK_i,
    DATA_io,
    BE_io,
    RXF_N_i,   // ACK_N
    TXE_N_i,
    OE_N_o,
    WR_N_o,    // REQ_N
    SIWU_N_o,
    RD_N_o,
    WAKEUP_o,
    GPIO_o,


    /*FPGA_Sys_100MHz*/
    Sys_clk_P,
    Sys_clk_N,

   /*ADC1*/
    ADC1_CLK_N,
    ADC1_CLK_P,
    ADC1_OVR,             //超范围指示器
    ADC1_ADS5547_reset,   //AD复位,并行需要把复位绑定到高点平
    //output reg DFS,     //数据格式与LVDS/CMOS输出接口
    ADC1_SEN,             //串并行模式选择，串行、并行、串并行。
                          //串行并行的区别，串行先清除寄存器，然后通过SDATA读取寄存器数据；并行直接通过外界引脚获取数据。
    ADC1_SDATA,           //待机模式-全局(ADC、内部基准电压源和输出缓冲器关断）
    ADC1_SCLK,            //低采样频率(<50MHZ）的低速模式控制
    ADC1_DATA_P,
    ADC1_DATA_N,

   /*ADC1*/
    ADC2_CLK_N,
    ADC2_CLK_P,
    ADC2_OVR,             //超范围指示器
    ADC2_ADS5547_reset,   //AD复位,并行需要把复位绑定到高点平
    //output reg DFS,     //数据格式与LVDS/CMOS输出接口
    ADC2_SEN,             //串并行模式选择，串行、并行、串并行。
                          //串行并行的区别，串行先清除寄存器，然后通过SDATA读取寄存器数据；并行直接通过外界引脚获取数据。
    ADC2_SDATA,           //待机模式-全局(ADC、内部基准电压源和输出缓冲器关断）
    ADC2_SCLK,            //低采样频率(<50MHZ）的低速模式控制
    ADC2_DATA_P,
    ADC2_DATA_N,



   //  /*E_Trig*/
   //  E_Trig_N,
   //  E_Trig_P,
    /*I_Trig*/
    I_Trig_N,
    I_Trig_P,
   /**/
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    ps_emio_tri_io
    );
    inout [14:0]DDR_addr;
    inout [2:0]DDR_ba;
    inout DDR_cas_n;
    inout DDR_ck_n;
    inout DDR_ck_p;
    inout DDR_cke;
    inout DDR_cs_n;
    inout [3:0]DDR_dm;
    inout [31:0]DDR_dq;
    inout [3:0]DDR_dqs_n;
    inout [3:0]DDR_dqs_p;
    inout DDR_odt;
    inout DDR_ras_n;
    inout DDR_reset_n;
    inout DDR_we_n;
    inout FIXED_IO_ddr_vrn;
    inout FIXED_IO_ddr_vrp;
    inout [53:0]FIXED_IO_mio;
    inout FIXED_IO_ps_clk;
    inout FIXED_IO_ps_porb;
    inout FIXED_IO_ps_srstb;
    inout [3:0]ps_emio_tri_io;

    /*USB3.0接口*/
    //    input                  Rstn_i;//fpga reset
    //    output                 USBSS_EN;//power enable
    // FIFO interface
    input                  CLK_i;
    inout [31:0]           DATA_io;
    inout [3:0]            BE_io;
    input                  RXF_N_i;   // ACK_N
    input                  TXE_N_i;
    output                 OE_N_o;
    output                 WR_N_o;    // REQ_N
    output                 SIWU_N_o;
    output                 RD_N_o;
    output                 WAKEUP_o;
    output [1:0]           GPIO_o;

    /*FPGA_Sys_100MHz*/
    input  Sys_clk_P;
    input  Sys_clk_N;

    /*ADC1*/
    input ADC1_CLK_N;
    input ADC1_CLK_P;
    input [6:0] ADC1_DATA_P;
    input [6:0] ADC1_DATA_N;
    input ADC1_OVR;                  //超范围指示器
    output ADC1_ADS5547_reset;   //AD复位,并行需要把复位绑定到高点平
    //output reg DFS,           //数据格式与LVDS/CMOS输出接口
    output ADC1_SEN;             //串并行模式选择，串行、并行、串并行。
                                //串行并行的区别，串行先清除寄存器，然后通过SDATA读取寄存器数据；并行直接通过外界引脚获取数据。
    output ADC1_SDATA;           //待机模式-全局(ADC、内部基准电压源和输出缓冲器关断）
    output ADC1_SCLK;            //低采样频率(<50MHZ）的低速模式控制

    /*ADC2*/
    input ADC2_CLK_N;
    input ADC2_CLK_P;
    input [6:0] ADC2_DATA_P;
    input [6:0] ADC2_DATA_N;
    input ADC2_OVR;                  //超范围指示器
    output ADC2_ADS5547_reset;   //AD复位,并行需要把复位绑定到高点平
    //output reg DFS,           //数据格式与LVDS/CMOS输出接口
    output ADC2_SEN;             //串并行模式选择，串行、并行、串并行。
                                //串行并行的区别，串行先清除寄存器，然后通过SDATA读取寄存器数据；并行直接通过外界引脚获取数据。
    output ADC2_SDATA;           //待机模式-全局(ADC、内部基准电压源和输出缓冲器关断）
    output ADC2_SCLK;            //低采样频率(<50MHZ）的低速模式控制

   //  //E_Trig
   //  input E_Trig_N;
   //  input E_Trig_P;

    //I_Trig
    output I_Trig_N;
    output I_Trig_P;

    /*USB3.0接口*/
    //    wire Rstn_i;//fpga reset
    //    wire USBSS_EN;//power enable
    wire CLK_i;
    wire [31:0] DATA_io;
    wire [3:0] BE_io;
    wire RXF_N_i;   // ACK_N
    wire TXE_N_i;
    wire OE_N_o;
    wire WR_N_o;    // REQ_N
    wire SIWU_N_o;
    wire RD_N_o;
    wire WAKEUP_o;
    wire [1:0] GPIO_o;


    /*FPGA_Sys_100MHz*/
    wire Sys_clk_P;
    wire Sys_clk_N;

   /*ADC1*/
   wire [6:0] ADC1_DATA_P;
   wire [6:0] ADC1_DATA_N;
   wire [13:0] ADC1_DATA;
    wire ADC1_OVR;                  //超范围指示器
    wire ADC1_ADS5547_reset;   //AD复位,并行需要把复位绑定到高点平
    //output reg DFS,           //数据格式与LVDS/CMOS输出接口
    wire ADC1_SEN;             //串并行模式选择，串行、并行、串并行。
                                //串行并行的区别，串行先清除寄存器，然后通过SDATA读取寄存器数据；并行直接通过外界引脚获取数据。
    wire ADC1_SDATA;           //待机模式-全局(ADC、内部基准电压源和输出缓冲器关断）
    wire ADC1_SCLK;            //低采样频率(<50MHZ）的低速模式控制

   /*ADC2*/
   wire [6:0] ADC2_DATA_P;
   wire [6:0] ADC2_DATA_N;
   wire [13:0] ADC2_DATA;
    wire ADC2_OVR;                  //超范围指示器
    wire ADC2_ADS5547_reset;   //AD复位,并行需要把复位绑定到高点平
    //output reg DFS,           //数据格式与LVDS/CMOS输出接口
    wire ADC2_SEN;             //串并行模式选择，串行、并行、串并行。
                                //串行并行的区别，串行先清除寄存器，然后通过SDATA读取寄存器数据；并行直接通过外界引脚获取数据。
    wire ADC2_SDATA;           //待机模式-全局(ADC、内部基准电压源和输出缓冲器关断）
    wire ADC2_SCLK;            //低采样频率(<50MHZ）的低速模式控制

   //  //E_Trig
   //  wire E_Trig_N;
   //  wire E_Trig_P;

    //I_Trig
    wire I_Trig_N;
    wire I_Trig_P;

    wire [14:0]DDR_addr;
    wire [2:0]DDR_ba;
    wire DDR_cas_n;
    wire DDR_ck_n;
    wire DDR_ck_p;
    wire DDR_cke;
    wire DDR_cs_n;
    wire [3:0]DDR_dm;
    wire [31:0]DDR_dq;
    wire [3:0]DDR_dqs_n;
    wire [3:0]DDR_dqs_p;
    wire DDR_odt;
    wire DDR_ras_n;
    wire DDR_reset_n;
    wire DDR_we_n;
    wire FIXED_IO_ddr_vrn;
    wire FIXED_IO_ddr_vrp;
    wire [53:0]FIXED_IO_mio;
    wire FIXED_IO_ps_clk;
    wire FIXED_IO_ps_porb;
    wire FIXED_IO_ps_srstb;
    wire [0:0]ps_emio_tri_i_0;
    wire [1:1]ps_emio_tri_i_1;
    wire [2:2]ps_emio_tri_i_2;
    wire [3:3]ps_emio_tri_i_3;
    wire [0:0]ps_emio_tri_io_0;
    wire [1:1]ps_emio_tri_io_1;
    wire [2:2]ps_emio_tri_io_2;
    wire [3:3]ps_emio_tri_io_3;
    wire [0:0]ps_emio_tri_o_0;
    wire [1:1]ps_emio_tri_o_1;
    wire [2:2]ps_emio_tri_o_2;
    wire [3:3]ps_emio_tri_o_3;
    wire [0:0]ps_emio_tri_t_0;
    wire [1:1]ps_emio_tri_t_1;
    wire [2:2]ps_emio_tri_t_2;
    wire [3:3]ps_emio_tri_t_3;

    IOBUF ps_emio_tri_iobuf_0
       (.I(ps_emio_tri_o_0),
        .IO(ps_emio_tri_io[0]),
        .O(ps_emio_tri_i_0),
        .T(ps_emio_tri_t_0));
    IOBUF ps_emio_tri_iobuf_1
       (.I(ps_emio_tri_o_1),
        .IO(ps_emio_tri_io[1]),
        .O(ps_emio_tri_i_1),
        .T(ps_emio_tri_t_1));
    IOBUF ps_emio_tri_iobuf_2
       (.I(ps_emio_tri_o_2),
        .IO(ps_emio_tri_io[2]),
        .O(ps_emio_tri_i_2),
        .T(ps_emio_tri_t_2));
    IOBUF ps_emio_tri_iobuf_3
       (.I(ps_emio_tri_o_3),
        .IO(ps_emio_tri_io[3]),
        .O(ps_emio_tri_i_3),
        .T(ps_emio_tri_t_3));
    system system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .ps_emio_tri_i({ps_emio_tri_i_3,ps_emio_tri_i_2,ps_emio_tri_i_1,ps_emio_tri_i_0}),
        .ps_emio_tri_o({ps_emio_tri_o_3,ps_emio_tri_o_2,ps_emio_tri_o_1,ps_emio_tri_o_0}),
        .ps_emio_tri_t({ps_emio_tri_t_3,ps_emio_tri_t_2,ps_emio_tri_t_1,ps_emio_tri_t_0}));

assign ADC1_ADS5547_reset=1;   //并行将复位绑定至高电平
assign ADC1_SCLK=0;//below 50M
assign ADC1_SEN=1;
assign ADC1_SDATA=0;

assign ADC2_ADS5547_reset=1;   //并行将复位绑定至高电平
assign ADC2_SCLK=0;//below 50M
assign ADC2_SEN=1;
assign ADC2_SDATA=0;


wire ADC1_CLK_P;
wire ADC1_CLK_N;
wire ADC1_CLK_P_output;

wire ADC2_CLK_P;
wire ADC2_CLK_N;
wire ADC2_CLK_P_output;

wire ADC1_CLK_in;
IBUFDS ADC1_CLK_in_inst(
.I(ADC1_CLK_P),
.IB(ADC1_CLK_N),
.O(ADC1_CLK_in)
);

wire ADC2_CLK_in;
IBUFDS ADC2_CLK_in_inst(
.I(ADC2_CLK_P),
.IB(ADC2_CLK_N),
.O(ADC2_CLK_in)
);

wire clk_200M;

/*系统时钟，差分转单端*/
wire Sys_clk;
IBUFDS IBUFDS_Sys_clk(
.I(Sys_clk_P),
.IB(Sys_clk_N),
.O(Sys_clk)
);

/*把100M系统时钟倍频至200M，给 ILA 和 IDELAYE2 作为参考时钟*/
clk_wiz_0 clk_wiz_0_inst
(
// Clock out ports
.clk_out1(clk_200M),     // output clk_out1
// Clock in ports
.clk_in1(Sys_clk)      // input clk_in1
);


/*把CLK_P进行延时，进行时钟对齐，先加上，不一定会用得上*/
wire [4:0] W_delay_cnt;
wire [4:0] W_delay_cnt_2;

vio_0 vio_u (
.clk(clk_200M), // input wire clk
.probe_out0(W_delay_cnt), // output wire [4 : 0] probe_out0
.probe_out1(W_delay_cnt_2) // output wire [4 : 0] probe_out0
);

//(* IODELAY_GROUP = "delay1" *)
IDELAYCTRL IDELAYCTRL_inst1 (
//.RDY(W_delay_rdy), // 1-bit output: Ready output
.REFCLK(clk_200M), // 1-bit input: Reference clock input
.RST(1) // 1-bit input: Active high reset input
);

//(* IODELAY_GROUP = "delay1" *)
IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .IDELAY_VALUE(0),                // Input delay tap setting (0-31)
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("CLOCK")          // DATA, CLOCK input signal
   )
   IDELAYE2_inst1 (
//      .CNTVALUEOUT(CNTVALUEOUT), // 5-bit output: Counter value output
      .DATAOUT(ADC1_CLK_P_output),         // 1-bit output: Delayed data output
      .C(clk_200M),                     // 1-bit input: Clock input
      .CE(0),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL(0),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(W_delay_cnt),   // 5-bit input: Counter value input
      .DATAIN(0),           // 1-bit input: Internal delay data input
      .IDATAIN(ADC1_CLK_in),         // 1-bit input: Data input from the I/O
      .INC(0),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(1),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN(0),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST(0)            // 1-bit input: Active-high reset tap-delay input
   );

//(* IODELAY_GROUP = "delay1" *)
IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .IDELAY_VALUE(0),                // Input delay tap setting (0-31)
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("CLOCK")          // DATA, CLOCK input signal
   )
IDELAYE2_inst2 (
//      .CNTVALUEOUT(CNTVALUEOUT), // 5-bit output: Counter value output
      .DATAOUT(ADC2_CLK_P_output),         // 1-bit output: Delayed data output
      .C(clk_200M),                     // 1-bit input: Clock input
      .CE(0),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL(0),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(W_delay_cnt_2),   // 5-bit input: Counter value input
      .DATAIN(0),           // 1-bit input: Internal delay data input
      .IDATAIN(ADC2_CLK_in),         // 1-bit input: Data input from the I/O
      .INC(0),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(1),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN(0),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST(0)            // 1-bit input: Active-high reset tap-delay input
   );

adc_iddr ADC1_inst(
        .sys_clk(ADC1_CLK_P_output),
        .rst_n(1'b1),
        .adc_data_p_in(ADC1_DATA_P),
        .adc_data_n_in(ADC1_DATA_N),
        .adc_data_out(ADC1_DATA)
);
adc_iddr ADC2inst(
        .sys_clk(ADC2_CLK_P_output),
        .rst_n(1'b1),
        .adc_data_p_in(ADC2_DATA_P),
        .adc_data_n_in(ADC2_DATA_N),
        .adc_data_out(ADC2_DATA)
);


wire [13:0] ADC1_DATA_USB;
wire [13:0] ADC2_DATA_USB;

fifo_generator_0 fifo_generator_0_inst (
  .wr_clk(ADC1_CLK_P_output),              // input wire wr_clk
  .rd_clk(CLK_i),              // input wire rd_clk
  .din(ADC1_DATA),                    // input wire [31 : 0] din
  .wr_en(1),                // input wire wr_en
  .rd_en(1),                // input wire rd_en
  .dout(ADC1_DATA_USB)                  // output wire [31 : 0] dout
//  .full(full),                  // output wire full
//  .almost_full(almost_full),    // output wire almost_full
//  .empty(empty),                // output wire empty
//  .almost_empty(almost_empty)  // output wire almost_empty
);

//fifo_generator_1 fifo_generator_1_inst (
//  .wr_clk(ADC2_CLK_P_output),              // input wire wr_clk
//  .rd_clk(CLK_i),              // input wire rd_clk
//  .din(ADC2_DATA),                    // input wire [31 : 0] din
//  .wr_en(1),                // input wire wr_en
//  .rd_en(1),                // input wire rd_en
//  .dout(ADC2_DATA_USB)                  // output wire [31 : 0] dout
////  .full(full),                  // output wire full
////  .almost_full(almost_full),    // output wire almost_full
////  .empty(empty),                // output wire empty
////  .almost_empty(almost_empty)  // output wire almost_empty
//);

//ila_1 ila_1_inst (
//	.clk(clk_200M), // input wire clk
//	.probe0(ADC1_DATA), // input wire [13:0]  probe0  
//	.probe1(ADC2_DATA) // input wire [13:0]  probe1
//);

/*USB3.0接口*/
FT601Q FT601Q_inst(
    // system control
//    .Rstn_i(Rstn_i),//fpga reset
//    .USBSS_EN(USBSS_EN),//power enable
    .clk_ila(clk_200M),
    .ADC_DATA_IN(ADC1_DATA_USB),
    .CLK_i(CLK_i),
    .DATA_io(DATA_io),
    .BE_io(BE_io),
    .RXF_N_i(RXF_N_i),   // ACK_N
    .TXE_N_i(TXE_N_i),
    .OE_N_o(OE_N_o),
    .WR_N_o(WR_N_o),    // REQ_N
    .SIWU_N_o(SIWU_N_o),
    .RD_N_o(RD_N_o),
    .WAKEUP_o(WAKEUP_o),
    .GPIO_o(GPIO_o)
    );

// wire E_Trig;
// IBUFDS IBUFDS_inst(
// .I(E_Trig_P),
// .IB(E_Trig_N),
// .O(E_Trig)
// );


/*I_Trig输出差分信号，200M分成500kHz，400分频*/
wire I_Trig;
I_Trig #(
   .NUM_DIV(400)
)I_Trig_inst
(
    .clk(clk_200M),
    .rst_n(1),
    .clk_div(I_Trig)
);
OBUFDS OBUFDS_inst(
.I(I_Trig),
.O(I_Trig_P),
.OB(I_Trig_N)
);

endmodule
