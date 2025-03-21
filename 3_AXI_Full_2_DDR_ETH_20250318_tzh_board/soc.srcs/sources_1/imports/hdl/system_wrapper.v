//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Mon Mar 17 23:59:46 2025
//Host        : popeye running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR_addr,
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
    IT_RIG,
    din_0,
    ps_emio_tri_io,
    signal_in_0,
    sys_clk);
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
  output [0:0]IT_RIG;
  input [15:0]din_0;
  inout [3:0]ps_emio_tri_io;
  input signal_in_0;
  input sys_clk;

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
  wire [0:0]IT_RIG;
  wire [15:0]din_0;
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
  wire signal_in_0;
  wire sys_clk;

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
        .IT_RIG(IT_RIG),
        .din_0(din_0),
        .ps_emio_tri_i({ps_emio_tri_i_3,ps_emio_tri_i_2,ps_emio_tri_i_1,ps_emio_tri_i_0}),
        .ps_emio_tri_o({ps_emio_tri_o_3,ps_emio_tri_o_2,ps_emio_tri_o_1,ps_emio_tri_o_0}),
        .ps_emio_tri_t({ps_emio_tri_t_3,ps_emio_tri_t_2,ps_emio_tri_t_1,ps_emio_tri_t_0}),
        .signal_in_0(signal_in_0),
        .sys_clk(sys_clk));
endmodule
