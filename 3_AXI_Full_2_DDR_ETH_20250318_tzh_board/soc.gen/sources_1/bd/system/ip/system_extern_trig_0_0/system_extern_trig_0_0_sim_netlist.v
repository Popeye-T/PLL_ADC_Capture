// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Mar 18 00:01:22 2025
// Host        : popeye running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Administrator/Desktop/AXI_Full_2_DDR_ETH_20250317_tzh_sim/soc.gen/sources_1/bd/system/ip/system_extern_trig_0_0/system_extern_trig_0_0_sim_netlist.v
// Design      : system_extern_trig_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_extern_trig_0_0,extern_trig,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "extern_trig,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module system_extern_trig_0_0
   (clk,
    rst_n,
    signal_in,
    ps_signal_in,
    axi_done_flag,
    signal_out,
    signal_enable,
    fifo_rst);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input signal_in;
  input ps_signal_in;
  input axi_done_flag;
  output signal_out;
  output signal_enable;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fifo_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output fifo_rst;

  wire axi_done_flag;
  wire clk;
  wire fifo_rst;
  wire ps_signal_in;
  wire rst_n;
  wire signal_enable;
  wire signal_in;
  wire signal_out;

  system_extern_trig_0_0_extern_trig inst
       (.axi_done_flag(axi_done_flag),
        .clk(clk),
        .fifo_rst(fifo_rst),
        .ps_signal_in(ps_signal_in),
        .rst_n(rst_n),
        .signal_enable(signal_enable),
        .signal_in(signal_in),
        .signal_out(signal_out));
endmodule

(* ORIG_REF_NAME = "extern_trig" *) 
module system_extern_trig_0_0_extern_trig
   (fifo_rst,
    signal_out,
    signal_enable,
    signal_in,
    clk,
    rst_n,
    ps_signal_in,
    axi_done_flag);
  output fifo_rst;
  output signal_out;
  output signal_enable;
  input signal_in;
  input clk;
  input rst_n;
  input ps_signal_in;
  input axi_done_flag;

  wire axi_done_flag;
  wire clk;
  wire fifo_rst;
  wire first_rst;
  wire first_rst_d1;
  wire first_rst_i_1_n_0;
  wire p_0_in;
  wire ps_signal_in;
  wire rst_n;
  wire signal_enable;
  wire signal_enable_i_1_n_0;
  wire signal_in;
  wire signal_in_d1;
  wire signal_out;
  wire signal_out_i_1_n_0;

  LUT2 #(
    .INIT(4'h2)) 
    fifo_rst_INST_0
       (.I0(first_rst),
        .I1(first_rst_d1),
        .O(fifo_rst));
  FDCE first_rst_d1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(first_rst),
        .Q(first_rst_d1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    first_rst_i_1
       (.I0(signal_in_d1),
        .I1(signal_in),
        .I2(ps_signal_in),
        .I3(first_rst),
        .O(first_rst_i_1_n_0));
  FDCE first_rst_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(first_rst_i_1_n_0),
        .Q(first_rst));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    signal_enable_i_1
       (.I0(signal_in),
        .I1(signal_in_d1),
        .I2(ps_signal_in),
        .I3(axi_done_flag),
        .I4(signal_enable),
        .O(signal_enable_i_1_n_0));
  FDCE signal_enable_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(signal_enable_i_1_n_0),
        .Q(signal_enable));
  FDCE signal_in_d1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(signal_in),
        .Q(signal_in_d1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    signal_out_i_1
       (.I0(signal_in_d1),
        .I1(ps_signal_in),
        .I2(signal_in),
        .I3(signal_out),
        .O(signal_out_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    signal_out_i_2
       (.I0(rst_n),
        .O(p_0_in));
  FDCE signal_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(signal_out_i_1_n_0),
        .Q(signal_out));
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
