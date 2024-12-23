// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Dec 23 21:01:33 2024
// Host        : DESKTOP-K54KI5V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/workspace/ADC_Cap/3_AXI_Full_2_DDR_ETH/soc.gen/sources_1/bd/system/ip/system_master_axi_full_v1_0_0_0/system_master_axi_full_v1_0_0_0_sim_netlist.v
// Design      : system_master_axi_full_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_master_axi_full_v1_0_0_0,master_axi_full_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "master_axi_full_v1_0,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module system_master_axi_full_v1_0_0_0
   (data_trans,
    data_trans_signal,
    data_ready_trans,
    state_write_busy,
    state_read_busy,
    state_wait,
    INIT_AXI_TXN,
    TXN_DONE,
    ERROR,
    M_AXI_ACLK,
    M_AXI_ARESETN,
    M_AXI_AWID,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    M_AXI_AWSIZE,
    M_AXI_AWBURST,
    M_AXI_AWLOCK,
    M_AXI_AWCACHE,
    M_AXI_AWPROT,
    M_AXI_AWQOS,
    M_AXI_AWUSER,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WLAST,
    M_AXI_WUSER,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BID,
    M_AXI_BRESP,
    M_AXI_BUSER,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARID,
    M_AXI_ARADDR,
    M_AXI_ARLEN,
    M_AXI_ARSIZE,
    M_AXI_ARBURST,
    M_AXI_ARLOCK,
    M_AXI_ARCACHE,
    M_AXI_ARPROT,
    M_AXI_ARQOS,
    M_AXI_ARUSER,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RID,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RLAST,
    M_AXI_RUSER,
    M_AXI_RVALID,
    M_AXI_RREADY);
  input [127:0]data_trans;
  input data_trans_signal;
  output data_ready_trans;
  output state_write_busy;
  output state_read_busy;
  output state_wait;
  input INIT_AXI_TXN;
  output TXN_DONE;
  output ERROR;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input M_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input M_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *) output [0:0]M_AXI_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]M_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]M_AXI_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]M_AXI_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]M_AXI_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output M_AXI_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]M_AXI_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]M_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]M_AXI_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWUSER" *) output [0:0]M_AXI_AWUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [127:0]M_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [15:0]M_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output M_AXI_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WUSER" *) output [0:0]M_AXI_WUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BID" *) input [0:0]M_AXI_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]M_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BUSER" *) input [0:0]M_AXI_BUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output M_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *) output [0:0]M_AXI_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]M_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]M_AXI_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]M_AXI_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]M_AXI_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output M_AXI_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]M_AXI_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]M_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]M_AXI_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARUSER" *) output [0:0]M_AXI_ARUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output M_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input M_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RID" *) input [0:0]M_AXI_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [127:0]M_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]M_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input M_AXI_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RUSER" *) input [0:0]M_AXI_RUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input M_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 5e+07, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output M_AXI_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire M_AXI_ACLK;
  wire [31:11]\^M_AXI_ARADDR ;
  wire M_AXI_ARESETN;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire [31:11]\^M_AXI_AWADDR ;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire M_AXI_RLAST;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  wire [127:0]M_AXI_WDATA;
  wire M_AXI_WLAST;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID;
  wire data_ready_trans;
  wire [127:0]data_trans;
  wire data_trans_signal;
  wire state_read_busy;
  wire state_wait;
  wire state_write_busy;

  assign ERROR = \<const0> ;
  assign M_AXI_ARADDR[31:11] = \^M_AXI_ARADDR [31:11];
  assign M_AXI_ARADDR[10] = \<const0> ;
  assign M_AXI_ARADDR[9] = \<const0> ;
  assign M_AXI_ARADDR[8] = \<const0> ;
  assign M_AXI_ARADDR[7] = \<const0> ;
  assign M_AXI_ARADDR[6] = \<const0> ;
  assign M_AXI_ARADDR[5] = \<const0> ;
  assign M_AXI_ARADDR[4] = \<const0> ;
  assign M_AXI_ARADDR[3] = \<const0> ;
  assign M_AXI_ARADDR[2] = \<const0> ;
  assign M_AXI_ARADDR[1] = \<const0> ;
  assign M_AXI_ARADDR[0] = \<const0> ;
  assign M_AXI_ARBURST[1] = \<const0> ;
  assign M_AXI_ARBURST[0] = \<const1> ;
  assign M_AXI_ARCACHE[3] = \<const0> ;
  assign M_AXI_ARCACHE[2] = \<const0> ;
  assign M_AXI_ARCACHE[1] = \<const1> ;
  assign M_AXI_ARCACHE[0] = \<const0> ;
  assign M_AXI_ARID[0] = \<const0> ;
  assign M_AXI_ARLEN[7] = \<const0> ;
  assign M_AXI_ARLEN[6] = \<const1> ;
  assign M_AXI_ARLEN[5] = \<const1> ;
  assign M_AXI_ARLEN[4] = \<const1> ;
  assign M_AXI_ARLEN[3] = \<const1> ;
  assign M_AXI_ARLEN[2] = \<const1> ;
  assign M_AXI_ARLEN[1] = \<const1> ;
  assign M_AXI_ARLEN[0] = \<const1> ;
  assign M_AXI_ARLOCK = \<const0> ;
  assign M_AXI_ARPROT[2] = \<const0> ;
  assign M_AXI_ARPROT[1] = \<const0> ;
  assign M_AXI_ARPROT[0] = \<const0> ;
  assign M_AXI_ARQOS[3] = \<const0> ;
  assign M_AXI_ARQOS[2] = \<const0> ;
  assign M_AXI_ARQOS[1] = \<const0> ;
  assign M_AXI_ARQOS[0] = \<const0> ;
  assign M_AXI_ARSIZE[2] = \<const1> ;
  assign M_AXI_ARSIZE[1] = \<const0> ;
  assign M_AXI_ARSIZE[0] = \<const0> ;
  assign M_AXI_ARUSER[0] = \<const1> ;
  assign M_AXI_AWADDR[31:11] = \^M_AXI_AWADDR [31:11];
  assign M_AXI_AWADDR[10] = \<const0> ;
  assign M_AXI_AWADDR[9] = \<const0> ;
  assign M_AXI_AWADDR[8] = \<const0> ;
  assign M_AXI_AWADDR[7] = \<const0> ;
  assign M_AXI_AWADDR[6] = \<const0> ;
  assign M_AXI_AWADDR[5] = \<const0> ;
  assign M_AXI_AWADDR[4] = \<const0> ;
  assign M_AXI_AWADDR[3] = \<const0> ;
  assign M_AXI_AWADDR[2] = \<const0> ;
  assign M_AXI_AWADDR[1] = \<const0> ;
  assign M_AXI_AWADDR[0] = \<const0> ;
  assign M_AXI_AWBURST[1] = \<const0> ;
  assign M_AXI_AWBURST[0] = \<const1> ;
  assign M_AXI_AWCACHE[3] = \<const0> ;
  assign M_AXI_AWCACHE[2] = \<const0> ;
  assign M_AXI_AWCACHE[1] = \<const1> ;
  assign M_AXI_AWCACHE[0] = \<const0> ;
  assign M_AXI_AWID[0] = \<const0> ;
  assign M_AXI_AWLEN[7] = \<const0> ;
  assign M_AXI_AWLEN[6] = \<const1> ;
  assign M_AXI_AWLEN[5] = \<const1> ;
  assign M_AXI_AWLEN[4] = \<const1> ;
  assign M_AXI_AWLEN[3] = \<const1> ;
  assign M_AXI_AWLEN[2] = \<const1> ;
  assign M_AXI_AWLEN[1] = \<const1> ;
  assign M_AXI_AWLEN[0] = \<const1> ;
  assign M_AXI_AWLOCK = \<const0> ;
  assign M_AXI_AWPROT[2] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_AWQOS[3] = \<const0> ;
  assign M_AXI_AWQOS[2] = \<const0> ;
  assign M_AXI_AWQOS[1] = \<const0> ;
  assign M_AXI_AWQOS[0] = \<const0> ;
  assign M_AXI_AWSIZE[2] = \<const1> ;
  assign M_AXI_AWSIZE[1] = \<const0> ;
  assign M_AXI_AWSIZE[0] = \<const0> ;
  assign M_AXI_AWUSER[0] = \<const1> ;
  assign M_AXI_WSTRB[15] = \<const1> ;
  assign M_AXI_WSTRB[14] = \<const1> ;
  assign M_AXI_WSTRB[13] = \<const1> ;
  assign M_AXI_WSTRB[12] = \<const1> ;
  assign M_AXI_WSTRB[11] = \<const1> ;
  assign M_AXI_WSTRB[10] = \<const1> ;
  assign M_AXI_WSTRB[9] = \<const1> ;
  assign M_AXI_WSTRB[8] = \<const1> ;
  assign M_AXI_WSTRB[7] = \<const1> ;
  assign M_AXI_WSTRB[6] = \<const1> ;
  assign M_AXI_WSTRB[5] = \<const1> ;
  assign M_AXI_WSTRB[4] = \<const1> ;
  assign M_AXI_WSTRB[3] = \<const1> ;
  assign M_AXI_WSTRB[2] = \<const1> ;
  assign M_AXI_WSTRB[1] = \<const1> ;
  assign M_AXI_WSTRB[0] = \<const1> ;
  assign M_AXI_WUSER[0] = \<const0> ;
  assign TXN_DONE = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  system_master_axi_full_v1_0_0_0_master_axi_full_v1_0 inst
       (.M_AXI_ACLK(M_AXI_ACLK),
        .M_AXI_ARADDR(\^M_AXI_ARADDR ),
        .M_AXI_ARESETN(M_AXI_ARESETN),
        .M_AXI_ARREADY(M_AXI_ARREADY),
        .M_AXI_AWADDR(\^M_AXI_AWADDR ),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_BREADY(M_AXI_BREADY),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_RLAST(M_AXI_RLAST),
        .M_AXI_RVALID(M_AXI_RVALID),
        .M_AXI_WDATA(M_AXI_WDATA),
        .M_AXI_WREADY(M_AXI_WREADY),
        .axi_arvalid_reg_0(M_AXI_ARVALID),
        .axi_awvalid_reg_0(M_AXI_AWVALID),
        .axi_rready_reg_0(M_AXI_RREADY),
        .axi_wlast_reg_0(M_AXI_WLAST),
        .axi_wvalid_reg_0(M_AXI_WVALID),
        .data_ready_trans(data_ready_trans),
        .data_trans(data_trans),
        .data_trans_signal(data_trans_signal),
        .state_read_busy(state_read_busy),
        .state_wait(state_wait),
        .state_write_busy(state_write_busy));
