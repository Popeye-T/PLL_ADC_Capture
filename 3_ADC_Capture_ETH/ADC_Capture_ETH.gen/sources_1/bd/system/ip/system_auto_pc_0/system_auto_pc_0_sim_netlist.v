// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Dec 18 16:14:58 2024
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1_reg[2]_0 ),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

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
ZgSrySrxp8kA
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
