// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Dec 23 21:02:43 2024
// Host        : DESKTOP-K54KI5V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/workspace/ADC_Cap/3_AXI_Full_2_DDR_ETH/soc.gen/sources_1/bd/system/ip/system_signal_posedge_detect_0_0/system_signal_posedge_detect_0_0_sim_netlist.v
// Design      : system_signal_posedge_detect_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_signal_posedge_detect_0_0,signal_posedge_detect,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "signal_posedge_detect,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module system_signal_posedge_detect_0_0
   (clk,
    rst_n,
    signal_in,
    enable_signal,
    posedge_out,
    posedge_count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input signal_in;
  output enable_signal;
  output posedge_out;
  output [9:0]posedge_count;

  wire clk;
  wire enable_signal;
  wire [9:0]posedge_count;
  wire posedge_out;
  wire rst_n;
  wire signal_in;

  system_signal_posedge_detect_0_0_signal_posedge_detect inst
       (.clk(clk),
        .enable_signal(enable_signal),
        .posedge_count(posedge_count),
        .posedge_out(posedge_out),
        .rst_n(rst_n),
        .signal_in(signal_in));
endmodule

(* ORIG_REF_NAME = "signal_posedge_detect" *) 
module system_signal_posedge_detect_0_0_signal_posedge_detect
   (posedge_out,
    enable_signal,
    posedge_count,
    signal_in,
    clk,
    rst_n);
  output posedge_out;
  output enable_signal;
  output [9:0]posedge_count;
  input signal_in;
  input clk;
  input rst_n;

  wire clk;
  wire count0;
  wire count10_out;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[5]_i_2_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[8]_i_1_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire \count[9]_i_2_n_0 ;
  wire \count[9]_i_3_n_0 ;
  wire [9:3]count_reg;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire enable_signal;
  wire enable_signal_i_2_n_0;
  wire enable_signal_i_3_n_0;
  wire [9:0]p_0_in;
  wire [9:0]posedge_count;
  wire \posedge_count[9]_i_2_n_0 ;
  wire posedge_out;
  wire posedge_out0;
  wire rst_n;
  wire signal_in;
  wire signal_in_d1;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(posedge_out),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(posedge_out),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(posedge_out),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \count[3]_i_1 
       (.I0(count_reg[3]),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(posedge_out),
        .O(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \count[4]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[3]),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(count10_out),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[5]_i_1 
       (.I0(count_reg[5]),
        .I1(\count[5]_i_2_n_0 ),
        .I2(posedge_out),
        .O(\count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \count[5]_i_2 
       (.I0(count_reg[4]),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(count_reg[3]),
        .O(\count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[6]_i_1 
       (.I0(count_reg[6]),
        .I1(\count[9]_i_3_n_0 ),
        .I2(posedge_out),
        .O(\count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \count[7]_i_1 
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .I2(\count[9]_i_3_n_0 ),
        .I3(posedge_out),
        .O(\count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \count[8]_i_1 
       (.I0(count_reg[8]),
        .I1(count_reg[7]),
        .I2(\count[9]_i_3_n_0 ),
        .I3(count_reg[6]),
        .I4(posedge_out),
        .O(\count[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABFF0000)) 
    \count[9]_i_1 
       (.I0(posedge_out),
        .I1(count_reg[3]),
        .I2(count_reg[4]),
        .I3(enable_signal_i_3_n_0),
        .I4(signal_in),
        .O(\count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \count[9]_i_2 
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .I2(count_reg[6]),
        .I3(\count[9]_i_3_n_0 ),
        .I4(count_reg[7]),
        .I5(count10_out),
        .O(\count[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[9]_i_3 
       (.I0(count_reg[5]),
        .I1(count_reg[3]),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(count_reg[4]),
        .O(\count[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[9]_i_4 
       (.I0(signal_in),
        .I1(posedge_out),
        .O(count10_out));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(\count[9]_i_1_n_0 ),
        .CLR(enable_signal_i_2_n_0),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(\count[9]_i_1_n_0 ),
        .CLR(enable_signal_i_2_n_0),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(\count[9]_i_1_n_0 ),
        .CLR(enable_signal_i_2_n_0),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(\count[9]_i_1_n_0 ),
        .CLR(enable_signal_i_2_n_0),
        .D(\count[3]_i_1_n_0 ),
        .Q(count_reg[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(\count[9]_i_1_n_0 ),
        .CLR(enable_signal_i_2_n_0),
        .D(\count[4]_i_1_n_0 ),
        .Q(count_reg[4]));
  FDCE \count_reg[5] 
       (.C(clk),
        .CE(\count[9]_i_1_n_0 ),
        .CLR(enable_signal_i_2_n_0),
        .D(\count[5]_i_1_n_0 ),
        .Q(count_reg[5]));
  FDCE \count_reg[6] 
       (.C(clk),
        .CE(\count[9]_i_1_n_0 ),
        .CLR(enable_signal_i_2_n_0),
        .D(\count[6]_i_1_n_0 ),
        .Q(count_reg[6]));
  FDCE \count_reg[7] 
       (.C(clk),
        .CE(\count[9]_i_1_n_0 ),
        .CLR(enable_signal_i_2_n_0),
        .D(\count[7]_i_1_n_0 ),
        .Q(count_reg[7]));
  FDCE \count_reg[8] 
       (.C(clk),
        .CE(\count[9]_i_1_n_0 ),
        .CLR(enable_signal_i_2_n_0),
        .D(\count[8]_i_1_n_0 ),
        .Q(count_reg[8]));
  FDCE \count_reg[9] 
       (.C(clk),
        .CE(\count[9]_i_1_n_0 ),
        .CLR(enable_signal_i_2_n_0),
        .D(\count[9]_i_2_n_0 ),
        .Q(count_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h222A)) 
    enable_signal_i_1
       (.I0(signal_in),
        .I1(enable_signal_i_3_n_0),
        .I2(count_reg[4]),
        .I3(count_reg[3]),
        .O(count0));
  LUT1 #(
    .INIT(2'h1)) 
    enable_signal_i_2
       (.I0(rst_n),
        .O(enable_signal_i_2_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    enable_signal_i_3
       (.I0(count_reg[5]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(count_reg[6]),
        .I4(count_reg[7]),
        .O(enable_signal_i_3_n_0));
  FDCE enable_signal_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(enable_signal_i_2_n_0),
        .D(count0),
        .Q(enable_signal));
  LUT1 #(
    .INIT(2'h1)) 
    \posedge_count[0]_i_1 
       (.I0(posedge_count[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \posedge_count[1]_i_1 
       (.I0(posedge_count[0]),
        .I1(posedge_count[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \posedge_count[2]_i_1 
       (.I0(posedge_count[0]),
        .I1(posedge_count[1]),
        .I2(posedge_count[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \posedge_count[3]_i_1 
       (.I0(posedge_count[1]),
        .I1(posedge_count[0]),
        .I2(posedge_count[2]),
        .I3(posedge_count[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \posedge_count[4]_i_1 
       (.I0(posedge_count[2]),
        .I1(posedge_count[0]),
        .I2(posedge_count[1]),
        .I3(posedge_count[3]),
        .I4(posedge_count[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \posedge_count[5]_i_1 
       (.I0(posedge_count[3]),
        .I1(posedge_count[1]),
        .I2(posedge_count[0]),
        .I3(posedge_count[2]),
        .I4(posedge_count[4]),
        .I5(posedge_count[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \posedge_count[6]_i_1 
       (.I0(\posedge_count[9]_i_2_n_0 ),
        .I1(posedge_count[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \posedge_count[7]_i_1 
       (.I0(\posedge_count[9]_i_2_n_0 ),
        .I1(posedge_count[6]),
        .I2(posedge_count[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \posedge_count[8]_i_1 
       (.I0(posedge_count[6]),
        .I1(\posedge_count[9]_i_2_n_0 ),
        .I2(posedge_count[7]),
        .I3(posedge_count[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \posedge_count[9]_i_1 
       (.I0(posedge_count[7]),
        .I1(\posedge_count[9]_i_2_n_0 ),
        .I2(posedge_count[6]),
        .I3(posedge_count[8]),
        .I4(posedge_count[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \posedge_count[9]_i_2 
       (.I0(posedge_count[5]),
        .I1(posedge_count[3]),
        .I2(posedge_count[1]),
        .I3(posedge_count[0]),
        .I4(posedge_count[2]),
        .I5(posedge_count[4]),
        .O(\posedge_count[9]_i_2_n_0 ));
  FDCE \posedge_count_reg[0] 
       (.C(clk),
        .CE(posedge_out),
        .CLR(enable_signal_i_2_n_0),
        .D(p_0_in[0]),
        .Q(posedge_count[0]));
  FDCE \posedge_count_reg[1] 
       (.C(clk),
        .CE(posedge_out),
        .CLR(enable_signal_i_2_n_0),
        .D(p_0_in[1]),
        .Q(posedge_count[1]));
  FDCE \posedge_count_reg[2] 
       (.C(clk),
        .CE(posedge_out),
        .CLR(enable_signal_i_2_n_0),
        .D(p_0_in[2]),
        .Q(posedge_count[2]));
  FDCE \posedge_count_reg[3] 
       (.C(clk),
        .CE(posedge_out),
        .CLR(enable_signal_i_2_n_0),
        .D(p_0_in[3]),
        .Q(posedge_count[3]));
  FDCE \posedge_count_reg[4] 
       (.C(clk),
        .CE(posedge_out),
        .CLR(enable_signal_i_2_n_0),
        .D(p_0_in[4]),
        .Q(posedge_count[4]));
  FDCE \posedge_count_reg[5] 
       (.C(clk),
        .CE(posedge_out),
        .CLR(enable_signal_i_2_n_0),
        .D(p_0_in[5]),
        .Q(posedge_count[5]));
  FDCE \posedge_count_reg[6] 
       (.C(clk),
        .CE(posedge_out),
        .CLR(enable_signal_i_2_n_0),
        .D(p_0_in[6]),
        .Q(posedge_count[6]));
  FDCE \posedge_count_reg[7] 
       (.C(clk),
        .CE(posedge_out),
        .CLR(enable_signal_i_2_n_0),
        .D(p_0_in[7]),
        .Q(posedge_count[7]));
  FDCE \posedge_count_reg[8] 
       (.C(clk),
        .CE(posedge_out),
        .CLR(enable_signal_i_2_n_0),
        .D(p_0_in[8]),
        .Q(posedge_count[8]));
  FDCE \posedge_count_reg[9] 
       (.C(clk),
        .CE(posedge_out),
        .CLR(enable_signal_i_2_n_0),
        .D(p_0_in[9]),
        .Q(posedge_count[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    posedge_out_i_1
       (.I0(signal_in),
        .I1(signal_in_d1),
        .O(posedge_out0));
  FDCE posedge_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(enable_signal_i_2_n_0),
        .D(posedge_out0),
        .Q(posedge_out));
  FDCE signal_in_d1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(enable_signal_i_2_n_0),
        .D(signal_in),
        .Q(signal_in_d1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
