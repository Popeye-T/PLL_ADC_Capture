`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2023/12/20 21:43:21
// Design Name:
// Module Name: adc_channel_ctrl
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


module adc_channel_ctrl(
    input           clk_200M,
    input           ADC_CLK_P,
    input           ADC_CLK_N,
    input   [6 :0]  ADC_DATA_P,
    input   [6 :0]  ADC_DATA_N,

    input           ADC_OVR,             //超范围指示器
    output          ADC_ADS5547_reset,   //AD复位,并行�?要把复位绑定到高点平
    output          ADC_SEN,             //串并行模式�?�择，串行�?�并行�?�串并行�?//串行并行的区别，串行先清除寄存器，然后�?�过SDATA读取寄存器数据；并行直接通过外界引脚获取数据�?
    output          ADC_SDATA,           //待机模式-全局(ADC、内部基准电压源和输出缓冲器关断�?
    output          ADC_SCLK,            //低采样频�?(<50MHZ）的低�?�模式控�?

    output          adc_channel_clk,
    output [13:0]   adc_channel_data,

    output [15:0]   adc_data_trans//????0
);

assign adc_data_trans = {2'b00,adc_channel_data};


/*把CLK_P进行延时，进行时钟对齐，先加上，不一定会用得�?*/
wire [4:0] W_delay_cnt;
wire ADC_CLK_in;

assign ADC_ADS5547_reset    =   1   ;//并行将复位绑定至高电�?
assign ADC_SEN              =   1   ;
assign ADC_SDATA            =   0   ;
assign ADC_SCLK             =   0   ;//below 50M

vio_0 vio_u (
    .clk        (clk_200M   ), // input wire clk
    .probe_out0 (W_delay_cnt) // output wire [4 : 0] probe_out0
);

IBUFDS ADC_CLK_in_inst(
    .I          (ADC_CLK_P  ),
    .IB         (ADC_CLK_N  ),
    .O          (ADC_CLK_in )
);

(* IODELAY_GROUP = "delay1" *)
IDELAYCTRL IDELAYCTRL_inst1 (
    .RDY        (), // 1-bit output: Ready output
    .REFCLK     (clk_200M   ), // 1-bit input: Reference clock input
    .RST        (1          ) // 1-bit input: Active high reset input
);

(* IODELAY_GROUP = "delay1" *)
IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
    .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
    .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
    .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
    .IDELAY_VALUE(0),                // Input delay tap setting (0-31)
    .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
    .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
    .SIGNAL_PATTERN("CLOCK")          // DATA, CLOCK input signal
)IDELAYE2_inst1(
//      .CNTVALUEOUT(CNTVALUEOUT), // 5-bit output: Counter value output
    .DATAOUT(adc_channel_clk),         // 1-bit output: Delayed data output
    .C(clk_200M),                     // 1-bit input: Clock input
    .CE(0),                   // 1-bit input: Active high enable increment/decrement input
    .CINVCTRL(0),       // 1-bit input: Dynamic clock inversion input
    .CNTVALUEIN(W_delay_cnt),   // 5-bit input: Counter value input
    .DATAIN(0),           // 1-bit input: Internal delay data input
    .IDATAIN(ADC_CLK_in),         // 1-bit input: Data input from the I/O
    .INC(0),                 // 1-bit input: Increment / Decrement tap delay input
    .LD(1),                   // 1-bit input: Load IDELAY_VALUE input
    .LDPIPEEN(0),       // 1-bit input: Enable PIPELINE register to load data input
    .REGRST(0)            // 1-bit input: Active-high reset tap-delay input
);


adc_iddr ADC1_inst(
    .sys_clk        (adc_channel_clk    ),
    .rst_n          (1'b1               ),
    .adc_data_p_in  (ADC_DATA_P         ),
    .adc_data_n_in  (ADC_DATA_N         ),
    .adc_data_out   (adc_channel_data   )
);

endmodule
