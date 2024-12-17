// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Dec 17 20:39:45 2024
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

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
46g/vLZm+SNx
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