endmodule

(* ORIG_REF_NAME = "master_axi_full_v1_0" *) 
module system_master_axi_full_v1_0_0_0_master_axi_full_v1_0
   (axi_rready_reg_0,
    axi_arvalid_reg_0,
    axi_awvalid_reg_0,
    data_ready_trans,
    axi_wvalid_reg_0,
    axi_wlast_reg_0,
    M_AXI_BREADY,
    state_write_busy,
    state_read_busy,
    state_wait,
    M_AXI_WDATA,
    M_AXI_AWADDR,
    M_AXI_ARADDR,
    M_AXI_ARESETN,
    M_AXI_RLAST,
    M_AXI_RVALID,
    M_AXI_ARREADY,
    M_AXI_AWREADY,
    M_AXI_WREADY,
    M_AXI_ACLK,
    data_trans_signal,
    data_trans,
    M_AXI_BVALID);
  output axi_rready_reg_0;
  output axi_arvalid_reg_0;
  output axi_awvalid_reg_0;
  output data_ready_trans;
  output axi_wvalid_reg_0;
  output axi_wlast_reg_0;
  output M_AXI_BREADY;
  output state_write_busy;
  output state_read_busy;
  output state_wait;
  output [127:0]M_AXI_WDATA;
  output [20:0]M_AXI_AWADDR;
  output [20:0]M_AXI_ARADDR;
  input M_AXI_ARESETN;
  input M_AXI_RLAST;
  input M_AXI_RVALID;
  input M_AXI_ARREADY;
  input M_AXI_AWREADY;
  input M_AXI_WREADY;
  input M_AXI_ACLK;
  input data_trans_signal;
  input [127:0]data_trans;
  input M_AXI_BVALID;

  wire \FSM_onehot_mst_exec_state_reg_n_0_[0] ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[1] ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[2] ;
  wire M_AXI_ACLK;
  wire [20:0]M_AXI_ARADDR;
  wire M_AXI_ARADDR_carry_i_1_n_0;
  wire M_AXI_ARADDR_carry_n_0;
  wire M_AXI_ARADDR_carry_n_1;
  wire M_AXI_ARADDR_carry_n_2;
  wire M_AXI_ARADDR_carry_n_3;
  wire M_AXI_ARESETN;
  wire M_AXI_ARREADY;
  wire [20:0]M_AXI_AWADDR;
  wire M_AXI_AWADDR_carry_i_1_n_0;
  wire M_AXI_AWADDR_carry_n_0;
  wire M_AXI_AWADDR_carry_n_1;
  wire M_AXI_AWADDR_carry_n_2;
  wire M_AXI_AWADDR_carry_n_3;
  wire M_AXI_AWREADY;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire M_AXI_RLAST;
  wire M_AXI_RVALID;
  wire [127:0]M_AXI_WDATA;
  wire M_AXI_WREADY;
  wire \axi_araddr[14]_i_2_n_0 ;
  wire [31:27]axi_araddr_reg;
  wire \axi_araddr_reg[14]_i_1_n_0 ;
  wire \axi_araddr_reg[14]_i_1_n_1 ;
  wire \axi_araddr_reg[14]_i_1_n_2 ;
  wire \axi_araddr_reg[14]_i_1_n_3 ;
  wire \axi_araddr_reg[14]_i_1_n_4 ;
  wire \axi_araddr_reg[14]_i_1_n_5 ;
  wire \axi_araddr_reg[14]_i_1_n_6 ;
  wire \axi_araddr_reg[14]_i_1_n_7 ;
  wire \axi_araddr_reg[18]_i_1_n_0 ;
  wire \axi_araddr_reg[18]_i_1_n_1 ;
  wire \axi_araddr_reg[18]_i_1_n_2 ;
  wire \axi_araddr_reg[18]_i_1_n_3 ;
  wire \axi_araddr_reg[18]_i_1_n_4 ;
  wire \axi_araddr_reg[18]_i_1_n_5 ;
  wire \axi_araddr_reg[18]_i_1_n_6 ;
  wire \axi_araddr_reg[18]_i_1_n_7 ;
  wire \axi_araddr_reg[22]_i_1_n_0 ;
  wire \axi_araddr_reg[22]_i_1_n_1 ;
  wire \axi_araddr_reg[22]_i_1_n_2 ;
  wire \axi_araddr_reg[22]_i_1_n_3 ;
  wire \axi_araddr_reg[22]_i_1_n_4 ;
  wire \axi_araddr_reg[22]_i_1_n_5 ;
  wire \axi_araddr_reg[22]_i_1_n_6 ;
  wire \axi_araddr_reg[22]_i_1_n_7 ;
  wire \axi_araddr_reg[26]_i_2_n_0 ;
  wire \axi_araddr_reg[26]_i_2_n_1 ;
  wire \axi_araddr_reg[26]_i_2_n_2 ;
  wire \axi_araddr_reg[26]_i_2_n_3 ;
  wire \axi_araddr_reg[26]_i_2_n_4 ;
  wire \axi_araddr_reg[26]_i_2_n_5 ;
  wire \axi_araddr_reg[26]_i_2_n_6 ;
  wire \axi_araddr_reg[26]_i_2_n_7 ;
  wire \axi_araddr_reg[27]_i_1_n_0 ;
  wire \axi_araddr_reg[27]_i_1_n_1 ;
  wire \axi_araddr_reg[27]_i_1_n_2 ;
  wire \axi_araddr_reg[27]_i_1_n_3 ;
  wire \axi_araddr_reg[27]_i_1_n_4 ;
  wire \axi_araddr_reg[27]_i_1_n_5 ;
  wire \axi_araddr_reg[27]_i_1_n_6 ;
  wire \axi_araddr_reg[27]_i_1_n_7 ;
  wire \axi_araddr_reg[31]_i_1_n_7 ;
  wire axi_arvalid0;
  wire axi_arvalid_i_1_n_0;
  wire axi_arvalid_reg_0;
  wire \axi_awaddr[14]_i_2_n_0 ;
  wire [31:27]axi_awaddr_reg;
  wire \axi_awaddr_reg[14]_i_1_n_0 ;
  wire \axi_awaddr_reg[14]_i_1_n_1 ;
  wire \axi_awaddr_reg[14]_i_1_n_2 ;
  wire \axi_awaddr_reg[14]_i_1_n_3 ;
  wire \axi_awaddr_reg[14]_i_1_n_4 ;
  wire \axi_awaddr_reg[14]_i_1_n_5 ;
  wire \axi_awaddr_reg[14]_i_1_n_6 ;
  wire \axi_awaddr_reg[14]_i_1_n_7 ;
  wire \axi_awaddr_reg[18]_i_1_n_0 ;
  wire \axi_awaddr_reg[18]_i_1_n_1 ;
  wire \axi_awaddr_reg[18]_i_1_n_2 ;
  wire \axi_awaddr_reg[18]_i_1_n_3 ;
  wire \axi_awaddr_reg[18]_i_1_n_4 ;
  wire \axi_awaddr_reg[18]_i_1_n_5 ;
  wire \axi_awaddr_reg[18]_i_1_n_6 ;
  wire \axi_awaddr_reg[18]_i_1_n_7 ;
  wire \axi_awaddr_reg[22]_i_1_n_0 ;
  wire \axi_awaddr_reg[22]_i_1_n_1 ;
  wire \axi_awaddr_reg[22]_i_1_n_2 ;
  wire \axi_awaddr_reg[22]_i_1_n_3 ;
  wire \axi_awaddr_reg[22]_i_1_n_4 ;
  wire \axi_awaddr_reg[22]_i_1_n_5 ;
  wire \axi_awaddr_reg[22]_i_1_n_6 ;
  wire \axi_awaddr_reg[22]_i_1_n_7 ;
  wire \axi_awaddr_reg[26]_i_3_n_0 ;
  wire \axi_awaddr_reg[26]_i_3_n_1 ;
  wire \axi_awaddr_reg[26]_i_3_n_2 ;
  wire \axi_awaddr_reg[26]_i_3_n_3 ;
  wire \axi_awaddr_reg[26]_i_3_n_4 ;
  wire \axi_awaddr_reg[26]_i_3_n_5 ;
  wire \axi_awaddr_reg[26]_i_3_n_6 ;
  wire \axi_awaddr_reg[26]_i_3_n_7 ;
  wire \axi_awaddr_reg[27]_i_1_n_0 ;
  wire \axi_awaddr_reg[27]_i_1_n_1 ;
  wire \axi_awaddr_reg[27]_i_1_n_2 ;
  wire \axi_awaddr_reg[27]_i_1_n_3 ;
  wire \axi_awaddr_reg[27]_i_1_n_4 ;
  wire \axi_awaddr_reg[27]_i_1_n_5 ;
  wire \axi_awaddr_reg[27]_i_1_n_6 ;
  wire \axi_awaddr_reg[27]_i_1_n_7 ;
  wire \axi_awaddr_reg[31]_i_1_n_7 ;
  wire axi_awvalid0;
  wire axi_awvalid09_out;
  wire axi_awvalid_i_1_n_0;
  wire axi_awvalid_reg_0;
  wire axi_bready0;
  wire axi_rready_i_1_n_0;
  wire axi_rready_reg_0;
  wire \axi_wdata[127]_i_1_n_0 ;
  wire axi_wlast_i_1_n_0;
  wire axi_wlast_i_2_n_0;
  wire axi_wlast_reg_0;
  wire axi_wvalid_i_1_n_0;
  wire axi_wvalid_reg_0;
  wire burst_read_active;
  wire burst_read_active_i_1_n_0;
  wire burst_write_active;
  wire burst_write_active_i_1_n_0;
  wire data_ready_trans;
  wire [127:0]data_trans;
  wire data_trans_signal;
  wire data_trans_signal_d1;
  wire data_trans_signal_d2;
  wire mst_exec_state;
  wire [2:0]mst_exec_state__0;
  wire [10:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire [10:0]p_0_in__1;
  wire [7:0]p_0_in__2;
  wire read_burst_counter;
  wire \read_burst_counter[10]_i_1_n_0 ;
  wire \read_burst_counter[10]_i_4_n_0 ;
  wire \read_burst_counter[10]_i_5_n_0 ;
  wire \read_burst_counter[10]_i_6_n_0 ;
  wire \read_burst_counter[8]_i_2_n_0 ;
  wire [10:0]read_burst_counter_reg;
  wire read_index0;
  wire \read_index[7]_i_1_n_0 ;
  wire \read_index[7]_i_4_n_0 ;
  wire [7:0]read_index_reg;
  wire reads_done;
  wire reads_done_i_1_n_0;
  wire reads_done_i_2_n_0;
  wire start_single_burst_read_i_1_n_0;
  wire start_single_burst_read_reg_n_0;
  wire start_single_burst_write_i_1_n_0;
  wire start_single_burst_write_reg_n_0;
  wire state_read_busy;
  wire state_wait;
  wire state_write_busy;
  wire state_write_busy_i_1_n_0;
  wire write_burst_counter;
  wire \write_burst_counter[10]_i_1_n_0 ;
  wire \write_burst_counter[10]_i_4_n_0 ;
  wire \write_burst_counter[10]_i_5_n_0 ;
  wire \write_burst_counter[10]_i_6_n_0 ;
  wire \write_burst_counter[8]_i_2_n_0 ;
  wire [10:0]write_burst_counter_reg;
  wire write_index0;
  wire \write_index[7]_i_1_n_0 ;
  wire \write_index[7]_i_4_n_0 ;
  wire [7:0]write_index_reg;
  wire writes_done;
  wire writes_done_i_1_n_0;
  wire [3:0]NLW_M_AXI_ARADDR_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_M_AXI_ARADDR_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_M_AXI_AWADDR_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_M_AXI_AWADDR_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_axi_araddr_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_axi_araddr_reg[31]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_axi_awaddr_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_axi_awaddr_reg[31]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hF888F8F8)) 
    \FSM_onehot_mst_exec_state[0]_i_1 
       (.I0(reads_done),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .I3(data_trans_signal_d2),
        .I4(data_trans_signal_d1),
        .O(mst_exec_state__0[0]));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \FSM_onehot_mst_exec_state[1]_i_1 
       (.I0(writes_done),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I2(data_trans_signal_d2),
        .I3(data_trans_signal_d1),
        .I4(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .O(mst_exec_state__0[1]));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_mst_exec_state[2]_i_1 
       (.I0(reads_done),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I2(writes_done),
        .I3(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .O(mst_exec_state__0[2]));
  (* FSM_ENCODED_STATES = "INIT_WAIT:1000,INIT_WRITE:010,INIT_READ:100,IDLE:001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_mst_exec_state_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(mst_exec_state),
        .D(mst_exec_state__0[0]),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .S(state_write_busy_i_1_n_0));
  (* FSM_ENCODED_STATES = "INIT_WAIT:1000,INIT_WRITE:010,INIT_READ:100,IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(mst_exec_state),
        .D(mst_exec_state__0[1]),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .R(state_write_busy_i_1_n_0));
  (* FSM_ENCODED_STATES = "INIT_WAIT:1000,INIT_WRITE:010,INIT_READ:100,IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(mst_exec_state),
        .D(mst_exec_state__0[2]),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .R(state_write_busy_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 M_AXI_ARADDR_carry
       (.CI(1'b0),
        .CO({M_AXI_ARADDR_carry_n_0,M_AXI_ARADDR_carry_n_1,M_AXI_ARADDR_carry_n_2,M_AXI_ARADDR_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,axi_araddr_reg[28],1'b0}),
        .O(M_AXI_ARADDR[19:16]),
        .S({axi_araddr_reg[30:29],M_AXI_ARADDR_carry_i_1_n_0,axi_araddr_reg[27]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 M_AXI_ARADDR_carry__0
       (.CI(M_AXI_ARADDR_carry_n_0),
        .CO(NLW_M_AXI_ARADDR_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_M_AXI_ARADDR_carry__0_O_UNCONNECTED[3:1],M_AXI_ARADDR[20]}),
        .S({1'b0,1'b0,1'b0,axi_araddr_reg[31]}));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_ARADDR_carry_i_1
       (.I0(axi_araddr_reg[28]),
        .O(M_AXI_ARADDR_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 M_AXI_AWADDR_carry
       (.CI(1'b0),
        .CO({M_AXI_AWADDR_carry_n_0,M_AXI_AWADDR_carry_n_1,M_AXI_AWADDR_carry_n_2,M_AXI_AWADDR_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,axi_awaddr_reg[28],1'b0}),
        .O(M_AXI_AWADDR[19:16]),
        .S({axi_awaddr_reg[30:29],M_AXI_AWADDR_carry_i_1_n_0,axi_awaddr_reg[27]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 M_AXI_AWADDR_carry__0
       (.CI(M_AXI_AWADDR_carry_n_0),
        .CO(NLW_M_AXI_AWADDR_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_M_AXI_AWADDR_carry__0_O_UNCONNECTED[3:1],M_AXI_AWADDR[20]}),
        .S({1'b0,1'b0,1'b0,axi_awaddr_reg[31]}));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_AWADDR_carry_i_1
       (.I0(axi_awaddr_reg[28]),
        .O(M_AXI_AWADDR_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_araddr[14]_i_2 
       (.I0(M_AXI_ARADDR[0]),
        .O(\axi_araddr[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[26]_i_1 
       (.I0(M_AXI_ARREADY),
        .I1(axi_arvalid_reg_0),
        .O(axi_arvalid0));
  FDRE \axi_araddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[14]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[0]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[14]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[1]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[14]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[2]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[14]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[3]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[14]_i_1 
       (.CI(1'b0),
        .CO({\axi_araddr_reg[14]_i_1_n_0 ,\axi_araddr_reg[14]_i_1_n_1 ,\axi_araddr_reg[14]_i_1_n_2 ,\axi_araddr_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\axi_araddr_reg[14]_i_1_n_4 ,\axi_araddr_reg[14]_i_1_n_5 ,\axi_araddr_reg[14]_i_1_n_6 ,\axi_araddr_reg[14]_i_1_n_7 }),
        .S({M_AXI_ARADDR[3:1],\axi_araddr[14]_i_2_n_0 }));
  FDRE \axi_araddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[18]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[4]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[18]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[5]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[18]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[6]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[18]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[7]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[18]_i_1 
       (.CI(\axi_araddr_reg[14]_i_1_n_0 ),
        .CO({\axi_araddr_reg[18]_i_1_n_0 ,\axi_araddr_reg[18]_i_1_n_1 ,\axi_araddr_reg[18]_i_1_n_2 ,\axi_araddr_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[18]_i_1_n_4 ,\axi_araddr_reg[18]_i_1_n_5 ,\axi_araddr_reg[18]_i_1_n_6 ,\axi_araddr_reg[18]_i_1_n_7 }),
        .S(M_AXI_ARADDR[7:4]));
  FDRE \axi_araddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[22]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[8]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[22]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[9]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[22]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[10]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[22]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[11]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[22]_i_1 
       (.CI(\axi_araddr_reg[18]_i_1_n_0 ),
        .CO({\axi_araddr_reg[22]_i_1_n_0 ,\axi_araddr_reg[22]_i_1_n_1 ,\axi_araddr_reg[22]_i_1_n_2 ,\axi_araddr_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[22]_i_1_n_4 ,\axi_araddr_reg[22]_i_1_n_5 ,\axi_araddr_reg[22]_i_1_n_6 ,\axi_araddr_reg[22]_i_1_n_7 }),
        .S(M_AXI_ARADDR[11:8]));
  FDRE \axi_araddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[26]_i_2_n_7 ),
        .Q(M_AXI_ARADDR[12]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[26]_i_2_n_6 ),
        .Q(M_AXI_ARADDR[13]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[26]_i_2_n_5 ),
        .Q(M_AXI_ARADDR[14]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[26]_i_2_n_4 ),
        .Q(M_AXI_ARADDR[15]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[26]_i_2 
       (.CI(\axi_araddr_reg[22]_i_1_n_0 ),
        .CO({\axi_araddr_reg[26]_i_2_n_0 ,\axi_araddr_reg[26]_i_2_n_1 ,\axi_araddr_reg[26]_i_2_n_2 ,\axi_araddr_reg[26]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[26]_i_2_n_4 ,\axi_araddr_reg[26]_i_2_n_5 ,\axi_araddr_reg[26]_i_2_n_6 ,\axi_araddr_reg[26]_i_2_n_7 }),
        .S(M_AXI_ARADDR[15:12]));
  FDRE \axi_araddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[27]_i_1_n_7 ),
        .Q(axi_araddr_reg[27]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[27]_i_1 
       (.CI(\axi_araddr_reg[26]_i_2_n_0 ),
        .CO({\axi_araddr_reg[27]_i_1_n_0 ,\axi_araddr_reg[27]_i_1_n_1 ,\axi_araddr_reg[27]_i_1_n_2 ,\axi_araddr_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[27]_i_1_n_4 ,\axi_araddr_reg[27]_i_1_n_5 ,\axi_araddr_reg[27]_i_1_n_6 ,\axi_araddr_reg[27]_i_1_n_7 }),
        .S(axi_araddr_reg[30:27]));
  FDRE \axi_araddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[27]_i_1_n_6 ),
        .Q(axi_araddr_reg[28]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[27]_i_1_n_5 ),
        .Q(axi_araddr_reg[29]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[27]_i_1_n_4 ),
        .Q(axi_araddr_reg[30]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[31]_i_1_n_7 ),
        .Q(axi_araddr_reg[31]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[31]_i_1 
       (.CI(\axi_araddr_reg[27]_i_1_n_0 ),
        .CO(\NLW_axi_araddr_reg[31]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_araddr_reg[31]_i_1_O_UNCONNECTED [3:1],\axi_araddr_reg[31]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,axi_araddr_reg[31]}));
  LUT3 #(
    .INIT(8'h3A)) 
    axi_arvalid_i_1
       (.I0(start_single_burst_read_reg_n_0),
        .I1(M_AXI_ARREADY),
        .I2(axi_arvalid_reg_0),
        .O(axi_arvalid_i_1_n_0));
  FDRE axi_arvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(axi_arvalid_reg_0),
        .R(axi_awvalid0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awaddr[14]_i_2 
       (.I0(M_AXI_AWADDR[0]),
        .O(\axi_awaddr[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2F)) 
    \axi_awaddr[26]_i_1 
       (.I0(data_trans_signal_d1),
        .I1(data_trans_signal_d2),
        .I2(M_AXI_ARESETN),
        .O(axi_awvalid0));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awaddr[26]_i_2 
       (.I0(M_AXI_AWREADY),
        .I1(axi_awvalid_reg_0),
        .O(axi_awvalid09_out));
  FDRE \axi_awaddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[14]_i_1_n_7 ),
        .Q(M_AXI_AWADDR[0]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[14]_i_1_n_6 ),
        .Q(M_AXI_AWADDR[1]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[14]_i_1_n_5 ),
        .Q(M_AXI_AWADDR[2]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[14]_i_1_n_4 ),
        .Q(M_AXI_AWADDR[3]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[14]_i_1 
       (.CI(1'b0),
        .CO({\axi_awaddr_reg[14]_i_1_n_0 ,\axi_awaddr_reg[14]_i_1_n_1 ,\axi_awaddr_reg[14]_i_1_n_2 ,\axi_awaddr_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\axi_awaddr_reg[14]_i_1_n_4 ,\axi_awaddr_reg[14]_i_1_n_5 ,\axi_awaddr_reg[14]_i_1_n_6 ,\axi_awaddr_reg[14]_i_1_n_7 }),
        .S({M_AXI_AWADDR[3:1],\axi_awaddr[14]_i_2_n_0 }));
  FDRE \axi_awaddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[18]_i_1_n_7 ),
        .Q(M_AXI_AWADDR[4]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[18]_i_1_n_6 ),
        .Q(M_AXI_AWADDR[5]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[18]_i_1_n_5 ),
        .Q(M_AXI_AWADDR[6]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[18]_i_1_n_4 ),
        .Q(M_AXI_AWADDR[7]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[18]_i_1 
       (.CI(\axi_awaddr_reg[14]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[18]_i_1_n_0 ,\axi_awaddr_reg[18]_i_1_n_1 ,\axi_awaddr_reg[18]_i_1_n_2 ,\axi_awaddr_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[18]_i_1_n_4 ,\axi_awaddr_reg[18]_i_1_n_5 ,\axi_awaddr_reg[18]_i_1_n_6 ,\axi_awaddr_reg[18]_i_1_n_7 }),
        .S(M_AXI_AWADDR[7:4]));
  FDRE \axi_awaddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[22]_i_1_n_7 ),
        .Q(M_AXI_AWADDR[8]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[22]_i_1_n_6 ),
        .Q(M_AXI_AWADDR[9]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[22]_i_1_n_5 ),
        .Q(M_AXI_AWADDR[10]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[22]_i_1_n_4 ),
        .Q(M_AXI_AWADDR[11]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[22]_i_1 
       (.CI(\axi_awaddr_reg[18]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[22]_i_1_n_0 ,\axi_awaddr_reg[22]_i_1_n_1 ,\axi_awaddr_reg[22]_i_1_n_2 ,\axi_awaddr_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[22]_i_1_n_4 ,\axi_awaddr_reg[22]_i_1_n_5 ,\axi_awaddr_reg[22]_i_1_n_6 ,\axi_awaddr_reg[22]_i_1_n_7 }),
        .S(M_AXI_AWADDR[11:8]));
  FDRE \axi_awaddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[26]_i_3_n_7 ),
        .Q(M_AXI_AWADDR[12]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[26]_i_3_n_6 ),
        .Q(M_AXI_AWADDR[13]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[26]_i_3_n_5 ),
        .Q(M_AXI_AWADDR[14]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[26]_i_3_n_4 ),
        .Q(M_AXI_AWADDR[15]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[26]_i_3 
       (.CI(\axi_awaddr_reg[22]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[26]_i_3_n_0 ,\axi_awaddr_reg[26]_i_3_n_1 ,\axi_awaddr_reg[26]_i_3_n_2 ,\axi_awaddr_reg[26]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[26]_i_3_n_4 ,\axi_awaddr_reg[26]_i_3_n_5 ,\axi_awaddr_reg[26]_i_3_n_6 ,\axi_awaddr_reg[26]_i_3_n_7 }),
        .S(M_AXI_AWADDR[15:12]));
  FDRE \axi_awaddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[27]_i_1_n_7 ),
        .Q(axi_awaddr_reg[27]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[27]_i_1 
       (.CI(\axi_awaddr_reg[26]_i_3_n_0 ),
        .CO({\axi_awaddr_reg[27]_i_1_n_0 ,\axi_awaddr_reg[27]_i_1_n_1 ,\axi_awaddr_reg[27]_i_1_n_2 ,\axi_awaddr_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[27]_i_1_n_4 ,\axi_awaddr_reg[27]_i_1_n_5 ,\axi_awaddr_reg[27]_i_1_n_6 ,\axi_awaddr_reg[27]_i_1_n_7 }),
        .S(axi_awaddr_reg[30:27]));
  FDRE \axi_awaddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[27]_i_1_n_6 ),
        .Q(axi_awaddr_reg[28]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[27]_i_1_n_5 ),
        .Q(axi_awaddr_reg[29]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[27]_i_1_n_4 ),
        .Q(axi_awaddr_reg[30]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(axi_awvalid09_out),
        .D(\axi_awaddr_reg[31]_i_1_n_7 ),
        .Q(axi_awaddr_reg[31]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[31]_i_1 
       (.CI(\axi_awaddr_reg[27]_i_1_n_0 ),
        .CO(\NLW_axi_awaddr_reg[31]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_awaddr_reg[31]_i_1_O_UNCONNECTED [3:1],\axi_awaddr_reg[31]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,axi_awaddr_reg[31]}));
  LUT3 #(
    .INIT(8'h3A)) 
    axi_awvalid_i_1
       (.I0(start_single_burst_write_reg_n_0),
        .I1(M_AXI_AWREADY),
        .I2(axi_awvalid_reg_0),
        .O(axi_awvalid_i_1_n_0));
  FDRE axi_awvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awvalid_i_1_n_0),
        .Q(axi_awvalid_reg_0),
        .R(axi_awvalid0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_bready_i_1
       (.I0(M_AXI_BVALID),
        .I1(M_AXI_BREADY),
        .O(axi_bready0));
  FDRE axi_bready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bready0),
        .Q(M_AXI_BREADY),
        .R(axi_awvalid0));
  LUT6 #(
    .INIT(64'h00D0D0D0D0D00000)) 
    axi_rready_i_1
       (.I0(data_trans_signal_d1),
        .I1(data_trans_signal_d2),
        .I2(M_AXI_ARESETN),
        .I3(M_AXI_RLAST),
        .I4(M_AXI_RVALID),
        .I5(axi_rready_reg_0),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(axi_rready_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \axi_wdata[127]_i_1 
       (.I0(axi_wvalid_reg_0),
        .I1(M_AXI_WREADY),
        .I2(M_AXI_AWREADY),
        .I3(axi_awvalid_reg_0),
        .O(\axi_wdata[127]_i_1_n_0 ));
  FDRE \axi_wdata_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[0]),
        .Q(M_AXI_WDATA[0]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[100] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[100]),
        .Q(M_AXI_WDATA[100]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[101] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[101]),
        .Q(M_AXI_WDATA[101]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[102] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[102]),
        .Q(M_AXI_WDATA[102]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[103] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[103]),
        .Q(M_AXI_WDATA[103]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[104] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[104]),
        .Q(M_AXI_WDATA[104]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[105] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[105]),
        .Q(M_AXI_WDATA[105]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[106] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[106]),
        .Q(M_AXI_WDATA[106]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[107] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[107]),
        .Q(M_AXI_WDATA[107]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[108] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[108]),
        .Q(M_AXI_WDATA[108]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[109] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[109]),
        .Q(M_AXI_WDATA[109]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[10]),
        .Q(M_AXI_WDATA[10]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[110] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[110]),
        .Q(M_AXI_WDATA[110]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[111] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[111]),
        .Q(M_AXI_WDATA[111]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[112] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[112]),
        .Q(M_AXI_WDATA[112]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[113] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[113]),
        .Q(M_AXI_WDATA[113]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[114] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[114]),
        .Q(M_AXI_WDATA[114]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[115] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[115]),
        .Q(M_AXI_WDATA[115]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[116] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[116]),
        .Q(M_AXI_WDATA[116]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[117] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[117]),
        .Q(M_AXI_WDATA[117]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[118] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[118]),
        .Q(M_AXI_WDATA[118]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[119] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[119]),
        .Q(M_AXI_WDATA[119]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[11]),
        .Q(M_AXI_WDATA[11]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[120] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[120]),
        .Q(M_AXI_WDATA[120]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[121] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[121]),
        .Q(M_AXI_WDATA[121]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[122] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[122]),
        .Q(M_AXI_WDATA[122]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[123] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[123]),
        .Q(M_AXI_WDATA[123]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[124] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[124]),
        .Q(M_AXI_WDATA[124]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[125] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[125]),
        .Q(M_AXI_WDATA[125]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[126] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[126]),
        .Q(M_AXI_WDATA[126]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[127] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[127]),
        .Q(M_AXI_WDATA[127]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[12]),
        .Q(M_AXI_WDATA[12]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[13]),
        .Q(M_AXI_WDATA[13]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[14]),
        .Q(M_AXI_WDATA[14]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[15]),
        .Q(M_AXI_WDATA[15]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[16]),
        .Q(M_AXI_WDATA[16]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[17]),
        .Q(M_AXI_WDATA[17]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[18]),
        .Q(M_AXI_WDATA[18]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[19]),
        .Q(M_AXI_WDATA[19]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[1]),
        .Q(M_AXI_WDATA[1]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[20]),
        .Q(M_AXI_WDATA[20]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[21]),
        .Q(M_AXI_WDATA[21]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[22]),
        .Q(M_AXI_WDATA[22]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[23]),
        .Q(M_AXI_WDATA[23]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[24]),
        .Q(M_AXI_WDATA[24]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[25]),
        .Q(M_AXI_WDATA[25]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[26]),
        .Q(M_AXI_WDATA[26]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[27]),
        .Q(M_AXI_WDATA[27]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[28]),
        .Q(M_AXI_WDATA[28]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[29]),
        .Q(M_AXI_WDATA[29]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[2]),
        .Q(M_AXI_WDATA[2]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[30]),
        .Q(M_AXI_WDATA[30]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[31]),
        .Q(M_AXI_WDATA[31]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[32] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[32]),
        .Q(M_AXI_WDATA[32]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[33] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[33]),
        .Q(M_AXI_WDATA[33]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[34] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[34]),
        .Q(M_AXI_WDATA[34]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[35] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[35]),
        .Q(M_AXI_WDATA[35]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[36] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[36]),
        .Q(M_AXI_WDATA[36]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[37] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[37]),
        .Q(M_AXI_WDATA[37]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[38] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[38]),
        .Q(M_AXI_WDATA[38]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[39] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[39]),
        .Q(M_AXI_WDATA[39]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[3]),
        .Q(M_AXI_WDATA[3]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[40] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[40]),
        .Q(M_AXI_WDATA[40]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[41] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[41]),
        .Q(M_AXI_WDATA[41]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[42] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[42]),
        .Q(M_AXI_WDATA[42]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[43] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[43]),
        .Q(M_AXI_WDATA[43]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[44] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[44]),
        .Q(M_AXI_WDATA[44]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[45] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[45]),
        .Q(M_AXI_WDATA[45]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[46] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[46]),
        .Q(M_AXI_WDATA[46]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[47] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[47]),
        .Q(M_AXI_WDATA[47]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[48] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[48]),
        .Q(M_AXI_WDATA[48]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[49] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[49]),
        .Q(M_AXI_WDATA[49]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[4]),
        .Q(M_AXI_WDATA[4]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[50] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[50]),
        .Q(M_AXI_WDATA[50]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[51] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[51]),
        .Q(M_AXI_WDATA[51]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[52] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[52]),
        .Q(M_AXI_WDATA[52]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[53] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[53]),
        .Q(M_AXI_WDATA[53]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[54] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[54]),
        .Q(M_AXI_WDATA[54]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[55] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[55]),
        .Q(M_AXI_WDATA[55]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[56] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[56]),
        .Q(M_AXI_WDATA[56]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[57] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[57]),
        .Q(M_AXI_WDATA[57]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[58] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[58]),
        .Q(M_AXI_WDATA[58]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[59] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[59]),
        .Q(M_AXI_WDATA[59]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[5]),
        .Q(M_AXI_WDATA[5]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[60] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[60]),
        .Q(M_AXI_WDATA[60]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[61] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[61]),
        .Q(M_AXI_WDATA[61]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[62] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[62]),
        .Q(M_AXI_WDATA[62]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[63] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[63]),
        .Q(M_AXI_WDATA[63]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[64] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[64]),
        .Q(M_AXI_WDATA[64]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[65] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[65]),
        .Q(M_AXI_WDATA[65]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[66] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[66]),
        .Q(M_AXI_WDATA[66]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[67] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[67]),
        .Q(M_AXI_WDATA[67]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[68] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[68]),
        .Q(M_AXI_WDATA[68]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[69] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[69]),
        .Q(M_AXI_WDATA[69]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[6]),
        .Q(M_AXI_WDATA[6]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[70] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[70]),
        .Q(M_AXI_WDATA[70]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[71] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[71]),
        .Q(M_AXI_WDATA[71]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[72] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[72]),
        .Q(M_AXI_WDATA[72]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[73] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[73]),
        .Q(M_AXI_WDATA[73]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[74] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[74]),
        .Q(M_AXI_WDATA[74]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[75] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[75]),
        .Q(M_AXI_WDATA[75]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[76] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[76]),
        .Q(M_AXI_WDATA[76]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[77] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[77]),
        .Q(M_AXI_WDATA[77]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[78] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[78]),
        .Q(M_AXI_WDATA[78]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[79] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[79]),
        .Q(M_AXI_WDATA[79]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[7]),
        .Q(M_AXI_WDATA[7]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[80] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[80]),
        .Q(M_AXI_WDATA[80]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[81] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[81]),
        .Q(M_AXI_WDATA[81]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[82] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[82]),
        .Q(M_AXI_WDATA[82]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[83] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[83]),
        .Q(M_AXI_WDATA[83]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[84] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[84]),
        .Q(M_AXI_WDATA[84]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[85] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[85]),
        .Q(M_AXI_WDATA[85]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[86] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[86]),
        .Q(M_AXI_WDATA[86]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[87] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[87]),
        .Q(M_AXI_WDATA[87]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[88] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[88]),
        .Q(M_AXI_WDATA[88]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[89] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[89]),
        .Q(M_AXI_WDATA[89]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[8]),
        .Q(M_AXI_WDATA[8]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[90] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[90]),
        .Q(M_AXI_WDATA[90]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[91] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[91]),
        .Q(M_AXI_WDATA[91]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[92] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[92]),
        .Q(M_AXI_WDATA[92]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[93] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[93]),
        .Q(M_AXI_WDATA[93]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[94] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[94]),
        .Q(M_AXI_WDATA[94]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[95] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[95]),
        .Q(M_AXI_WDATA[95]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[96] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[96]),
        .Q(M_AXI_WDATA[96]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[97] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[97]),
        .Q(M_AXI_WDATA[97]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[98] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[98]),
        .Q(M_AXI_WDATA[98]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[99] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[99]),
        .Q(M_AXI_WDATA[99]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[127]_i_1_n_0 ),
        .D(data_trans[9]),
        .Q(M_AXI_WDATA[9]),
        .R(axi_awvalid0));
  LUT6 #(
    .INIT(64'h20FFFFFF20000000)) 
    axi_wlast_i_1
       (.I0(write_index_reg[1]),
        .I1(write_index_reg[0]),
        .I2(axi_wlast_i_2_n_0),
        .I3(M_AXI_WREADY),
        .I4(axi_wvalid_reg_0),
        .I5(axi_wlast_reg_0),
        .O(axi_wlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    axi_wlast_i_2
       (.I0(write_index_reg[4]),
        .I1(write_index_reg[5]),
        .I2(write_index_reg[2]),
        .I3(write_index_reg[3]),
        .I4(write_index_reg[7]),
        .I5(write_index_reg[6]),
        .O(axi_wlast_i_2_n_0));
  FDRE axi_wlast_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wlast_i_1_n_0),
        .Q(axi_wlast_reg_0),
        .R(axi_awvalid0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F707070)) 
    axi_wvalid_i_1
       (.I0(axi_wlast_reg_0),
        .I1(M_AXI_WREADY),
        .I2(axi_wvalid_reg_0),
        .I3(axi_awvalid_reg_0),
        .I4(M_AXI_AWREADY),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(axi_wvalid_reg_0),
        .R(axi_awvalid0));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    burst_read_active_i_1
       (.I0(start_single_burst_read_reg_n_0),
        .I1(M_AXI_RLAST),
        .I2(M_AXI_RVALID),
        .I3(axi_rready_reg_0),
        .I4(burst_read_active),
        .O(burst_read_active_i_1_n_0));
  FDRE burst_read_active_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(burst_read_active_i_1_n_0),
        .Q(burst_read_active),
        .R(axi_awvalid0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF7F0)) 
    burst_write_active_i_1
       (.I0(M_AXI_BREADY),
        .I1(M_AXI_BVALID),
        .I2(start_single_burst_write_reg_n_0),
        .I3(burst_write_active),
        .O(burst_write_active_i_1_n_0));
  FDRE burst_write_active_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(burst_write_active_i_1_n_0),
        .Q(burst_write_active),
        .R(axi_awvalid0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000F888)) 
    data_ready_trans_INST_0
       (.I0(axi_wvalid_reg_0),
        .I1(M_AXI_WREADY),
        .I2(M_AXI_AWREADY),
        .I3(axi_awvalid_reg_0),
        .I4(axi_wlast_reg_0),
        .O(data_ready_trans));
  FDRE data_trans_signal_d1_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(data_trans_signal),
        .Q(data_trans_signal_d1),
        .R(state_write_busy_i_1_n_0));
  FDRE data_trans_signal_d2_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(data_trans_signal_d1),
        .Q(data_trans_signal_d2),
        .R(state_write_busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \read_burst_counter[0]_i_1 
       (.I0(read_burst_counter_reg[0]),
        .O(p_0_in__1[0]));
  LUT6 #(
    .INIT(64'h2F2FFF2FFF2FFF2F)) 
    \read_burst_counter[10]_i_1 
       (.I0(data_trans_signal_d1),
        .I1(data_trans_signal_d2),
        .I2(M_AXI_ARESETN),
        .I3(reads_done),
        .I4(axi_arvalid_reg_0),
        .I5(M_AXI_ARREADY),
        .O(\read_burst_counter[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \read_burst_counter[10]_i_2 
       (.I0(\read_burst_counter[10]_i_4_n_0 ),
        .I1(M_AXI_ARREADY),
        .I2(axi_arvalid_reg_0),
        .O(read_burst_counter));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \read_burst_counter[10]_i_3 
       (.I0(read_burst_counter_reg[9]),
        .I1(read_burst_counter_reg[7]),
        .I2(\read_burst_counter[10]_i_5_n_0 ),
        .I3(read_burst_counter_reg[6]),
        .I4(read_burst_counter_reg[8]),
        .I5(read_burst_counter_reg[10]),
        .O(p_0_in__1[10]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \read_burst_counter[10]_i_4 
       (.I0(\read_burst_counter[10]_i_6_n_0 ),
        .I1(read_burst_counter_reg[4]),
        .I2(read_burst_counter_reg[2]),
        .I3(read_burst_counter_reg[0]),
        .I4(read_burst_counter_reg[1]),
        .I5(read_burst_counter_reg[3]),
        .O(\read_burst_counter[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \read_burst_counter[10]_i_5 
       (.I0(read_burst_counter_reg[4]),
        .I1(read_burst_counter_reg[2]),
        .I2(read_burst_counter_reg[0]),
        .I3(read_burst_counter_reg[1]),
        .I4(read_burst_counter_reg[3]),
        .I5(read_burst_counter_reg[5]),
        .O(\read_burst_counter[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \read_burst_counter[10]_i_6 
       (.I0(read_burst_counter_reg[9]),
        .I1(read_burst_counter_reg[10]),
        .I2(read_burst_counter_reg[7]),
        .I3(read_burst_counter_reg[8]),
        .I4(read_burst_counter_reg[6]),
        .I5(read_burst_counter_reg[5]),
        .O(\read_burst_counter[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_burst_counter[1]_i_1 
       (.I0(read_burst_counter_reg[0]),
        .I1(read_burst_counter_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_burst_counter[2]_i_1 
       (.I0(read_burst_counter_reg[1]),
        .I1(read_burst_counter_reg[0]),
        .I2(read_burst_counter_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_burst_counter[3]_i_1 
       (.I0(read_burst_counter_reg[2]),
        .I1(read_burst_counter_reg[0]),
        .I2(read_burst_counter_reg[1]),
        .I3(read_burst_counter_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \read_burst_counter[4]_i_1 
       (.I0(read_burst_counter_reg[4]),
        .I1(read_burst_counter_reg[2]),
        .I2(read_burst_counter_reg[0]),
        .I3(read_burst_counter_reg[1]),
        .I4(read_burst_counter_reg[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_burst_counter[5]_i_1 
       (.I0(read_burst_counter_reg[4]),
        .I1(read_burst_counter_reg[2]),
        .I2(read_burst_counter_reg[0]),
        .I3(read_burst_counter_reg[1]),
        .I4(read_burst_counter_reg[3]),
        .I5(read_burst_counter_reg[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \read_burst_counter[6]_i_1 
       (.I0(read_burst_counter_reg[5]),
        .I1(\read_burst_counter[8]_i_2_n_0 ),
        .I2(read_burst_counter_reg[4]),
        .I3(read_burst_counter_reg[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \read_burst_counter[7]_i_1 
       (.I0(read_burst_counter_reg[6]),
        .I1(read_burst_counter_reg[4]),
        .I2(\read_burst_counter[8]_i_2_n_0 ),
        .I3(read_burst_counter_reg[5]),
        .I4(read_burst_counter_reg[7]),
        .O(p_0_in__1[7]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \read_burst_counter[8]_i_1 
       (.I0(read_burst_counter_reg[7]),
        .I1(read_burst_counter_reg[5]),
        .I2(\read_burst_counter[8]_i_2_n_0 ),
        .I3(read_burst_counter_reg[4]),
        .I4(read_burst_counter_reg[6]),
        .I5(read_burst_counter_reg[8]),
        .O(p_0_in__1[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \read_burst_counter[8]_i_2 
       (.I0(read_burst_counter_reg[2]),
        .I1(read_burst_counter_reg[0]),
        .I2(read_burst_counter_reg[1]),
        .I3(read_burst_counter_reg[3]),
        .O(\read_burst_counter[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \read_burst_counter[9]_i_1 
       (.I0(read_burst_counter_reg[8]),
        .I1(read_burst_counter_reg[6]),
        .I2(\read_burst_counter[10]_i_5_n_0 ),
        .I3(read_burst_counter_reg[7]),
        .I4(read_burst_counter_reg[9]),
        .O(p_0_in__1[9]));
  FDRE \read_burst_counter_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(p_0_in__1[0]),
        .Q(read_burst_counter_reg[0]),
        .R(\read_burst_counter[10]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(p_0_in__1[10]),
        .Q(read_burst_counter_reg[10]),
        .R(\read_burst_counter[10]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(p_0_in__1[1]),
        .Q(read_burst_counter_reg[1]),
        .R(\read_burst_counter[10]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(p_0_in__1[2]),
        .Q(read_burst_counter_reg[2]),
        .R(\read_burst_counter[10]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(p_0_in__1[3]),
        .Q(read_burst_counter_reg[3]),
        .R(\read_burst_counter[10]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(p_0_in__1[4]),
        .Q(read_burst_counter_reg[4]),
        .R(\read_burst_counter[10]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(p_0_in__1[5]),
        .Q(read_burst_counter_reg[5]),
        .R(\read_burst_counter[10]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(p_0_in__1[6]),
        .Q(read_burst_counter_reg[6]),
        .R(\read_burst_counter[10]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(p_0_in__1[7]),
        .Q(read_burst_counter_reg[7]),
        .R(\read_burst_counter[10]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(p_0_in__1[8]),
        .Q(read_burst_counter_reg[8]),
        .R(\read_burst_counter[10]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(read_burst_counter),
        .D(p_0_in__1[9]),
        .Q(read_burst_counter_reg[9]),
        .R(\read_burst_counter[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_index[0]_i_1 
       (.I0(read_index_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_index[1]_i_1 
       (.I0(read_index_reg[0]),
        .I1(read_index_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_index[2]_i_1 
       (.I0(read_index_reg[1]),
        .I1(read_index_reg[0]),
        .I2(read_index_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_index[3]_i_1 
       (.I0(read_index_reg[2]),
        .I1(read_index_reg[0]),
        .I2(read_index_reg[1]),
        .I3(read_index_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_index[4]_i_1 
       (.I0(read_index_reg[3]),
        .I1(read_index_reg[1]),
        .I2(read_index_reg[0]),
        .I3(read_index_reg[2]),
        .I4(read_index_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_index[5]_i_1 
       (.I0(read_index_reg[4]),
        .I1(read_index_reg[2]),
        .I2(read_index_reg[0]),
        .I3(read_index_reg[1]),
        .I4(read_index_reg[3]),
        .I5(read_index_reg[5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \read_index[6]_i_1 
       (.I0(\read_index[7]_i_4_n_0 ),
        .I1(read_index_reg[6]),
        .O(p_0_in__0[6]));
  LUT4 #(
    .INIT(16'hFF2F)) 
    \read_index[7]_i_1 
       (.I0(data_trans_signal_d1),
        .I1(data_trans_signal_d2),
        .I2(M_AXI_ARESETN),
        .I3(start_single_burst_read_reg_n_0),
        .O(\read_index[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEF000000)) 
    \read_index[7]_i_2 
       (.I0(read_index_reg[7]),
        .I1(\read_index[7]_i_4_n_0 ),
        .I2(read_index_reg[6]),
        .I3(axi_rready_reg_0),
        .I4(M_AXI_RVALID),
        .O(read_index0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \read_index[7]_i_3 
       (.I0(read_index_reg[7]),
        .I1(\read_index[7]_i_4_n_0 ),
        .I2(read_index_reg[6]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \read_index[7]_i_4 
       (.I0(read_index_reg[4]),
        .I1(read_index_reg[2]),
        .I2(read_index_reg[0]),
        .I3(read_index_reg[1]),
        .I4(read_index_reg[3]),
        .I5(read_index_reg[5]),
        .O(\read_index[7]_i_4_n_0 ));
  FDRE \read_index_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__0[0]),
        .Q(read_index_reg[0]),
        .R(\read_index[7]_i_1_n_0 ));
  FDRE \read_index_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__0[1]),
        .Q(read_index_reg[1]),
        .R(\read_index[7]_i_1_n_0 ));
  FDRE \read_index_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__0[2]),
        .Q(read_index_reg[2]),
        .R(\read_index[7]_i_1_n_0 ));
  FDRE \read_index_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__0[3]),
        .Q(read_index_reg[3]),
        .R(\read_index[7]_i_1_n_0 ));
  FDRE \read_index_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__0[4]),
        .Q(read_index_reg[4]),
        .R(\read_index[7]_i_1_n_0 ));
  FDRE \read_index_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__0[5]),
        .Q(read_index_reg[5]),
        .R(\read_index[7]_i_1_n_0 ));
  FDRE \read_index_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__0[6]),
        .Q(read_index_reg[6]),
        .R(\read_index[7]_i_1_n_0 ));
  FDRE \read_index_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(read_index0),
        .D(p_0_in__0[7]),
        .Q(read_index_reg[7]),
        .R(\read_index[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    reads_done_i_1
       (.I0(reads_done_i_2_n_0),
        .I1(\read_burst_counter[10]_i_4_n_0 ),
        .I2(axi_rready_reg_0),
        .I3(M_AXI_RVALID),
        .I4(reads_done),
        .O(reads_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    reads_done_i_2
       (.I0(read_index_reg[6]),
        .I1(\read_index[7]_i_4_n_0 ),
        .I2(read_index_reg[7]),
        .O(reads_done_i_2_n_0));
  FDRE reads_done_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(reads_done_i_1_n_0),
        .Q(reads_done),
        .R(axi_awvalid0));
  LUT5 #(
    .INIT(32'hFF0F0010)) 
    start_single_burst_read_i_1
       (.I0(axi_arvalid_reg_0),
        .I1(burst_read_active),
        .I2(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I3(reads_done),
        .I4(start_single_burst_read_reg_n_0),
        .O(start_single_burst_read_i_1_n_0));
  FDRE start_single_burst_read_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(start_single_burst_read_i_1_n_0),
        .Q(start_single_burst_read_reg_n_0),
        .R(state_write_busy_i_1_n_0));
  LUT5 #(
    .INIT(32'hFF0F0010)) 
    start_single_burst_write_i_1
       (.I0(axi_awvalid_reg_0),
        .I1(burst_write_active),
        .I2(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I3(writes_done),
        .I4(start_single_burst_write_reg_n_0),
        .O(start_single_burst_write_i_1_n_0));
  FDRE start_single_burst_write_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(start_single_burst_write_i_1_n_0),
        .Q(start_single_burst_write_reg_n_0),
        .R(state_write_busy_i_1_n_0));
  FDRE state_read_busy_reg
       (.C(M_AXI_ACLK),
        .CE(mst_exec_state),
        .D(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .Q(state_read_busy),
        .R(state_write_busy_i_1_n_0));
  FDRE state_wait_reg
       (.C(M_AXI_ACLK),
        .CE(mst_exec_state),
        .D(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .Q(state_wait),
        .R(state_write_busy_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_write_busy_i_1
       (.I0(M_AXI_ARESETN),
        .O(state_write_busy_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    state_write_busy_i_2
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .O(mst_exec_state));
  FDRE state_write_busy_reg
       (.C(M_AXI_ACLK),
        .CE(mst_exec_state),
        .D(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .Q(state_write_busy),
        .R(state_write_busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \write_burst_counter[0]_i_1 
       (.I0(write_burst_counter_reg[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h2F2FFF2FFF2FFF2F)) 
    \write_burst_counter[10]_i_1 
       (.I0(data_trans_signal_d1),
        .I1(data_trans_signal_d2),
        .I2(M_AXI_ARESETN),
        .I3(writes_done),
        .I4(axi_awvalid_reg_0),
        .I5(M_AXI_AWREADY),
        .O(\write_burst_counter[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \write_burst_counter[10]_i_2 
       (.I0(\write_burst_counter[10]_i_4_n_0 ),
        .I1(M_AXI_AWREADY),
        .I2(axi_awvalid_reg_0),
        .O(write_burst_counter));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \write_burst_counter[10]_i_3 
       (.I0(write_burst_counter_reg[9]),
        .I1(write_burst_counter_reg[7]),
        .I2(\write_burst_counter[10]_i_5_n_0 ),
        .I3(write_burst_counter_reg[6]),
        .I4(write_burst_counter_reg[8]),
        .I5(write_burst_counter_reg[10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \write_burst_counter[10]_i_4 
       (.I0(\write_burst_counter[10]_i_6_n_0 ),
        .I1(write_burst_counter_reg[4]),
        .I2(write_burst_counter_reg[2]),
        .I3(write_burst_counter_reg[0]),
        .I4(write_burst_counter_reg[1]),
        .I5(write_burst_counter_reg[3]),
        .O(\write_burst_counter[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \write_burst_counter[10]_i_5 
       (.I0(write_burst_counter_reg[4]),
        .I1(write_burst_counter_reg[2]),
        .I2(write_burst_counter_reg[0]),
        .I3(write_burst_counter_reg[1]),
        .I4(write_burst_counter_reg[3]),
        .I5(write_burst_counter_reg[5]),
        .O(\write_burst_counter[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \write_burst_counter[10]_i_6 
       (.I0(write_burst_counter_reg[9]),
        .I1(write_burst_counter_reg[10]),
        .I2(write_burst_counter_reg[7]),
        .I3(write_burst_counter_reg[8]),
        .I4(write_burst_counter_reg[6]),
        .I5(write_burst_counter_reg[5]),
        .O(\write_burst_counter[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_burst_counter[1]_i_1 
       (.I0(write_burst_counter_reg[0]),
        .I1(write_burst_counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_burst_counter[2]_i_1 
       (.I0(write_burst_counter_reg[1]),
        .I1(write_burst_counter_reg[0]),
        .I2(write_burst_counter_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_burst_counter[3]_i_1 
       (.I0(write_burst_counter_reg[2]),
        .I1(write_burst_counter_reg[0]),
        .I2(write_burst_counter_reg[1]),
        .I3(write_burst_counter_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \write_burst_counter[4]_i_1 
       (.I0(write_burst_counter_reg[4]),
        .I1(write_burst_counter_reg[2]),
        .I2(write_burst_counter_reg[0]),
        .I3(write_burst_counter_reg[1]),
        .I4(write_burst_counter_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_burst_counter[5]_i_1 
       (.I0(write_burst_counter_reg[4]),
        .I1(write_burst_counter_reg[2]),
        .I2(write_burst_counter_reg[0]),
        .I3(write_burst_counter_reg[1]),
        .I4(write_burst_counter_reg[3]),
        .I5(write_burst_counter_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \write_burst_counter[6]_i_1 
       (.I0(write_burst_counter_reg[5]),
        .I1(\write_burst_counter[8]_i_2_n_0 ),
        .I2(write_burst_counter_reg[4]),
        .I3(write_burst_counter_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \write_burst_counter[7]_i_1 
       (.I0(write_burst_counter_reg[6]),
        .I1(write_burst_counter_reg[4]),
        .I2(\write_burst_counter[8]_i_2_n_0 ),
        .I3(write_burst_counter_reg[5]),
        .I4(write_burst_counter_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \write_burst_counter[8]_i_1 
       (.I0(write_burst_counter_reg[7]),
        .I1(write_burst_counter_reg[5]),
        .I2(\write_burst_counter[8]_i_2_n_0 ),
        .I3(write_burst_counter_reg[4]),
        .I4(write_burst_counter_reg[6]),
        .I5(write_burst_counter_reg[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \write_burst_counter[8]_i_2 
       (.I0(write_burst_counter_reg[2]),
        .I1(write_burst_counter_reg[0]),
        .I2(write_burst_counter_reg[1]),
        .I3(write_burst_counter_reg[3]),
        .O(\write_burst_counter[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \write_burst_counter[9]_i_1 
       (.I0(write_burst_counter_reg[8]),
        .I1(write_burst_counter_reg[6]),
        .I2(\write_burst_counter[10]_i_5_n_0 ),
        .I3(write_burst_counter_reg[7]),
        .I4(write_burst_counter_reg[9]),
        .O(p_0_in[9]));
  FDRE \write_burst_counter_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(write_burst_counter),
        .D(p_0_in[0]),
        .Q(write_burst_counter_reg[0]),
        .R(\write_burst_counter[10]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(write_burst_counter),
        .D(p_0_in[10]),
        .Q(write_burst_counter_reg[10]),
        .R(\write_burst_counter[10]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(write_burst_counter),
        .D(p_0_in[1]),
        .Q(write_burst_counter_reg[1]),
        .R(\write_burst_counter[10]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(write_burst_counter),
        .D(p_0_in[2]),
        .Q(write_burst_counter_reg[2]),
        .R(\write_burst_counter[10]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(write_burst_counter),
        .D(p_0_in[3]),
        .Q(write_burst_counter_reg[3]),
        .R(\write_burst_counter[10]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(write_burst_counter),
        .D(p_0_in[4]),
        .Q(write_burst_counter_reg[4]),
        .R(\write_burst_counter[10]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(write_burst_counter),
        .D(p_0_in[5]),
        .Q(write_burst_counter_reg[5]),
        .R(\write_burst_counter[10]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(write_burst_counter),
        .D(p_0_in[6]),
        .Q(write_burst_counter_reg[6]),
        .R(\write_burst_counter[10]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(write_burst_counter),
        .D(p_0_in[7]),
        .Q(write_burst_counter_reg[7]),
        .R(\write_burst_counter[10]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(write_burst_counter),
        .D(p_0_in[8]),
        .Q(write_burst_counter_reg[8]),
        .R(\write_burst_counter[10]_i_1_n_0 ));
  FDRE \write_burst_counter_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(write_burst_counter),
        .D(p_0_in[9]),
        .Q(write_burst_counter_reg[9]),
        .R(\write_burst_counter[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \write_index[0]_i_1 
       (.I0(write_index_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_index[1]_i_1 
       (.I0(write_index_reg[0]),
        .I1(write_index_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_index[2]_i_1 
       (.I0(write_index_reg[1]),
        .I1(write_index_reg[0]),
        .I2(write_index_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_index[3]_i_1 
       (.I0(write_index_reg[2]),
        .I1(write_index_reg[0]),
        .I2(write_index_reg[1]),
        .I3(write_index_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_index[4]_i_1 
       (.I0(write_index_reg[3]),
        .I1(write_index_reg[1]),
        .I2(write_index_reg[0]),
        .I3(write_index_reg[2]),
        .I4(write_index_reg[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_index[5]_i_1 
       (.I0(write_index_reg[4]),
        .I1(write_index_reg[2]),
        .I2(write_index_reg[0]),
        .I3(write_index_reg[1]),
        .I4(write_index_reg[3]),
        .I5(write_index_reg[5]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \write_index[6]_i_1 
       (.I0(\write_index[7]_i_4_n_0 ),
        .I1(write_index_reg[6]),
        .O(p_0_in__2[6]));
  LUT4 #(
    .INIT(16'hFF2F)) 
    \write_index[7]_i_1 
       (.I0(data_trans_signal_d1),
        .I1(data_trans_signal_d2),
        .I2(M_AXI_ARESETN),
        .I3(start_single_burst_write_reg_n_0),
        .O(\write_index[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEF000000)) 
    \write_index[7]_i_2 
       (.I0(write_index_reg[7]),
        .I1(\write_index[7]_i_4_n_0 ),
        .I2(write_index_reg[6]),
        .I3(axi_wvalid_reg_0),
        .I4(M_AXI_WREADY),
        .O(write_index0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \write_index[7]_i_3 
       (.I0(write_index_reg[7]),
        .I1(\write_index[7]_i_4_n_0 ),
        .I2(write_index_reg[6]),
        .O(p_0_in__2[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \write_index[7]_i_4 
       (.I0(write_index_reg[4]),
        .I1(write_index_reg[2]),
        .I2(write_index_reg[0]),
        .I3(write_index_reg[1]),
        .I4(write_index_reg[3]),
        .I5(write_index_reg[5]),
        .O(\write_index[7]_i_4_n_0 ));
  FDRE \write_index_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__2[0]),
        .Q(write_index_reg[0]),
        .R(\write_index[7]_i_1_n_0 ));
  FDRE \write_index_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__2[1]),
        .Q(write_index_reg[1]),
        .R(\write_index[7]_i_1_n_0 ));
  FDRE \write_index_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__2[2]),
        .Q(write_index_reg[2]),
        .R(\write_index[7]_i_1_n_0 ));
  FDRE \write_index_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__2[3]),
        .Q(write_index_reg[3]),
        .R(\write_index[7]_i_1_n_0 ));
  FDRE \write_index_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__2[4]),
        .Q(write_index_reg[4]),
        .R(\write_index[7]_i_1_n_0 ));
  FDRE \write_index_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__2[5]),
        .Q(write_index_reg[5]),
        .R(\write_index[7]_i_1_n_0 ));
  FDRE \write_index_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__2[6]),
        .Q(write_index_reg[6]),
        .R(\write_index[7]_i_1_n_0 ));
  FDRE \write_index_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(write_index0),
        .D(p_0_in__2[7]),
        .Q(write_index_reg[7]),
        .R(\write_index[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    writes_done_i_1
       (.I0(\write_burst_counter[10]_i_4_n_0 ),
        .I1(M_AXI_BVALID),
        .I2(M_AXI_BREADY),
        .I3(writes_done),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(axi_awvalid0));
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
