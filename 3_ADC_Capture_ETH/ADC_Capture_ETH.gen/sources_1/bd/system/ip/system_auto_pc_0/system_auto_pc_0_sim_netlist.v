// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Dec 17 21:46:36 2024
// Host        : DESKTOP-K54KI5V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top system_auto_pc_0 -prefix
//               system_auto_pc_0_ system_auto_pc_0_sim_netlist.v
// Design      : system_auto_pc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_auto_pc_0_axi_data_fifo_v2_1_27_axic_fifo
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  system_auto_pc_0_axi_data_fifo_v2_1_27_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module system_auto_pc_0_axi_data_fifo_v2_1_27_fifo_gen
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire full;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [4:4]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h22722272FFFF2272)) 
    S_AXI_AREADY_I_i_2
       (.I0(E),
        .I1(s_axi_awvalid),
        .I2(m_axi_awready),
        .I3(S_AXI_AREADY_I_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    S_AXI_AREADY_I_i_3
       (.I0(m_axi_awvalid_0),
        .I1(full),
        .I2(command_ongoing),
        .O(S_AXI_AREADY_I_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00888A88)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_awvalid_0),
        .I2(full),
        .I3(command_ongoing),
        .I4(m_axi_awready),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'hF222FFFFD000D000)) 
    command_ongoing_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(E),
        .I3(s_axi_awvalid),
        .I4(command_ongoing_i_2_n_0),
        .I5(command_ongoing),
        .O(\areset_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    command_ongoing_i_2
       (.I0(m_axi_awready),
        .I1(command_ongoing),
        .I2(full),
        .I3(m_axi_awvalid_0),
        .O(command_ongoing_i_2_n_0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  system_auto_pc_0_fifo_generator_v13_2_8 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({1'b0,m_axi_awlen}),
        .dout({NLW_fifo_gen_inst_dout_UNCONNECTED[4],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_1
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'hE4E4CC664E4ECC66)) 
    \length_counter_1[1]_i_1 
       (.I0(empty_fwft_i_reg),
        .I1(length_counter_1_reg[1]),
        .I2(dout[1]),
        .I3(length_counter_1_reg[0]),
        .I4(first_mi_word),
        .I5(dout[0]),
        .O(length_counter_1_reg_1_sn_1));
  LUT3 #(
    .INIT(8'hA2)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(m_axi_awvalid));
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_wready_INST_0
       (.I0(empty),
        .I1(s_axi_wvalid),
        .I2(m_axi_wready),
        .O(empty_fwft_i_reg));
endmodule

module system_auto_pc_0_axi_protocol_converter_v2_1_28_a_axi3_conv
   (dout,
    empty,
    SR,
    m_axi_awlen,
    m_axi_awlock,
    E,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_awaddr,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    aclk,
    rd_en,
    s_axi_awlock,
    aresetn,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [0:0]E;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input aclk;
  input rd_en;
  input [0:0]s_axi_awlock;
  input aresetn;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input s_axi_awvalid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;

  wire [0:0]E;
  wire [0:0]SR;
  wire \USE_BURSTS.cmd_queue_n_11 ;
  wire \USE_BURSTS.cmd_queue_n_12 ;
  wire \USE_BURSTS.cmd_queue_n_6 ;
  wire aclk;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block_reg_n_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(m_axi_awaddr[0]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(m_axi_awaddr[10]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(m_axi_awaddr[11]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(m_axi_awaddr[12]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(m_axi_awaddr[13]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(m_axi_awaddr[14]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(m_axi_awaddr[15]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(m_axi_awaddr[16]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(m_axi_awaddr[17]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(m_axi_awaddr[18]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(m_axi_awaddr[19]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(m_axi_awaddr[1]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(m_axi_awaddr[20]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(m_axi_awaddr[21]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(m_axi_awaddr[22]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(m_axi_awaddr[23]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(m_axi_awaddr[24]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(m_axi_awaddr[25]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(m_axi_awaddr[26]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(m_axi_awaddr[27]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(m_axi_awaddr[28]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(m_axi_awaddr[29]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(m_axi_awaddr[2]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(m_axi_awaddr[30]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(m_axi_awaddr[31]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(m_axi_awaddr[3]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(m_axi_awaddr[4]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(m_axi_awaddr[5]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(m_axi_awaddr[6]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(m_axi_awaddr[7]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(m_axi_awaddr[8]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(m_axi_awaddr[9]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(m_axi_awburst[0]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(m_axi_awburst[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(m_axi_awlen[0]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(m_axi_awlen[1]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(m_axi_awlen[2]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(m_axi_awlen[3]),
        .R(SR));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlock),
        .Q(m_axi_awlock),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_11 ),
        .Q(E),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(m_axi_awsize[0]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(m_axi_awsize[1]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(m_axi_awsize[2]),
        .R(SR));
  system_auto_pc_0_axi_data_fifo_v2_1_27_axic_fifo \USE_BURSTS.cmd_queue 
       (.E(E),
        .Q(areset_d),
        .SR(SR),
        .S_AXI_AREADY_I_reg(\USE_BURSTS.cmd_queue_n_11 ),
        .aclk(aclk),
        .\areset_d_reg[1] (\USE_BURSTS.cmd_queue_n_12 ),
        .aresetn(aresetn),
        .aresetn_0(\USE_BURSTS.cmd_queue_n_6 ),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(cmd_push_block_reg_n_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_6 ),
        .Q(cmd_push_block_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_12 ),
        .Q(command_ongoing),
        .R(SR));
endmodule

module system_auto_pc_0_axi_protocol_converter_v2_1_28_axi3_conv
   (m_axi_awlen,
    m_axi_awaddr,
    E,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_wlast,
    aresetn,
    m_axi_awready,
    aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_awvalid);
  output [3:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output [0:0]E;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output m_axi_wlast;
  input aresetn;
  input m_axi_awready;
  input aclk;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input m_axi_wready;
  input s_axi_wvalid;
  input s_axi_awvalid;

  wire [0:0]E;
  wire \USE_BURSTS.cmd_queue/inst/empty ;
  wire [3:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_13 ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire aclk;
  wire aresetn;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  system_auto_pc_0_axi_protocol_converter_v2_1_28_a_axi3_conv \USE_WRITE.write_addr_inst 
       (.E(E),
        .SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(\USE_WRITE.write_addr_inst_n_13 ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  system_auto_pc_0_axi_protocol_converter_v2_1_28_w_axi3_conv \USE_WRITE.write_data_inst 
       (.SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .first_mi_word(first_mi_word),
        .\length_counter_1_reg[1]_0 (length_counter_1_reg),
        .\length_counter_1_reg[1]_1 (\USE_WRITE.write_addr_inst_n_13 ),
        .\length_counter_1_reg[2]_0 (empty_fwft_i_reg),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b011" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module system_auto_pc_0_axi_protocol_converter_v2_1_28_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire m_axi_arready;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31:0] = s_axi_araddr;
  assign m_axi_arburst[1:0] = s_axi_arburst;
  assign m_axi_arcache[3:0] = s_axi_arcache;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3:0] = s_axi_arlen[3:0];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = s_axi_arlock;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3:0] = s_axi_arqos;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2:0] = s_axi_arsize;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = s_axi_arvalid;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = m_axi_arready;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[63:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = m_axi_rvalid;
  GND GND
       (.G(\<const0> ));
  system_auto_pc_0_axi_protocol_converter_v2_1_28_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.E(s_axi_awready),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty_fwft_i_reg(s_axi_wready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module system_auto_pc_0_axi_protocol_converter_v2_1_28_w_axi3_conv
   (\length_counter_1_reg[1]_0 ,
    first_mi_word,
    rd_en,
    m_axi_wlast,
    SR,
    aclk,
    \length_counter_1_reg[1]_1 ,
    \length_counter_1_reg[2]_0 ,
    m_axi_wready,
    s_axi_wvalid,
    empty,
    dout);
  output [1:0]\length_counter_1_reg[1]_0 ;
  output first_mi_word;
  output rd_en;
  output m_axi_wlast;
  input [0:0]SR;
  input aclk;
  input \length_counter_1_reg[1]_1 ;
  input \length_counter_1_reg[2]_0 ;
  input m_axi_wready;
  input s_axi_wvalid;
  input empty;
  input [3:0]dout;

  wire [0:0]SR;
  wire aclk;
  wire [3:0]dout;
  wire empty;
  wire first_mi_word;
  wire first_mi_word_i_1_n_0;
  wire \length_counter_1[0]_i_1_n_0 ;
  wire \length_counter_1[2]_i_1_n_0 ;
  wire \length_counter_1[3]_i_1_n_0 ;
  wire \length_counter_1[4]_i_1_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[5]_i_1_n_0 ;
  wire \length_counter_1[6]_i_1_n_0 ;
  wire \length_counter_1[7]_i_1_n_0 ;
  wire [7:2]length_counter_1_reg;
  wire [1:0]\length_counter_1_reg[1]_0 ;
  wire \length_counter_1_reg[1]_1 ;
  wire \length_counter_1_reg[2]_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wlast_INST_0_i_3_n_0;
  wire m_axi_wready;
  wire rd_en;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h0000CC000000CC04)) 
    fifo_gen_inst_i_2
       (.I0(length_counter_1_reg[7]),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[5]),
        .I3(first_mi_word),
        .I4(m_axi_wlast_INST_0_i_1_n_0),
        .I5(length_counter_1_reg[6]),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h0F0FFFFF00010000)) 
    first_mi_word_i_1
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[6]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(first_mi_word),
        .O(first_mi_word_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(1'b1),
        .D(first_mi_word_i_1_n_0),
        .Q(first_mi_word),
        .S(SR));
  LUT6 #(
    .INIT(64'hF2FFFFFF07000000)) 
    \length_counter_1[0]_i_1 
       (.I0(first_mi_word),
        .I1(dout[0]),
        .I2(empty),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .I5(\length_counter_1_reg[1]_0 [0]),
        .O(\length_counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1_reg[2]_0 ),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B474B4)) 
    \length_counter_1[3]_i_1 
       (.I0(\length_counter_1[4]_i_2_n_0 ),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[3]),
        .I3(first_mi_word),
        .I4(dout[3]),
        .O(\length_counter_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A3A35AAAAAAAA)) 
    \length_counter_1[4]_i_1 
       (.I0(length_counter_1_reg[4]),
        .I1(dout[3]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[3]),
        .I4(\length_counter_1[4]_i_2_n_0 ),
        .I5(\length_counter_1_reg[2]_0 ),
        .O(\length_counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \length_counter_1[4]_i_2 
       (.I0(m_axi_wlast_INST_0_i_3_n_0),
        .I1(length_counter_1_reg[2]),
        .I2(first_mi_word),
        .I3(dout[2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0000FFF70808)) 
    \length_counter_1[5]_i_1 
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(empty),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[5]),
        .I5(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3EFF0D00)) 
    \length_counter_1[6]_i_1 
       (.I0(length_counter_1_reg[5]),
        .I1(first_mi_word),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(\length_counter_1_reg[2]_0 ),
        .I4(length_counter_1_reg[6]),
        .O(\length_counter_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3EFFFF30310000)) 
    \length_counter_1[7]_i_1 
       (.I0(length_counter_1_reg[6]),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[5]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(\length_counter_1[7]_i_1_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[0]_i_1_n_0 ),
        .Q(\length_counter_1_reg[1]_0 [0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1_reg[1]_1 ),
        .Q(\length_counter_1_reg[1]_0 [1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[2]_i_1_n_0 ),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[3]_i_1_n_0 ),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[4]_i_1_n_0 ),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[5]_i_1_n_0 ),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[6]_i_1_n_0 ),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[7]_i_1_n_0 ),
        .Q(length_counter_1_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F000F1)) 
    m_axi_wlast_INST_0
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .I4(length_counter_1_reg[6]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'hFFFFFFFEFCFCFFFE)) 
    m_axi_wlast_INST_0_i_1
       (.I0(length_counter_1_reg[4]),
        .I1(m_axi_wlast_INST_0_i_2_n_0),
        .I2(m_axi_wlast_INST_0_i_3_n_0),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_2
       (.I0(dout[3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    m_axi_wlast_INST_0_i_3
       (.I0(\length_counter_1_reg[1]_0 [1]),
        .I1(dout[1]),
        .I2(\length_counter_1_reg[1]_0 [0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(m_axi_wlast_INST_0_i_3_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "system_auto_pc_0,axi_protocol_converter_v2_1_28_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_28_axi_protocol_converter,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module system_auto_pc_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "0" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  system_auto_pc_0_axi_protocol_converter_v2_1_28_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[1],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,s_axi_arlen[3:0]}),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module system_auto_pc_0_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qpp66Ic61NR0mkVmjG7vgOL0NB6CTFb3Lsi4qxXFnJ8tqqKShAriiJmn7uXBNCBvGZLnXCb4uZ8i
EqR6IQq34abN0LrooQu7rm3+Pw0iYYKzN1lcF+6EclZnFEeAIj7bGbLI9X3Ib88Mjvj0+p4IA3Fj
9ZGHNW+O+knchfmqAlY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aPxGoOnJHTAqFdFSzG9ru8Bw31YY71SqnXPbyZfA86PxaAjm6NpQtu/8fWeHlM19Jz2a+1ZDAj2o
VkuAl+PF18BGfMNo3Sar4bSJm8QwGYpdMiLM+06C76IY/redmJfNEXBnwDGx1NRihbIrHe17Fsp0
wci4ZT2n5HHVBuhowg8un8abF3TR6B1Ll1huon8bmUC1ZCG/4nJpwwhcE9pfhZYPxzBDs7qGqe8g
84QrDMzU6WhHqgMvR8Uor517l0pItAYj4pxMvaZhC0k3EgSYp/MQytJr+HF3vsw+o0eF1bHVU6Na
eXWSV3ijxUZXCyCMZ7YmEZa9JX5uKS5m5eiP0w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mWzZIcmTvZaO1EYxJJAY0jRMaMCjTyRzPU6SbUzrKHfep0pA4LS/MlSJytRY9FYloq8LonlEJmOa
YvTXus6Gximwd82NfOWOU+xAliGI4hqn0DLAX0dSg8OERUorJfPsNqrBuHvDufz9efGQs7Upr74j
TMlZiW0gSVGHMQSLqUU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lzrP+qu7wbNhDwJym0tPh2ytzSxetAAI7sMgVeTkF4E0aGc202oEP6AjkTk508CVci4/F5/oGOgY
jKPpZya27mqQoisM8ilYqvcw5pXx0/pQGRu7JZF08b+k4spPXeJ2wn8IDY3FWSHnOcvi4dOebH/q
+4u19fu74aqk1ECrIQzbVZpwcWeMDGDUSHDy4FPk9OjOswCxOQPuglJjXYv+hMg/7JiOUBTJX0uZ
Xmdtxy8L9z4EWzfRzOSHsJFjTkSLmdTFavs61PfZS4KYT25LV10DOvmL3fy7M6+bBXN5qE6rW0RO
W75E2gYB5D04Qa/SgER8JeFW1M0T8RacJUUV3w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMe5G7+i5Dg2OTIM7CinNcesmx+3xFOKOCTYsoHWrp5MlbAPNqriPe41pqSx7Zo2+ype18VVw+tF
lEjRQQF5TsKrIoc8kQqO2Ck9JGAZjsyrFM5jTWzQZBawoJBB/EbM32rM+O963qqQdP9ruUzt4aM6
vf/tdyfOgxkUcl6+JJNYOQDIdBGzvk/dQUeNjJV2gWOsMrT/8aQJJMjp2XPW18IEhMSdUT+e8kM3
NlZcNyywDkNOLcIS8VKNtRSuC1gLTR2zXKL9eJomOGg66N8dfL808FNqNi+dtOqd2OhDKPCh9VYN
gJ7hSggqdHhUVsYY5qT37vUMUZG37ITEHavSug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IZp7wGosl6Ef78SQeUxKofUHVTZqkQHJJU3t0K53ysy/heNabWQpu3n2M8+eCIHOAio8FR6+AOlT
IAA4JAFJfJ70Sm8r1CV0vuXGNVDhIlFr8HhnDDJc8CLdz8yaFrENXgAR92A47cxMlNwaJCGipXa/
922mJ6b2pGDdjdTLUcKsU1DD92Kou08spouWrbB/PrcgiC0dc9Vh5gbveNqmUuOyH3mlBam3FvZl
pgofpiJBXCkR1i8+hAEtpYGjmSGUTUQ6uHMUKX0u24I2h77iOiDKYTNJT6jVuiYM/DRD2IfylgS4
u7QDnvP07bndi2AIocxrw7LHdjJ9XWVyHUaXIQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mcmaj6yfbZVEKTiuHl5s5QU2BU2VRdOtz/pVopoNI21Pt4eUkknoHSgdfu7K976MpUo+bkHQ7sJi
/0kAsbTsCHtz7UWvsCk9A5SyLMykdZnWyjEbf0dHlFcgzZooebDG2zm4mibiRUIKwAMgFxTWk4RV
k5Ay3X64cOudFYqRbTCUmp1L8ijVoYJo0zi23fsL0jwpEG5FTTnJ1h5mK9rFtj4nIzmKqwwP+7JP
esKOwY5A74OZa9Q2+Oc/k4UmgeZgw5q/xkt1aAjxDyRRfCIJizymNuJw9sa/nQXTKX0zCMrY0MnQ
PN3c4p5wkiNcAHR4g0673PQsVxTSpFZkCNMkwQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
mo2NT2/CRe5fYBwkxXV4DV2r4VY+mW8FieM9wY58cqg6XakgyeQ/Du2w01ie+Sko3Okr8ziahuNO
XBMXX0d4rR94Cwxf6q8vsbxZgbIlknsXsEuTwNfsw6ywD3/7leL6Kapx3fGSVuIHDMHjwpstoX+8
phs6lpM0VeRML4QJl7ITOuweBx9b+hHFRy5duNtva30fSyVWHLpzAsS+sS+gCcFxsDn+K9lQj/Kh
u11IaBweyu8d5W2ClTN46tdIzlVw6S962vDsk1+h6BQzF9y3z3BJfLpfR+9jdhy5wqng0ejlOpbT
G22gnlE/BqKGgLqVQKaeXfnp5NnReQcYXQTMossrLWwi2JUvDGuA6egmN+38JdoIzDHxNPxvAOZ/
mF9Qjn64t2tHB5iHybi3qFxlysWYSczGHStpTKrEoNAcQV/kMTe5coIDdy3mGIpwuduxq1OYPA9m
VKKE/GCL1MQzfgEx1Az+ts8Oo9hgM/A/cJ2envlpTKlt5itG9ciBZ41m

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RXuoomA7HXqxfp6NbzOyYrUYOntlNDrjnrws4DzEIh4YC3p8BdX9/zrLD3AxALpTnAeHyk3lFxEI
uDCpL9/tP6yT5BmfL2N/oyWIQ7y53Env+IFaJMMaBIG9U1LBtkcnhV/FW9tkUePJ8EbKyE9tP/kp
RScK28UNuQEHp0OPznrb1v+AWO/DiSNPuA44x+Ig5nBALVW9qfA4+tvzfHYpcke67vIFYWLthZx9
NC9+R793F9ypEZMOjinKDbEk0gDUoqsmcmgF819P1JtLnGnuwtr1uER6OP17CsHbFowAmPsPPA55
QkDMyp68B+cHNNW23VXNPbIXLvPilhp/ypT+iw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6BvoQpuoVy9vIT9h44IRmW7Bo+8MCKJj5ZfOShjmujfjeFOwPLw2GCUNvV3ipB1eThHomI5yXGiO
fxOovfDeVP2hfGVaO1qz9Lz6NGhPt8K9Z+sH2rq47t68akOCSgmAoKJ/5BbwL/t0FtUVgTtq7Si+
HqZAUgbX8TCY6IRkFibfSSK6UarmhEpPrPOpvsevKx4OaMU1jfgaJvIMRd257kSQy5o7pyO0n7VX
LK6V93O0bi7Aa/TTt9W2MSK5pIDw9DmkTCLFjsS7gBYQYaFaba+LGfjQ782nQK2+KDz85b5qKPM1
h19t51h74j2WjWCadIgjRVfMYVvsErL0ehA3Xw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MMpJ8DorVcMATHbuGSlNSCGkzTOL3lRnFD2u4TUx1W94+tAqA8Ktjam9MqFHuJh/5PX5VUq6FgP7
1oYcR65DRc8C5iUj4h0vhHLi42ruJU++GUuIdS9gvoiQ246hdXMefRe5wcEOnqmxKzf7fyduaSpG
7SdN9PpubFzyeck9cLJj2CYMY1XoujEAxeBG5YKJtFkQkCeHZWr6R8PkNR2oyQGuZuMeJdgNh4Lg
5yYuOk0BGcB7bwSjic5zqk+8Veyp/ZGAVMgpH80juQjINIxDcLbvhqTIZX4gKUQjcJYcBhVuPgVt
Ms7dqARwL9nkpmZ/SuNzUmGdEIhVlblWNDRV3A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71088)
`pragma protect data_block
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
amd6BiCh6dDl
`pragma protect end_protected
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
