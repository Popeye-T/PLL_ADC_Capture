// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Dec 17 21:46:28 2024
// Host        : DESKTOP-K54KI5V running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/workspace/PLL_ADC_Capture/3_ADC_Capture_ETH/ADC_Capture_ETH.gen/sources_1/bd/system/ip/system_uiFDMA_0_1/system_uiFDMA_0_1_sim_netlist.v
// Design      : system_uiFDMA_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_uiFDMA_0_1,uiFDMA,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "uiFDMA,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module system_uiFDMA_0_1
   (fdma_waddr,
    fdma_wareq,
    fdma_wsize,
    fdma_wbusy,
    fdma_wdata,
    fdma_wvalid,
    fdma_wready,
    fdma_raddr,
    fdma_rareq,
    fdma_rsize,
    fdma_rbusy,
    fdma_rdata,
    fdma_rvalid,
    fdma_rready,
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
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WID,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WLAST,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BID,
    M_AXI_BRESP,
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
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RID,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RLAST,
    M_AXI_RVALID,
    M_AXI_RREADY);
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_waddr" *) input [31:0]fdma_waddr;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_wareq" *) input fdma_wareq;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_wsize" *) input [15:0]fdma_wsize;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_wbusy" *) output fdma_wbusy;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_wdata" *) input [127:0]fdma_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_wvalid" *) output fdma_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_wready" *) input fdma_wready;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_raddr" *) input [31:0]fdma_raddr;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_rareq" *) input fdma_rareq;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_rsize" *) input [15:0]fdma_rsize;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_rbusy" *) output fdma_rbusy;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_rdata" *) output [127:0]fdma_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_rvalid" *) output fdma_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:user:FDMA:1.0 FDMA_S fdma_rready" *) input fdma_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input M_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input M_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *) output [2:0]M_AXI_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]M_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]M_AXI_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]M_AXI_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]M_AXI_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output M_AXI_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]M_AXI_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]M_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]M_AXI_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WID" *) output [2:0]M_AXI_WID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [127:0]M_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [15:0]M_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output M_AXI_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BID" *) input [2:0]M_AXI_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]M_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output M_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *) output [2:0]M_AXI_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]M_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]M_AXI_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]M_AXI_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]M_AXI_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output M_AXI_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]M_AXI_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]M_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]M_AXI_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output M_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input M_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RID" *) input [2:0]M_AXI_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [127:0]M_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]M_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input M_AXI_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input M_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 3, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output M_AXI_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire M_AXI_ACLK;
  wire [31:0]M_AXI_ARADDR;
  wire M_AXI_ARESETN;
  wire [7:0]M_AXI_ARLEN;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire [31:0]M_AXI_AWADDR;
  wire [7:0]M_AXI_AWLEN;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire [127:0]M_AXI_RDATA;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  wire M_AXI_WLAST;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID;
  wire [31:0]fdma_raddr;
  wire fdma_rareq;
  wire fdma_rbusy;
  wire fdma_rready;
  wire [15:0]fdma_rsize;
  wire fdma_rvalid;
  wire [31:0]fdma_waddr;
  wire fdma_wareq;
  wire fdma_wbusy;
  wire [127:0]fdma_wdata;
  wire fdma_wready;
  wire [15:0]fdma_wsize;
  wire fdma_wvalid;

  assign M_AXI_ARBURST[1] = \<const0> ;
  assign M_AXI_ARBURST[0] = \<const1> ;
  assign M_AXI_ARCACHE[3] = \<const0> ;
  assign M_AXI_ARCACHE[2] = \<const0> ;
  assign M_AXI_ARCACHE[1] = \<const1> ;
  assign M_AXI_ARCACHE[0] = \<const0> ;
  assign M_AXI_ARID[2] = \<const0> ;
  assign M_AXI_ARID[1] = \<const0> ;
  assign M_AXI_ARID[0] = \<const0> ;
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
  assign M_AXI_AWBURST[1] = \<const0> ;
  assign M_AXI_AWBURST[0] = \<const1> ;
  assign M_AXI_AWCACHE[3] = \<const0> ;
  assign M_AXI_AWCACHE[2] = \<const0> ;
  assign M_AXI_AWCACHE[1] = \<const1> ;
  assign M_AXI_AWCACHE[0] = \<const0> ;
  assign M_AXI_AWID[2] = \<const0> ;
  assign M_AXI_AWID[1] = \<const0> ;
  assign M_AXI_AWID[0] = \<const0> ;
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
  assign M_AXI_BREADY = \<const1> ;
  assign M_AXI_WDATA[127:0] = fdma_wdata;
  assign M_AXI_WID[2] = \<const0> ;
  assign M_AXI_WID[1] = \<const0> ;
  assign M_AXI_WID[0] = \<const0> ;
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
  assign fdma_rdata[127:0] = M_AXI_RDATA;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  system_uiFDMA_0_1_uiFDMA inst
       (.M_AXI_ACLK(M_AXI_ACLK),
        .M_AXI_ARADDR(M_AXI_ARADDR),
        .M_AXI_ARESETN(M_AXI_ARESETN),
        .M_AXI_ARLEN(M_AXI_ARLEN),
        .M_AXI_ARREADY(M_AXI_ARREADY),
        .M_AXI_ARVALID(M_AXI_ARVALID),
        .M_AXI_AWADDR(M_AXI_AWADDR),
        .M_AXI_AWLEN(M_AXI_AWLEN),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_AWVALID(M_AXI_AWVALID),
        .M_AXI_RREADY(M_AXI_RREADY),
        .M_AXI_RVALID(M_AXI_RVALID),
        .M_AXI_WLAST(M_AXI_WLAST),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WVALID(M_AXI_WVALID),
        .fdma_raddr(fdma_raddr),
        .fdma_rareq(fdma_rareq),
        .fdma_rready(fdma_rready),
        .fdma_rsize(fdma_rsize),
        .fdma_rstart_locked_reg_0(fdma_rbusy),
        .fdma_rvalid(fdma_rvalid),
        .fdma_waddr(fdma_waddr),
        .fdma_wareq(fdma_wareq),
        .fdma_wready(fdma_wready),
        .fdma_wsize(fdma_wsize),
        .fdma_wstart_locked_reg_0(fdma_wbusy),
        .fdma_wvalid(fdma_wvalid));
endmodule

(* ORIG_REF_NAME = "uiFDMA" *) 
module system_uiFDMA_0_1_uiFDMA
   (fdma_wstart_locked_reg_0,
    fdma_rstart_locked_reg_0,
    fdma_wvalid,
    fdma_rvalid,
    M_AXI_AWADDR,
    M_AXI_ARADDR,
    M_AXI_WVALID,
    M_AXI_WLAST,
    M_AXI_RREADY,
    M_AXI_AWLEN,
    M_AXI_ARLEN,
    M_AXI_AWVALID,
    M_AXI_ARVALID,
    fdma_wareq,
    M_AXI_ARESETN,
    fdma_rareq,
    M_AXI_ACLK,
    M_AXI_WREADY,
    fdma_wready,
    fdma_wsize,
    fdma_waddr,
    M_AXI_RVALID,
    fdma_rready,
    fdma_rsize,
    fdma_raddr,
    M_AXI_AWREADY,
    M_AXI_ARREADY);
  output fdma_wstart_locked_reg_0;
  output fdma_rstart_locked_reg_0;
  output fdma_wvalid;
  output fdma_rvalid;
  output [31:0]M_AXI_AWADDR;
  output [31:0]M_AXI_ARADDR;
  output M_AXI_WVALID;
  output M_AXI_WLAST;
  output M_AXI_RREADY;
  output [7:0]M_AXI_AWLEN;
  output [7:0]M_AXI_ARLEN;
  output M_AXI_AWVALID;
  output M_AXI_ARVALID;
  input fdma_wareq;
  input M_AXI_ARESETN;
  input fdma_rareq;
  input M_AXI_ACLK;
  input M_AXI_WREADY;
  input fdma_wready;
  input [15:0]fdma_wsize;
  input [31:0]fdma_waddr;
  input M_AXI_RVALID;
  input fdma_rready;
  input [15:0]fdma_rsize;
  input [31:0]fdma_raddr;
  input M_AXI_AWREADY;
  input M_AXI_ARREADY;

  wire M_AXI_ACLK;
  wire [31:0]M_AXI_ARADDR;
  wire M_AXI_ARESETN;
  wire [7:0]M_AXI_ARLEN;
  wire \M_AXI_ARLEN[7]_INST_0_i_1_n_0 ;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire [31:0]M_AXI_AWADDR;
  wire [7:0]M_AXI_AWLEN;
  wire \M_AXI_AWLEN[7]_INST_0_i_1_n_0 ;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  wire M_AXI_WLAST;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID;
  wire \axi_araddr[0]_i_1_n_0 ;
  wire \axi_araddr[10]_i_2_n_0 ;
  wire \axi_araddr[10]_i_3_n_0 ;
  wire \axi_araddr[10]_i_4_n_0 ;
  wire \axi_araddr[10]_i_5_n_0 ;
  wire \axi_araddr[10]_i_6_n_0 ;
  wire \axi_araddr[10]_i_7_n_0 ;
  wire \axi_araddr[10]_i_8_n_0 ;
  wire \axi_araddr[10]_i_9_n_0 ;
  wire \axi_araddr[14]_i_2_n_0 ;
  wire \axi_araddr[14]_i_3_n_0 ;
  wire \axi_araddr[14]_i_4_n_0 ;
  wire \axi_araddr[14]_i_5_n_0 ;
  wire \axi_araddr[18]_i_2_n_0 ;
  wire \axi_araddr[18]_i_3_n_0 ;
  wire \axi_araddr[18]_i_4_n_0 ;
  wire \axi_araddr[18]_i_5_n_0 ;
  wire \axi_araddr[1]_i_1_n_0 ;
  wire \axi_araddr[22]_i_2_n_0 ;
  wire \axi_araddr[22]_i_3_n_0 ;
  wire \axi_araddr[22]_i_4_n_0 ;
  wire \axi_araddr[22]_i_5_n_0 ;
  wire \axi_araddr[26]_i_2_n_0 ;
  wire \axi_araddr[26]_i_3_n_0 ;
  wire \axi_araddr[26]_i_4_n_0 ;
  wire \axi_araddr[26]_i_5_n_0 ;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[30]_i_2_n_0 ;
  wire \axi_araddr[30]_i_3_n_0 ;
  wire \axi_araddr[30]_i_4_n_0 ;
  wire \axi_araddr[30]_i_5_n_0 ;
  wire \axi_araddr[31]_i_1_n_0 ;
  wire \axi_araddr[31]_i_3_n_0 ;
  wire \axi_araddr[6]_i_2_n_0 ;
  wire \axi_araddr[6]_i_3_n_0 ;
  wire \axi_araddr[6]_i_4_n_0 ;
  wire \axi_araddr[6]_i_5_n_0 ;
  wire \axi_araddr[6]_i_6_n_0 ;
  wire \axi_araddr[6]_i_7_n_0 ;
  wire \axi_araddr[6]_i_8_n_0 ;
  wire \axi_araddr_reg[10]_i_1_n_0 ;
  wire \axi_araddr_reg[10]_i_1_n_1 ;
  wire \axi_araddr_reg[10]_i_1_n_2 ;
  wire \axi_araddr_reg[10]_i_1_n_3 ;
  wire \axi_araddr_reg[10]_i_1_n_4 ;
  wire \axi_araddr_reg[10]_i_1_n_5 ;
  wire \axi_araddr_reg[10]_i_1_n_6 ;
  wire \axi_araddr_reg[10]_i_1_n_7 ;
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
  wire \axi_araddr_reg[26]_i_1_n_0 ;
  wire \axi_araddr_reg[26]_i_1_n_1 ;
  wire \axi_araddr_reg[26]_i_1_n_2 ;
  wire \axi_araddr_reg[26]_i_1_n_3 ;
  wire \axi_araddr_reg[26]_i_1_n_4 ;
  wire \axi_araddr_reg[26]_i_1_n_5 ;
  wire \axi_araddr_reg[26]_i_1_n_6 ;
  wire \axi_araddr_reg[26]_i_1_n_7 ;
  wire \axi_araddr_reg[30]_i_1_n_0 ;
  wire \axi_araddr_reg[30]_i_1_n_1 ;
  wire \axi_araddr_reg[30]_i_1_n_2 ;
  wire \axi_araddr_reg[30]_i_1_n_3 ;
  wire \axi_araddr_reg[30]_i_1_n_4 ;
  wire \axi_araddr_reg[30]_i_1_n_5 ;
  wire \axi_araddr_reg[30]_i_1_n_6 ;
  wire \axi_araddr_reg[30]_i_1_n_7 ;
  wire \axi_araddr_reg[31]_i_2_n_7 ;
  wire \axi_araddr_reg[6]_i_1_n_0 ;
  wire \axi_araddr_reg[6]_i_1_n_1 ;
  wire \axi_araddr_reg[6]_i_1_n_2 ;
  wire \axi_araddr_reg[6]_i_1_n_3 ;
  wire \axi_araddr_reg[6]_i_1_n_4 ;
  wire \axi_araddr_reg[6]_i_1_n_5 ;
  wire \axi_araddr_reg[6]_i_1_n_6 ;
  wire \axi_araddr_reg[6]_i_1_n_7 ;
  wire axi_arvalid_i_1_n_0;
  wire \axi_awaddr[0]_i_1_n_0 ;
  wire \axi_awaddr[10]_i_2_n_0 ;
  wire \axi_awaddr[10]_i_3_n_0 ;
  wire \axi_awaddr[10]_i_4_n_0 ;
  wire \axi_awaddr[10]_i_5_n_0 ;
  wire \axi_awaddr[10]_i_6_n_0 ;
  wire \axi_awaddr[10]_i_7_n_0 ;
  wire \axi_awaddr[10]_i_8_n_0 ;
  wire \axi_awaddr[10]_i_9_n_0 ;
  wire \axi_awaddr[14]_i_2_n_0 ;
  wire \axi_awaddr[14]_i_3_n_0 ;
  wire \axi_awaddr[14]_i_4_n_0 ;
  wire \axi_awaddr[14]_i_5_n_0 ;
  wire \axi_awaddr[18]_i_2_n_0 ;
  wire \axi_awaddr[18]_i_3_n_0 ;
  wire \axi_awaddr[18]_i_4_n_0 ;
  wire \axi_awaddr[18]_i_5_n_0 ;
  wire \axi_awaddr[1]_i_1_n_0 ;
  wire \axi_awaddr[22]_i_2_n_0 ;
  wire \axi_awaddr[22]_i_3_n_0 ;
  wire \axi_awaddr[22]_i_4_n_0 ;
  wire \axi_awaddr[22]_i_5_n_0 ;
  wire \axi_awaddr[26]_i_2_n_0 ;
  wire \axi_awaddr[26]_i_3_n_0 ;
  wire \axi_awaddr[26]_i_4_n_0 ;
  wire \axi_awaddr[26]_i_5_n_0 ;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[30]_i_2_n_0 ;
  wire \axi_awaddr[30]_i_3_n_0 ;
  wire \axi_awaddr[30]_i_4_n_0 ;
  wire \axi_awaddr[30]_i_5_n_0 ;
  wire \axi_awaddr[31]_i_2_n_0 ;
  wire \axi_awaddr[31]_i_4_n_0 ;
  wire \axi_awaddr[6]_i_2_n_0 ;
  wire \axi_awaddr[6]_i_3_n_0 ;
  wire \axi_awaddr[6]_i_4_n_0 ;
  wire \axi_awaddr[6]_i_5_n_0 ;
  wire \axi_awaddr[6]_i_6_n_0 ;
  wire \axi_awaddr[6]_i_7_n_0 ;
  wire \axi_awaddr[6]_i_8_n_0 ;
  wire \axi_awaddr_reg[10]_i_1_n_0 ;
  wire \axi_awaddr_reg[10]_i_1_n_1 ;
  wire \axi_awaddr_reg[10]_i_1_n_2 ;
  wire \axi_awaddr_reg[10]_i_1_n_3 ;
  wire \axi_awaddr_reg[10]_i_1_n_4 ;
  wire \axi_awaddr_reg[10]_i_1_n_5 ;
  wire \axi_awaddr_reg[10]_i_1_n_6 ;
  wire \axi_awaddr_reg[10]_i_1_n_7 ;
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
  wire \axi_awaddr_reg[26]_i_1_n_0 ;
  wire \axi_awaddr_reg[26]_i_1_n_1 ;
  wire \axi_awaddr_reg[26]_i_1_n_2 ;
  wire \axi_awaddr_reg[26]_i_1_n_3 ;
  wire \axi_awaddr_reg[26]_i_1_n_4 ;
  wire \axi_awaddr_reg[26]_i_1_n_5 ;
  wire \axi_awaddr_reg[26]_i_1_n_6 ;
  wire \axi_awaddr_reg[26]_i_1_n_7 ;
  wire \axi_awaddr_reg[30]_i_1_n_0 ;
  wire \axi_awaddr_reg[30]_i_1_n_1 ;
  wire \axi_awaddr_reg[30]_i_1_n_2 ;
  wire \axi_awaddr_reg[30]_i_1_n_3 ;
  wire \axi_awaddr_reg[30]_i_1_n_4 ;
  wire \axi_awaddr_reg[30]_i_1_n_5 ;
  wire \axi_awaddr_reg[30]_i_1_n_6 ;
  wire \axi_awaddr_reg[30]_i_1_n_7 ;
  wire \axi_awaddr_reg[31]_i_3_n_7 ;
  wire \axi_awaddr_reg[6]_i_1_n_0 ;
  wire \axi_awaddr_reg[6]_i_1_n_1 ;
  wire \axi_awaddr_reg[6]_i_1_n_2 ;
  wire \axi_awaddr_reg[6]_i_1_n_3 ;
  wire \axi_awaddr_reg[6]_i_1_n_4 ;
  wire \axi_awaddr_reg[6]_i_1_n_5 ;
  wire \axi_awaddr_reg[6]_i_1_n_6 ;
  wire \axi_awaddr_reg[6]_i_1_n_7 ;
  wire axi_awvalid_i_1_n_0;
  wire [10:4]axi_rburst_size;
  wire axi_rlast0;
  wire axi_rlast0_carry_i_1_n_0;
  wire axi_rlast0_carry_i_2_n_0;
  wire axi_rlast0_carry_i_3_n_0;
  wire axi_rlast0_carry_i_4_n_0;
  wire axi_rlast0_carry_i_5_n_0;
  wire axi_rlast0_carry_n_2;
  wire axi_rlast0_carry_n_3;
  wire axi_rready;
  wire axi_rready_i_1_n_0;
  wire axi_rstart_locked;
  wire axi_rstart_locked1;
  wire axi_rstart_locked_i_1_n_0;
  wire axi_rstart_locked_r1;
  wire axi_rstart_locked_r2;
  wire [10:4]axi_wburst_size;
  wire axi_wlast0;
  wire axi_wlast0_carry_i_1_n_0;
  wire axi_wlast0_carry_i_2_n_0;
  wire axi_wlast0_carry_i_3_n_0;
  wire axi_wlast0_carry_i_4_n_0;
  wire axi_wlast0_carry_i_5_n_0;
  wire axi_wlast0_carry_n_2;
  wire axi_wlast0_carry_n_3;
  wire axi_wstart_locked;
  wire axi_wstart_locked1;
  wire axi_wstart_locked_i_1_n_0;
  wire axi_wstart_locked_r1;
  wire axi_wstart_locked_r2;
  wire axi_wvalid;
  wire axi_wvalid_i_1_n_0;
  wire [31:0]fdma_raddr;
  wire fdma_rareq;
  wire [15:0]fdma_rleft_cnt;
  wire fdma_rleft_cnt0_carry__0_i_1_n_0;
  wire fdma_rleft_cnt0_carry__0_i_2_n_0;
  wire fdma_rleft_cnt0_carry__0_i_3_n_0;
  wire fdma_rleft_cnt0_carry__0_i_4_n_0;
  wire fdma_rleft_cnt0_carry__0_n_0;
  wire fdma_rleft_cnt0_carry__0_n_1;
  wire fdma_rleft_cnt0_carry__0_n_2;
  wire fdma_rleft_cnt0_carry__0_n_3;
  wire fdma_rleft_cnt0_carry__1_i_1_n_0;
  wire fdma_rleft_cnt0_carry__1_i_2_n_0;
  wire fdma_rleft_cnt0_carry__1_i_3_n_0;
  wire fdma_rleft_cnt0_carry__1_i_4_n_0;
  wire fdma_rleft_cnt0_carry__1_n_0;
  wire fdma_rleft_cnt0_carry__1_n_1;
  wire fdma_rleft_cnt0_carry__1_n_2;
  wire fdma_rleft_cnt0_carry__1_n_3;
  wire fdma_rleft_cnt0_carry__2_i_1_n_0;
  wire fdma_rleft_cnt0_carry__2_i_2_n_0;
  wire fdma_rleft_cnt0_carry__2_i_3_n_0;
  wire fdma_rleft_cnt0_carry__2_i_4_n_0;
  wire fdma_rleft_cnt0_carry__2_n_1;
  wire fdma_rleft_cnt0_carry__2_n_2;
  wire fdma_rleft_cnt0_carry__2_n_3;
  wire fdma_rleft_cnt0_carry_i_1_n_0;
  wire fdma_rleft_cnt0_carry_i_2_n_0;
  wire fdma_rleft_cnt0_carry_i_3_n_0;
  wire fdma_rleft_cnt0_carry_i_4_n_0;
  wire fdma_rleft_cnt0_carry_n_0;
  wire fdma_rleft_cnt0_carry_n_1;
  wire fdma_rleft_cnt0_carry_n_2;
  wire fdma_rleft_cnt0_carry_n_3;
  wire \fdma_rleft_cnt[15]_i_1_n_0 ;
  wire \fdma_rleft_cnt_reg_n_0_[0] ;
  wire \fdma_rleft_cnt_reg_n_0_[10] ;
  wire \fdma_rleft_cnt_reg_n_0_[11] ;
  wire \fdma_rleft_cnt_reg_n_0_[12] ;
  wire \fdma_rleft_cnt_reg_n_0_[13] ;
  wire \fdma_rleft_cnt_reg_n_0_[14] ;
  wire \fdma_rleft_cnt_reg_n_0_[15] ;
  wire \fdma_rleft_cnt_reg_n_0_[1] ;
  wire \fdma_rleft_cnt_reg_n_0_[2] ;
  wire \fdma_rleft_cnt_reg_n_0_[3] ;
  wire \fdma_rleft_cnt_reg_n_0_[4] ;
  wire \fdma_rleft_cnt_reg_n_0_[5] ;
  wire \fdma_rleft_cnt_reg_n_0_[6] ;
  wire \fdma_rleft_cnt_reg_n_0_[7] ;
  wire \fdma_rleft_cnt_reg_n_0_[8] ;
  wire \fdma_rleft_cnt_reg_n_0_[9] ;
  wire fdma_rready;
  wire [15:0]fdma_rsize;
  wire fdma_rstart_locked_i_1_n_0;
  wire fdma_rstart_locked_i_2_n_0;
  wire fdma_rstart_locked_i_3_n_0;
  wire fdma_rstart_locked_i_4_n_0;
  wire fdma_rstart_locked_i_5_n_0;
  wire fdma_rstart_locked_i_6_n_0;
  wire fdma_rstart_locked_reg_0;
  wire fdma_rvalid;
  wire [31:0]fdma_waddr;
  wire fdma_wareq;
  wire [15:0]fdma_wleft_cnt;
  wire fdma_wleft_cnt0_carry__0_i_1_n_0;
  wire fdma_wleft_cnt0_carry__0_i_2_n_0;
  wire fdma_wleft_cnt0_carry__0_i_3_n_0;
  wire fdma_wleft_cnt0_carry__0_i_4_n_0;
  wire fdma_wleft_cnt0_carry__0_n_0;
  wire fdma_wleft_cnt0_carry__0_n_1;
  wire fdma_wleft_cnt0_carry__0_n_2;
  wire fdma_wleft_cnt0_carry__0_n_3;
  wire fdma_wleft_cnt0_carry__1_i_1_n_0;
  wire fdma_wleft_cnt0_carry__1_i_2_n_0;
  wire fdma_wleft_cnt0_carry__1_i_3_n_0;
  wire fdma_wleft_cnt0_carry__1_i_4_n_0;
  wire fdma_wleft_cnt0_carry__1_n_0;
  wire fdma_wleft_cnt0_carry__1_n_1;
  wire fdma_wleft_cnt0_carry__1_n_2;
  wire fdma_wleft_cnt0_carry__1_n_3;
  wire fdma_wleft_cnt0_carry__2_i_1_n_0;
  wire fdma_wleft_cnt0_carry__2_i_2_n_0;
  wire fdma_wleft_cnt0_carry__2_i_3_n_0;
  wire fdma_wleft_cnt0_carry__2_i_4_n_0;
  wire fdma_wleft_cnt0_carry__2_n_1;
  wire fdma_wleft_cnt0_carry__2_n_2;
  wire fdma_wleft_cnt0_carry__2_n_3;
  wire fdma_wleft_cnt0_carry_i_1_n_0;
  wire fdma_wleft_cnt0_carry_i_2_n_0;
  wire fdma_wleft_cnt0_carry_i_3_n_0;
  wire fdma_wleft_cnt0_carry_i_4_n_0;
  wire fdma_wleft_cnt0_carry_n_0;
  wire fdma_wleft_cnt0_carry_n_1;
  wire fdma_wleft_cnt0_carry_n_2;
  wire fdma_wleft_cnt0_carry_n_3;
  wire \fdma_wleft_cnt[15]_i_1_n_0 ;
  wire \fdma_wleft_cnt_reg_n_0_[0] ;
  wire \fdma_wleft_cnt_reg_n_0_[1] ;
  wire \fdma_wleft_cnt_reg_n_0_[2] ;
  wire \fdma_wleft_cnt_reg_n_0_[3] ;
  wire \fdma_wleft_cnt_reg_n_0_[4] ;
  wire \fdma_wleft_cnt_reg_n_0_[5] ;
  wire fdma_wready;
  wire [15:0]fdma_wsize;
  wire fdma_wstart_locked1;
  wire fdma_wstart_locked_i_1_n_0;
  wire fdma_wstart_locked_i_2_n_0;
  wire fdma_wstart_locked_i_3_n_0;
  wire fdma_wstart_locked_i_4_n_0;
  wire fdma_wstart_locked_i_5_n_0;
  wire fdma_wstart_locked_i_6_n_0;
  wire fdma_wstart_locked_reg_0;
  wire fdma_wvalid;
  wire [8:0]p_0_in;
  wire [9:0]p_0_in_0;
  wire [8:0]p_0_in__0;
  wire \rburst_cnt[3]_i_1_n_0 ;
  wire \rburst_cnt[4]_i_1_n_0 ;
  wire \rburst_cnt[7]_i_2_n_0 ;
  wire \rburst_cnt[8]_i_3_n_0 ;
  wire [8:0]rburst_cnt_reg;
  wire \rburst_len[0]_i_1_n_0 ;
  wire \rburst_len[5]_i_1_n_0 ;
  wire \rburst_len[6]_i_1_n_0 ;
  wire rburst_len_req;
  wire \rfdma_cnt[0]_i_1_n_0 ;
  wire \rfdma_cnt[0]_i_3_n_0 ;
  wire [15:0]rfdma_cnt_reg;
  wire \rfdma_cnt_reg[0]_i_2_n_0 ;
  wire \rfdma_cnt_reg[0]_i_2_n_1 ;
  wire \rfdma_cnt_reg[0]_i_2_n_2 ;
  wire \rfdma_cnt_reg[0]_i_2_n_3 ;
  wire \rfdma_cnt_reg[0]_i_2_n_4 ;
  wire \rfdma_cnt_reg[0]_i_2_n_5 ;
  wire \rfdma_cnt_reg[0]_i_2_n_6 ;
  wire \rfdma_cnt_reg[0]_i_2_n_7 ;
  wire \rfdma_cnt_reg[12]_i_1_n_1 ;
  wire \rfdma_cnt_reg[12]_i_1_n_2 ;
  wire \rfdma_cnt_reg[12]_i_1_n_3 ;
  wire \rfdma_cnt_reg[12]_i_1_n_4 ;
  wire \rfdma_cnt_reg[12]_i_1_n_5 ;
  wire \rfdma_cnt_reg[12]_i_1_n_6 ;
  wire \rfdma_cnt_reg[12]_i_1_n_7 ;
  wire \rfdma_cnt_reg[4]_i_1_n_0 ;
  wire \rfdma_cnt_reg[4]_i_1_n_1 ;
  wire \rfdma_cnt_reg[4]_i_1_n_2 ;
  wire \rfdma_cnt_reg[4]_i_1_n_3 ;
  wire \rfdma_cnt_reg[4]_i_1_n_4 ;
  wire \rfdma_cnt_reg[4]_i_1_n_5 ;
  wire \rfdma_cnt_reg[4]_i_1_n_6 ;
  wire \rfdma_cnt_reg[4]_i_1_n_7 ;
  wire \rfdma_cnt_reg[8]_i_1_n_0 ;
  wire \rfdma_cnt_reg[8]_i_1_n_1 ;
  wire \rfdma_cnt_reg[8]_i_1_n_2 ;
  wire \rfdma_cnt_reg[8]_i_1_n_3 ;
  wire \rfdma_cnt_reg[8]_i_1_n_4 ;
  wire \rfdma_cnt_reg[8]_i_1_n_5 ;
  wire \rfdma_cnt_reg[8]_i_1_n_6 ;
  wire \rfdma_cnt_reg[8]_i_1_n_7 ;
  wire \wburst_cnt[3]_i_1_n_0 ;
  wire \wburst_cnt[4]_i_1_n_0 ;
  wire \wburst_cnt[7]_i_2_n_0 ;
  wire \wburst_cnt[8]_i_3_n_0 ;
  wire [8:0]wburst_cnt_reg;
  wire \wburst_len[0]_i_1_n_0 ;
  wire \wburst_len[5]_i_1_n_0 ;
  wire \wburst_len[6]_i_1_n_0 ;
  wire wburst_len_req;
  wire \wfdma_cnt[0]_i_1_n_0 ;
  wire \wfdma_cnt[0]_i_3_n_0 ;
  wire [15:0]wfdma_cnt_reg;
  wire \wfdma_cnt_reg[0]_i_2_n_0 ;
  wire \wfdma_cnt_reg[0]_i_2_n_1 ;
  wire \wfdma_cnt_reg[0]_i_2_n_2 ;
  wire \wfdma_cnt_reg[0]_i_2_n_3 ;
  wire \wfdma_cnt_reg[0]_i_2_n_4 ;
  wire \wfdma_cnt_reg[0]_i_2_n_5 ;
  wire \wfdma_cnt_reg[0]_i_2_n_6 ;
  wire \wfdma_cnt_reg[0]_i_2_n_7 ;
  wire \wfdma_cnt_reg[12]_i_1_n_1 ;
  wire \wfdma_cnt_reg[12]_i_1_n_2 ;
  wire \wfdma_cnt_reg[12]_i_1_n_3 ;
  wire \wfdma_cnt_reg[12]_i_1_n_4 ;
  wire \wfdma_cnt_reg[12]_i_1_n_5 ;
  wire \wfdma_cnt_reg[12]_i_1_n_6 ;
  wire \wfdma_cnt_reg[12]_i_1_n_7 ;
  wire \wfdma_cnt_reg[4]_i_1_n_0 ;
  wire \wfdma_cnt_reg[4]_i_1_n_1 ;
  wire \wfdma_cnt_reg[4]_i_1_n_2 ;
  wire \wfdma_cnt_reg[4]_i_1_n_3 ;
  wire \wfdma_cnt_reg[4]_i_1_n_4 ;
  wire \wfdma_cnt_reg[4]_i_1_n_5 ;
  wire \wfdma_cnt_reg[4]_i_1_n_6 ;
  wire \wfdma_cnt_reg[4]_i_1_n_7 ;
  wire \wfdma_cnt_reg[8]_i_1_n_0 ;
  wire \wfdma_cnt_reg[8]_i_1_n_1 ;
  wire \wfdma_cnt_reg[8]_i_1_n_2 ;
  wire \wfdma_cnt_reg[8]_i_1_n_3 ;
  wire \wfdma_cnt_reg[8]_i_1_n_4 ;
  wire \wfdma_cnt_reg[8]_i_1_n_5 ;
  wire \wfdma_cnt_reg[8]_i_1_n_6 ;
  wire \wfdma_cnt_reg[8]_i_1_n_7 ;
  wire [3:0]\NLW_axi_araddr_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_axi_araddr_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_axi_awaddr_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_axi_awaddr_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:3]NLW_axi_rlast0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_axi_rlast0_carry_O_UNCONNECTED;
  wire [3:3]NLW_axi_wlast0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_axi_wlast0_carry_O_UNCONNECTED;
  wire [3:3]NLW_fdma_rleft_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_fdma_wleft_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_rfdma_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_wfdma_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \M_AXI_ARLEN[0]_INST_0 
       (.I0(axi_rburst_size[4]),
        .O(M_AXI_ARLEN[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \M_AXI_ARLEN[1]_INST_0 
       (.I0(axi_rburst_size[5]),
        .I1(axi_rburst_size[4]),
        .O(M_AXI_ARLEN[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \M_AXI_ARLEN[2]_INST_0 
       (.I0(axi_rburst_size[4]),
        .I1(axi_rburst_size[5]),
        .I2(axi_rburst_size[6]),
        .O(M_AXI_ARLEN[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \M_AXI_ARLEN[3]_INST_0 
       (.I0(axi_rburst_size[6]),
        .I1(axi_rburst_size[5]),
        .I2(axi_rburst_size[4]),
        .I3(axi_rburst_size[7]),
        .O(M_AXI_ARLEN[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \M_AXI_ARLEN[4]_INST_0 
       (.I0(axi_rburst_size[7]),
        .I1(axi_rburst_size[4]),
        .I2(axi_rburst_size[5]),
        .I3(axi_rburst_size[6]),
        .I4(axi_rburst_size[8]),
        .O(M_AXI_ARLEN[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \M_AXI_ARLEN[5]_INST_0 
       (.I0(axi_rburst_size[8]),
        .I1(axi_rburst_size[6]),
        .I2(axi_rburst_size[5]),
        .I3(axi_rburst_size[4]),
        .I4(axi_rburst_size[7]),
        .I5(axi_rburst_size[9]),
        .O(M_AXI_ARLEN[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_ARLEN[6]_INST_0 
       (.I0(axi_rburst_size[10]),
        .I1(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ),
        .O(M_AXI_ARLEN[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \M_AXI_ARLEN[7]_INST_0 
       (.I0(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ),
        .I1(axi_rburst_size[10]),
        .O(M_AXI_ARLEN[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \M_AXI_ARLEN[7]_INST_0_i_1 
       (.I0(axi_rburst_size[9]),
        .I1(axi_rburst_size[7]),
        .I2(axi_rburst_size[4]),
        .I3(axi_rburst_size[5]),
        .I4(axi_rburst_size[6]),
        .I5(axi_rburst_size[8]),
        .O(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \M_AXI_AWLEN[0]_INST_0 
       (.I0(axi_wburst_size[4]),
        .O(M_AXI_AWLEN[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \M_AXI_AWLEN[1]_INST_0 
       (.I0(axi_wburst_size[5]),
        .I1(axi_wburst_size[4]),
        .O(M_AXI_AWLEN[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \M_AXI_AWLEN[2]_INST_0 
       (.I0(axi_wburst_size[4]),
        .I1(axi_wburst_size[5]),
        .I2(axi_wburst_size[6]),
        .O(M_AXI_AWLEN[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \M_AXI_AWLEN[3]_INST_0 
       (.I0(axi_wburst_size[6]),
        .I1(axi_wburst_size[5]),
        .I2(axi_wburst_size[4]),
        .I3(axi_wburst_size[7]),
        .O(M_AXI_AWLEN[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \M_AXI_AWLEN[4]_INST_0 
       (.I0(axi_wburst_size[7]),
        .I1(axi_wburst_size[4]),
        .I2(axi_wburst_size[5]),
        .I3(axi_wburst_size[6]),
        .I4(axi_wburst_size[8]),
        .O(M_AXI_AWLEN[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \M_AXI_AWLEN[5]_INST_0 
       (.I0(axi_wburst_size[8]),
        .I1(axi_wburst_size[6]),
        .I2(axi_wburst_size[5]),
        .I3(axi_wburst_size[4]),
        .I4(axi_wburst_size[7]),
        .I5(axi_wburst_size[9]),
        .O(M_AXI_AWLEN[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWLEN[6]_INST_0 
       (.I0(axi_wburst_size[10]),
        .I1(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .O(M_AXI_AWLEN[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \M_AXI_AWLEN[7]_INST_0 
       (.I0(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I1(axi_wburst_size[10]),
        .O(M_AXI_AWLEN[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \M_AXI_AWLEN[7]_INST_0_i_1 
       (.I0(axi_wburst_size[9]),
        .I1(axi_wburst_size[7]),
        .I2(axi_wburst_size[4]),
        .I3(axi_wburst_size[5]),
        .I4(axi_wburst_size[6]),
        .I5(axi_wburst_size[8]),
        .O(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    M_AXI_RREADY_INST_0
       (.I0(axi_rready),
        .I1(fdma_rready),
        .O(M_AXI_RREADY));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    M_AXI_WLAST_INST_0
       (.I0(axi_wlast0),
        .I1(M_AXI_WREADY),
        .I2(fdma_wready),
        .I3(axi_wvalid),
        .O(M_AXI_WLAST));
  LUT2 #(
    .INIT(4'h8)) 
    M_AXI_WVALID_INST_0
       (.I0(axi_wvalid),
        .I1(fdma_wready),
        .O(M_AXI_WVALID));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[0]_i_1 
       (.I0(fdma_raddr[0]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[0]),
        .O(\axi_araddr[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_araddr[10]_i_2 
       (.I0(axi_rburst_size[10]),
        .I1(fdma_rstart_locked_reg_0),
        .I2(fdma_rareq),
        .O(\axi_araddr[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_araddr[10]_i_3 
       (.I0(axi_rburst_size[9]),
        .I1(fdma_rstart_locked_reg_0),
        .I2(fdma_rareq),
        .O(\axi_araddr[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_araddr[10]_i_4 
       (.I0(axi_rburst_size[8]),
        .I1(fdma_rstart_locked_reg_0),
        .I2(fdma_rareq),
        .O(\axi_araddr[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_araddr[10]_i_5 
       (.I0(axi_rburst_size[7]),
        .I1(fdma_rstart_locked_reg_0),
        .I2(fdma_rareq),
        .O(\axi_araddr[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_araddr[10]_i_6 
       (.I0(axi_rburst_size[10]),
        .I1(M_AXI_ARADDR[10]),
        .I2(fdma_rstart_locked_reg_0),
        .I3(fdma_rareq),
        .I4(fdma_raddr[10]),
        .O(\axi_araddr[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_araddr[10]_i_7 
       (.I0(axi_rburst_size[9]),
        .I1(M_AXI_ARADDR[9]),
        .I2(fdma_rstart_locked_reg_0),
        .I3(fdma_rareq),
        .I4(fdma_raddr[9]),
        .O(\axi_araddr[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_araddr[10]_i_8 
       (.I0(axi_rburst_size[8]),
        .I1(M_AXI_ARADDR[8]),
        .I2(fdma_rstart_locked_reg_0),
        .I3(fdma_rareq),
        .I4(fdma_raddr[8]),
        .O(\axi_araddr[10]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_araddr[10]_i_9 
       (.I0(axi_rburst_size[7]),
        .I1(M_AXI_ARADDR[7]),
        .I2(fdma_rstart_locked_reg_0),
        .I3(fdma_rareq),
        .I4(fdma_raddr[7]),
        .O(\axi_araddr[10]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[14]_i_2 
       (.I0(fdma_raddr[14]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[14]),
        .O(\axi_araddr[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[14]_i_3 
       (.I0(fdma_raddr[13]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[13]),
        .O(\axi_araddr[14]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[14]_i_4 
       (.I0(fdma_raddr[12]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[12]),
        .O(\axi_araddr[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[14]_i_5 
       (.I0(fdma_raddr[11]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[11]),
        .O(\axi_araddr[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[18]_i_2 
       (.I0(fdma_raddr[18]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[18]),
        .O(\axi_araddr[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[18]_i_3 
       (.I0(fdma_raddr[17]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[17]),
        .O(\axi_araddr[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[18]_i_4 
       (.I0(fdma_raddr[16]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[16]),
        .O(\axi_araddr[18]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[18]_i_5 
       (.I0(fdma_raddr[15]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[15]),
        .O(\axi_araddr[18]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[1]_i_1 
       (.I0(fdma_raddr[1]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[1]),
        .O(\axi_araddr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[22]_i_2 
       (.I0(fdma_raddr[22]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[22]),
        .O(\axi_araddr[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[22]_i_3 
       (.I0(fdma_raddr[21]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[21]),
        .O(\axi_araddr[22]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[22]_i_4 
       (.I0(fdma_raddr[20]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[20]),
        .O(\axi_araddr[22]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[22]_i_5 
       (.I0(fdma_raddr[19]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[19]),
        .O(\axi_araddr[22]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[26]_i_2 
       (.I0(fdma_raddr[26]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[26]),
        .O(\axi_araddr[26]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[26]_i_3 
       (.I0(fdma_raddr[25]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[25]),
        .O(\axi_araddr[26]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[26]_i_4 
       (.I0(fdma_raddr[24]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[24]),
        .O(\axi_araddr[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[26]_i_5 
       (.I0(fdma_raddr[23]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[23]),
        .O(\axi_araddr[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(fdma_raddr[2]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[30]_i_2 
       (.I0(fdma_raddr[30]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[30]),
        .O(\axi_araddr[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[30]_i_3 
       (.I0(fdma_raddr[29]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[29]),
        .O(\axi_araddr[30]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[30]_i_4 
       (.I0(fdma_raddr[28]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[28]),
        .O(\axi_araddr[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[30]_i_5 
       (.I0(fdma_raddr[27]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[27]),
        .O(\axi_araddr[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    \axi_araddr[31]_i_1 
       (.I0(fdma_rstart_locked_reg_0),
        .I1(fdma_rareq),
        .I2(axi_rready),
        .I3(fdma_rready),
        .I4(M_AXI_RVALID),
        .I5(axi_rlast0),
        .O(\axi_araddr[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[31]_i_3 
       (.I0(fdma_raddr[31]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[31]),
        .O(\axi_araddr[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_araddr[6]_i_2 
       (.I0(axi_rburst_size[6]),
        .I1(fdma_rstart_locked_reg_0),
        .I2(fdma_rareq),
        .O(\axi_araddr[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_araddr[6]_i_3 
       (.I0(axi_rburst_size[5]),
        .I1(fdma_rstart_locked_reg_0),
        .I2(fdma_rareq),
        .O(\axi_araddr[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_araddr[6]_i_4 
       (.I0(axi_rburst_size[4]),
        .I1(fdma_rstart_locked_reg_0),
        .I2(fdma_rareq),
        .O(\axi_araddr[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_araddr[6]_i_5 
       (.I0(axi_rburst_size[6]),
        .I1(M_AXI_ARADDR[6]),
        .I2(fdma_rstart_locked_reg_0),
        .I3(fdma_rareq),
        .I4(fdma_raddr[6]),
        .O(\axi_araddr[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_araddr[6]_i_6 
       (.I0(axi_rburst_size[5]),
        .I1(M_AXI_ARADDR[5]),
        .I2(fdma_rstart_locked_reg_0),
        .I3(fdma_rareq),
        .I4(fdma_raddr[5]),
        .O(\axi_araddr[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_araddr[6]_i_7 
       (.I0(axi_rburst_size[4]),
        .I1(M_AXI_ARADDR[4]),
        .I2(fdma_rstart_locked_reg_0),
        .I3(fdma_rareq),
        .I4(fdma_raddr[4]),
        .O(\axi_araddr[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[6]_i_8 
       (.I0(fdma_raddr[3]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(M_AXI_ARADDR[3]),
        .O(\axi_araddr[6]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr[0]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[0]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[10]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[10]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[10]_i_1 
       (.CI(\axi_araddr_reg[6]_i_1_n_0 ),
        .CO({\axi_araddr_reg[10]_i_1_n_0 ,\axi_araddr_reg[10]_i_1_n_1 ,\axi_araddr_reg[10]_i_1_n_2 ,\axi_araddr_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\axi_araddr[10]_i_2_n_0 ,\axi_araddr[10]_i_3_n_0 ,\axi_araddr[10]_i_4_n_0 ,\axi_araddr[10]_i_5_n_0 }),
        .O({\axi_araddr_reg[10]_i_1_n_4 ,\axi_araddr_reg[10]_i_1_n_5 ,\axi_araddr_reg[10]_i_1_n_6 ,\axi_araddr_reg[10]_i_1_n_7 }),
        .S({\axi_araddr[10]_i_6_n_0 ,\axi_araddr[10]_i_7_n_0 ,\axi_araddr[10]_i_8_n_0 ,\axi_araddr[10]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[14]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[11]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[14]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[12]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[14]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[13]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[14]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[14]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[14]_i_1 
       (.CI(\axi_araddr_reg[10]_i_1_n_0 ),
        .CO({\axi_araddr_reg[14]_i_1_n_0 ,\axi_araddr_reg[14]_i_1_n_1 ,\axi_araddr_reg[14]_i_1_n_2 ,\axi_araddr_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[14]_i_1_n_4 ,\axi_araddr_reg[14]_i_1_n_5 ,\axi_araddr_reg[14]_i_1_n_6 ,\axi_araddr_reg[14]_i_1_n_7 }),
        .S({\axi_araddr[14]_i_2_n_0 ,\axi_araddr[14]_i_3_n_0 ,\axi_araddr[14]_i_4_n_0 ,\axi_araddr[14]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[18]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[15]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[18]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[16]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[18]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[17]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[18]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[18]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[18]_i_1 
       (.CI(\axi_araddr_reg[14]_i_1_n_0 ),
        .CO({\axi_araddr_reg[18]_i_1_n_0 ,\axi_araddr_reg[18]_i_1_n_1 ,\axi_araddr_reg[18]_i_1_n_2 ,\axi_araddr_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[18]_i_1_n_4 ,\axi_araddr_reg[18]_i_1_n_5 ,\axi_araddr_reg[18]_i_1_n_6 ,\axi_araddr_reg[18]_i_1_n_7 }),
        .S({\axi_araddr[18]_i_2_n_0 ,\axi_araddr[18]_i_3_n_0 ,\axi_araddr[18]_i_4_n_0 ,\axi_araddr[18]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[22]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[19]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr[1]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[1]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[22]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[20]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[22]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[21]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[22]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[22]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[22]_i_1 
       (.CI(\axi_araddr_reg[18]_i_1_n_0 ),
        .CO({\axi_araddr_reg[22]_i_1_n_0 ,\axi_araddr_reg[22]_i_1_n_1 ,\axi_araddr_reg[22]_i_1_n_2 ,\axi_araddr_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[22]_i_1_n_4 ,\axi_araddr_reg[22]_i_1_n_5 ,\axi_araddr_reg[22]_i_1_n_6 ,\axi_araddr_reg[22]_i_1_n_7 }),
        .S({\axi_araddr[22]_i_2_n_0 ,\axi_araddr[22]_i_3_n_0 ,\axi_araddr[22]_i_4_n_0 ,\axi_araddr[22]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[26]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[23]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[26]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[24]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[26]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[25]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[26]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[26]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[26]_i_1 
       (.CI(\axi_araddr_reg[22]_i_1_n_0 ),
        .CO({\axi_araddr_reg[26]_i_1_n_0 ,\axi_araddr_reg[26]_i_1_n_1 ,\axi_araddr_reg[26]_i_1_n_2 ,\axi_araddr_reg[26]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[26]_i_1_n_4 ,\axi_araddr_reg[26]_i_1_n_5 ,\axi_araddr_reg[26]_i_1_n_6 ,\axi_araddr_reg[26]_i_1_n_7 }),
        .S({\axi_araddr[26]_i_2_n_0 ,\axi_araddr[26]_i_3_n_0 ,\axi_araddr[26]_i_4_n_0 ,\axi_araddr[26]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[30]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[27]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[30]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[28]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[30]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[29]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[2]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[30]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[30]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[30]_i_1 
       (.CI(\axi_araddr_reg[26]_i_1_n_0 ),
        .CO({\axi_araddr_reg[30]_i_1_n_0 ,\axi_araddr_reg[30]_i_1_n_1 ,\axi_araddr_reg[30]_i_1_n_2 ,\axi_araddr_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[30]_i_1_n_4 ,\axi_araddr_reg[30]_i_1_n_5 ,\axi_araddr_reg[30]_i_1_n_6 ,\axi_araddr_reg[30]_i_1_n_7 }),
        .S({\axi_araddr[30]_i_2_n_0 ,\axi_araddr[30]_i_3_n_0 ,\axi_araddr[30]_i_4_n_0 ,\axi_araddr[30]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[31]_i_2_n_7 ),
        .Q(M_AXI_ARADDR[31]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[31]_i_2 
       (.CI(\axi_araddr_reg[30]_i_1_n_0 ),
        .CO(\NLW_axi_araddr_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_araddr_reg[31]_i_2_O_UNCONNECTED [3:1],\axi_araddr_reg[31]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b0,\axi_araddr[31]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[6]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[3]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[6]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[4]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[6]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[5]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[6]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[6]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_araddr_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\axi_araddr_reg[6]_i_1_n_0 ,\axi_araddr_reg[6]_i_1_n_1 ,\axi_araddr_reg[6]_i_1_n_2 ,\axi_araddr_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\axi_araddr[6]_i_2_n_0 ,\axi_araddr[6]_i_3_n_0 ,\axi_araddr[6]_i_4_n_0 ,1'b0}),
        .O({\axi_araddr_reg[6]_i_1_n_4 ,\axi_araddr_reg[6]_i_1_n_5 ,\axi_araddr_reg[6]_i_1_n_6 ,\axi_araddr_reg[6]_i_1_n_7 }),
        .S({\axi_araddr[6]_i_5_n_0 ,\axi_araddr[6]_i_6_n_0 ,\axi_araddr[6]_i_7_n_0 ,\axi_araddr[6]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[10]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[7]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[10]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[8]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(\axi_araddr_reg[10]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[9]),
        .R(fdma_wstart_locked1));
  LUT5 #(
    .INIT(32'h44F400F0)) 
    axi_arvalid_i_1
       (.I0(M_AXI_ARREADY),
        .I1(axi_rstart_locked),
        .I2(axi_rstart_locked_r1),
        .I3(axi_rstart_locked_r2),
        .I4(M_AXI_ARVALID),
        .O(axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(M_AXI_ARVALID),
        .R(fdma_wstart_locked1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[0]_i_1 
       (.I0(fdma_waddr[0]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[0]),
        .O(\axi_awaddr[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_awaddr[10]_i_2 
       (.I0(axi_wburst_size[10]),
        .I1(fdma_wstart_locked_reg_0),
        .I2(fdma_wareq),
        .O(\axi_awaddr[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_awaddr[10]_i_3 
       (.I0(axi_wburst_size[9]),
        .I1(fdma_wstart_locked_reg_0),
        .I2(fdma_wareq),
        .O(\axi_awaddr[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_awaddr[10]_i_4 
       (.I0(axi_wburst_size[8]),
        .I1(fdma_wstart_locked_reg_0),
        .I2(fdma_wareq),
        .O(\axi_awaddr[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_awaddr[10]_i_5 
       (.I0(axi_wburst_size[7]),
        .I1(fdma_wstart_locked_reg_0),
        .I2(fdma_wareq),
        .O(\axi_awaddr[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_awaddr[10]_i_6 
       (.I0(axi_wburst_size[10]),
        .I1(M_AXI_AWADDR[10]),
        .I2(fdma_wstart_locked_reg_0),
        .I3(fdma_wareq),
        .I4(fdma_waddr[10]),
        .O(\axi_awaddr[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_awaddr[10]_i_7 
       (.I0(axi_wburst_size[9]),
        .I1(M_AXI_AWADDR[9]),
        .I2(fdma_wstart_locked_reg_0),
        .I3(fdma_wareq),
        .I4(fdma_waddr[9]),
        .O(\axi_awaddr[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_awaddr[10]_i_8 
       (.I0(axi_wburst_size[8]),
        .I1(M_AXI_AWADDR[8]),
        .I2(fdma_wstart_locked_reg_0),
        .I3(fdma_wareq),
        .I4(fdma_waddr[8]),
        .O(\axi_awaddr[10]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_awaddr[10]_i_9 
       (.I0(axi_wburst_size[7]),
        .I1(M_AXI_AWADDR[7]),
        .I2(fdma_wstart_locked_reg_0),
        .I3(fdma_wareq),
        .I4(fdma_waddr[7]),
        .O(\axi_awaddr[10]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[14]_i_2 
       (.I0(fdma_waddr[14]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[14]),
        .O(\axi_awaddr[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[14]_i_3 
       (.I0(fdma_waddr[13]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[13]),
        .O(\axi_awaddr[14]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[14]_i_4 
       (.I0(fdma_waddr[12]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[12]),
        .O(\axi_awaddr[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[14]_i_5 
       (.I0(fdma_waddr[11]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[11]),
        .O(\axi_awaddr[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[18]_i_2 
       (.I0(fdma_waddr[18]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[18]),
        .O(\axi_awaddr[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[18]_i_3 
       (.I0(fdma_waddr[17]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[17]),
        .O(\axi_awaddr[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[18]_i_4 
       (.I0(fdma_waddr[16]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[16]),
        .O(\axi_awaddr[18]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[18]_i_5 
       (.I0(fdma_waddr[15]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[15]),
        .O(\axi_awaddr[18]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[1]_i_1 
       (.I0(fdma_waddr[1]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[1]),
        .O(\axi_awaddr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[22]_i_2 
       (.I0(fdma_waddr[22]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[22]),
        .O(\axi_awaddr[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[22]_i_3 
       (.I0(fdma_waddr[21]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[21]),
        .O(\axi_awaddr[22]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[22]_i_4 
       (.I0(fdma_waddr[20]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[20]),
        .O(\axi_awaddr[22]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[22]_i_5 
       (.I0(fdma_waddr[19]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[19]),
        .O(\axi_awaddr[22]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[26]_i_2 
       (.I0(fdma_waddr[26]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[26]),
        .O(\axi_awaddr[26]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[26]_i_3 
       (.I0(fdma_waddr[25]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[25]),
        .O(\axi_awaddr[26]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[26]_i_4 
       (.I0(fdma_waddr[24]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[24]),
        .O(\axi_awaddr[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[26]_i_5 
       (.I0(fdma_waddr[23]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[23]),
        .O(\axi_awaddr[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[2]_i_1 
       (.I0(fdma_waddr[2]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[30]_i_2 
       (.I0(fdma_waddr[30]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[30]),
        .O(\axi_awaddr[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[30]_i_3 
       (.I0(fdma_waddr[29]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[29]),
        .O(\axi_awaddr[30]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[30]_i_4 
       (.I0(fdma_waddr[28]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[28]),
        .O(\axi_awaddr[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[30]_i_5 
       (.I0(fdma_waddr[27]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[27]),
        .O(\axi_awaddr[30]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awaddr[31]_i_1 
       (.I0(M_AXI_ARESETN),
        .O(fdma_wstart_locked1));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    \axi_awaddr[31]_i_2 
       (.I0(fdma_wstart_locked_reg_0),
        .I1(fdma_wareq),
        .I2(axi_wvalid),
        .I3(fdma_wready),
        .I4(M_AXI_WREADY),
        .I5(axi_wlast0),
        .O(\axi_awaddr[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[31]_i_4 
       (.I0(fdma_waddr[31]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[31]),
        .O(\axi_awaddr[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_awaddr[6]_i_2 
       (.I0(axi_wburst_size[6]),
        .I1(fdma_wstart_locked_reg_0),
        .I2(fdma_wareq),
        .O(\axi_awaddr[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_awaddr[6]_i_3 
       (.I0(axi_wburst_size[5]),
        .I1(fdma_wstart_locked_reg_0),
        .I2(fdma_wareq),
        .O(\axi_awaddr[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \axi_awaddr[6]_i_4 
       (.I0(axi_wburst_size[4]),
        .I1(fdma_wstart_locked_reg_0),
        .I2(fdma_wareq),
        .O(\axi_awaddr[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_awaddr[6]_i_5 
       (.I0(axi_wburst_size[6]),
        .I1(M_AXI_AWADDR[6]),
        .I2(fdma_wstart_locked_reg_0),
        .I3(fdma_wareq),
        .I4(fdma_waddr[6]),
        .O(\axi_awaddr[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_awaddr[6]_i_6 
       (.I0(axi_wburst_size[5]),
        .I1(M_AXI_AWADDR[5]),
        .I2(fdma_wstart_locked_reg_0),
        .I3(fdma_wareq),
        .I4(fdma_waddr[5]),
        .O(\axi_awaddr[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h6F666066)) 
    \axi_awaddr[6]_i_7 
       (.I0(axi_wburst_size[4]),
        .I1(M_AXI_AWADDR[4]),
        .I2(fdma_wstart_locked_reg_0),
        .I3(fdma_wareq),
        .I4(fdma_waddr[4]),
        .O(\axi_awaddr[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_awaddr[6]_i_8 
       (.I0(fdma_waddr[3]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(M_AXI_AWADDR[3]),
        .O(\axi_awaddr[6]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr[0]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[0]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[10]_i_1_n_4 ),
        .Q(M_AXI_AWADDR[10]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[10]_i_1 
       (.CI(\axi_awaddr_reg[6]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[10]_i_1_n_0 ,\axi_awaddr_reg[10]_i_1_n_1 ,\axi_awaddr_reg[10]_i_1_n_2 ,\axi_awaddr_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\axi_awaddr[10]_i_2_n_0 ,\axi_awaddr[10]_i_3_n_0 ,\axi_awaddr[10]_i_4_n_0 ,\axi_awaddr[10]_i_5_n_0 }),
        .O({\axi_awaddr_reg[10]_i_1_n_4 ,\axi_awaddr_reg[10]_i_1_n_5 ,\axi_awaddr_reg[10]_i_1_n_6 ,\axi_awaddr_reg[10]_i_1_n_7 }),
        .S({\axi_awaddr[10]_i_6_n_0 ,\axi_awaddr[10]_i_7_n_0 ,\axi_awaddr[10]_i_8_n_0 ,\axi_awaddr[10]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[14]_i_1_n_7 ),
        .Q(M_AXI_AWADDR[11]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[14]_i_1_n_6 ),
        .Q(M_AXI_AWADDR[12]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[14]_i_1_n_5 ),
        .Q(M_AXI_AWADDR[13]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[14]_i_1_n_4 ),
        .Q(M_AXI_AWADDR[14]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[14]_i_1 
       (.CI(\axi_awaddr_reg[10]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[14]_i_1_n_0 ,\axi_awaddr_reg[14]_i_1_n_1 ,\axi_awaddr_reg[14]_i_1_n_2 ,\axi_awaddr_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[14]_i_1_n_4 ,\axi_awaddr_reg[14]_i_1_n_5 ,\axi_awaddr_reg[14]_i_1_n_6 ,\axi_awaddr_reg[14]_i_1_n_7 }),
        .S({\axi_awaddr[14]_i_2_n_0 ,\axi_awaddr[14]_i_3_n_0 ,\axi_awaddr[14]_i_4_n_0 ,\axi_awaddr[14]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[18]_i_1_n_7 ),
        .Q(M_AXI_AWADDR[15]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[18]_i_1_n_6 ),
        .Q(M_AXI_AWADDR[16]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[18]_i_1_n_5 ),
        .Q(M_AXI_AWADDR[17]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[18]_i_1_n_4 ),
        .Q(M_AXI_AWADDR[18]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[18]_i_1 
       (.CI(\axi_awaddr_reg[14]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[18]_i_1_n_0 ,\axi_awaddr_reg[18]_i_1_n_1 ,\axi_awaddr_reg[18]_i_1_n_2 ,\axi_awaddr_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[18]_i_1_n_4 ,\axi_awaddr_reg[18]_i_1_n_5 ,\axi_awaddr_reg[18]_i_1_n_6 ,\axi_awaddr_reg[18]_i_1_n_7 }),
        .S({\axi_awaddr[18]_i_2_n_0 ,\axi_awaddr[18]_i_3_n_0 ,\axi_awaddr[18]_i_4_n_0 ,\axi_awaddr[18]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[22]_i_1_n_7 ),
        .Q(M_AXI_AWADDR[19]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr[1]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[1]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[22]_i_1_n_6 ),
        .Q(M_AXI_AWADDR[20]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[22]_i_1_n_5 ),
        .Q(M_AXI_AWADDR[21]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[22]_i_1_n_4 ),
        .Q(M_AXI_AWADDR[22]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[22]_i_1 
       (.CI(\axi_awaddr_reg[18]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[22]_i_1_n_0 ,\axi_awaddr_reg[22]_i_1_n_1 ,\axi_awaddr_reg[22]_i_1_n_2 ,\axi_awaddr_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[22]_i_1_n_4 ,\axi_awaddr_reg[22]_i_1_n_5 ,\axi_awaddr_reg[22]_i_1_n_6 ,\axi_awaddr_reg[22]_i_1_n_7 }),
        .S({\axi_awaddr[22]_i_2_n_0 ,\axi_awaddr[22]_i_3_n_0 ,\axi_awaddr[22]_i_4_n_0 ,\axi_awaddr[22]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[26]_i_1_n_7 ),
        .Q(M_AXI_AWADDR[23]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[26]_i_1_n_6 ),
        .Q(M_AXI_AWADDR[24]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[26]_i_1_n_5 ),
        .Q(M_AXI_AWADDR[25]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[26]_i_1_n_4 ),
        .Q(M_AXI_AWADDR[26]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[26]_i_1 
       (.CI(\axi_awaddr_reg[22]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[26]_i_1_n_0 ,\axi_awaddr_reg[26]_i_1_n_1 ,\axi_awaddr_reg[26]_i_1_n_2 ,\axi_awaddr_reg[26]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[26]_i_1_n_4 ,\axi_awaddr_reg[26]_i_1_n_5 ,\axi_awaddr_reg[26]_i_1_n_6 ,\axi_awaddr_reg[26]_i_1_n_7 }),
        .S({\axi_awaddr[26]_i_2_n_0 ,\axi_awaddr[26]_i_3_n_0 ,\axi_awaddr[26]_i_4_n_0 ,\axi_awaddr[26]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[30]_i_1_n_7 ),
        .Q(M_AXI_AWADDR[27]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[30]_i_1_n_6 ),
        .Q(M_AXI_AWADDR[28]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[30]_i_1_n_5 ),
        .Q(M_AXI_AWADDR[29]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[2]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[30]_i_1_n_4 ),
        .Q(M_AXI_AWADDR[30]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[30]_i_1 
       (.CI(\axi_awaddr_reg[26]_i_1_n_0 ),
        .CO({\axi_awaddr_reg[30]_i_1_n_0 ,\axi_awaddr_reg[30]_i_1_n_1 ,\axi_awaddr_reg[30]_i_1_n_2 ,\axi_awaddr_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[30]_i_1_n_4 ,\axi_awaddr_reg[30]_i_1_n_5 ,\axi_awaddr_reg[30]_i_1_n_6 ,\axi_awaddr_reg[30]_i_1_n_7 }),
        .S({\axi_awaddr[30]_i_2_n_0 ,\axi_awaddr[30]_i_3_n_0 ,\axi_awaddr[30]_i_4_n_0 ,\axi_awaddr[30]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[31]_i_3_n_7 ),
        .Q(M_AXI_AWADDR[31]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[31]_i_3 
       (.CI(\axi_awaddr_reg[30]_i_1_n_0 ),
        .CO(\NLW_axi_awaddr_reg[31]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_awaddr_reg[31]_i_3_O_UNCONNECTED [3:1],\axi_awaddr_reg[31]_i_3_n_7 }),
        .S({1'b0,1'b0,1'b0,\axi_awaddr[31]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[6]_i_1_n_7 ),
        .Q(M_AXI_AWADDR[3]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[6]_i_1_n_6 ),
        .Q(M_AXI_AWADDR[4]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[6]_i_1_n_5 ),
        .Q(M_AXI_AWADDR[5]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[6]_i_1_n_4 ),
        .Q(M_AXI_AWADDR[6]),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \axi_awaddr_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\axi_awaddr_reg[6]_i_1_n_0 ,\axi_awaddr_reg[6]_i_1_n_1 ,\axi_awaddr_reg[6]_i_1_n_2 ,\axi_awaddr_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\axi_awaddr[6]_i_2_n_0 ,\axi_awaddr[6]_i_3_n_0 ,\axi_awaddr[6]_i_4_n_0 ,1'b0}),
        .O({\axi_awaddr_reg[6]_i_1_n_4 ,\axi_awaddr_reg[6]_i_1_n_5 ,\axi_awaddr_reg[6]_i_1_n_6 ,\axi_awaddr_reg[6]_i_1_n_7 }),
        .S({\axi_awaddr[6]_i_5_n_0 ,\axi_awaddr[6]_i_6_n_0 ,\axi_awaddr[6]_i_7_n_0 ,\axi_awaddr[6]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[10]_i_1_n_7 ),
        .Q(M_AXI_AWADDR[7]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[10]_i_1_n_6 ),
        .Q(M_AXI_AWADDR[8]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(\axi_awaddr_reg[10]_i_1_n_5 ),
        .Q(M_AXI_AWADDR[9]),
        .R(fdma_wstart_locked1));
  LUT5 #(
    .INIT(32'h44F400F0)) 
    axi_awvalid_i_1
       (.I0(M_AXI_AWREADY),
        .I1(axi_wstart_locked),
        .I2(axi_wstart_locked_r1),
        .I3(axi_wstart_locked_r2),
        .I4(M_AXI_AWVALID),
        .O(axi_awvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awvalid_i_1_n_0),
        .Q(M_AXI_AWVALID),
        .R(fdma_wstart_locked1));
  CARRY4 axi_rlast0_carry
       (.CI(1'b0),
        .CO({NLW_axi_rlast0_carry_CO_UNCONNECTED[3],axi_rlast0,axi_rlast0_carry_n_2,axi_rlast0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axi_rlast0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,axi_rlast0_carry_i_1_n_0,axi_rlast0_carry_i_2_n_0,axi_rlast0_carry_i_3_n_0}));
  LUT5 #(
    .INIT(32'h02101001)) 
    axi_rlast0_carry_i_1
       (.I0(rburst_cnt_reg[7]),
        .I1(rburst_cnt_reg[8]),
        .I2(axi_rburst_size[10]),
        .I3(\M_AXI_ARLEN[7]_INST_0_i_1_n_0 ),
        .I4(rburst_cnt_reg[6]),
        .O(axi_rlast0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0660000000000660)) 
    axi_rlast0_carry_i_2
       (.I0(rburst_cnt_reg[4]),
        .I1(axi_rlast0_carry_i_4_n_0),
        .I2(rburst_cnt_reg[3]),
        .I3(axi_rlast0_carry_i_5_n_0),
        .I4(M_AXI_ARLEN[5]),
        .I5(rburst_cnt_reg[5]),
        .O(axi_rlast0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000096090090000)) 
    axi_rlast0_carry_i_3
       (.I0(axi_rburst_size[6]),
        .I1(rburst_cnt_reg[2]),
        .I2(rburst_cnt_reg[1]),
        .I3(axi_rburst_size[5]),
        .I4(axi_rburst_size[4]),
        .I5(rburst_cnt_reg[0]),
        .O(axi_rlast0_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    axi_rlast0_carry_i_4
       (.I0(axi_rburst_size[8]),
        .I1(axi_rburst_size[6]),
        .I2(axi_rburst_size[5]),
        .I3(axi_rburst_size[4]),
        .I4(axi_rburst_size[7]),
        .O(axi_rlast0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    axi_rlast0_carry_i_5
       (.I0(axi_rburst_size[7]),
        .I1(axi_rburst_size[4]),
        .I2(axi_rburst_size[5]),
        .I3(axi_rburst_size[6]),
        .O(axi_rlast0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hB0B0FFB00000FF00)) 
    axi_rready_i_1
       (.I0(fdma_rstart_locked_i_2_n_0),
        .I1(axi_rlast0),
        .I2(axi_rstart_locked),
        .I3(axi_rstart_locked_r1),
        .I4(axi_rstart_locked_r2),
        .I5(axi_rready),
        .O(axi_rready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(axi_rready),
        .R(fdma_wstart_locked1));
  LUT5 #(
    .INIT(32'hF7F700A2)) 
    axi_rstart_locked_i_1
       (.I0(axi_rstart_locked),
        .I1(axi_rlast0),
        .I2(fdma_rstart_locked_i_2_n_0),
        .I3(fdma_rareq),
        .I4(fdma_rstart_locked_reg_0),
        .O(axi_rstart_locked_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rstart_locked_r1_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rstart_locked),
        .Q(axi_rstart_locked_r1),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    axi_rstart_locked_r2_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rstart_locked_r1),
        .Q(axi_rstart_locked_r2),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    axi_rstart_locked_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rstart_locked_i_1_n_0),
        .Q(axi_rstart_locked),
        .R(fdma_wstart_locked1));
  CARRY4 axi_wlast0_carry
       (.CI(1'b0),
        .CO({NLW_axi_wlast0_carry_CO_UNCONNECTED[3],axi_wlast0,axi_wlast0_carry_n_2,axi_wlast0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axi_wlast0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,axi_wlast0_carry_i_1_n_0,axi_wlast0_carry_i_2_n_0,axi_wlast0_carry_i_3_n_0}));
  LUT5 #(
    .INIT(32'h02101001)) 
    axi_wlast0_carry_i_1
       (.I0(wburst_cnt_reg[7]),
        .I1(wburst_cnt_reg[8]),
        .I2(axi_wburst_size[10]),
        .I3(\M_AXI_AWLEN[7]_INST_0_i_1_n_0 ),
        .I4(wburst_cnt_reg[6]),
        .O(axi_wlast0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0660000000000660)) 
    axi_wlast0_carry_i_2
       (.I0(wburst_cnt_reg[4]),
        .I1(axi_wlast0_carry_i_4_n_0),
        .I2(wburst_cnt_reg[3]),
        .I3(axi_wlast0_carry_i_5_n_0),
        .I4(M_AXI_AWLEN[5]),
        .I5(wburst_cnt_reg[5]),
        .O(axi_wlast0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000096090090000)) 
    axi_wlast0_carry_i_3
       (.I0(axi_wburst_size[6]),
        .I1(wburst_cnt_reg[2]),
        .I2(wburst_cnt_reg[1]),
        .I3(axi_wburst_size[5]),
        .I4(axi_wburst_size[4]),
        .I5(wburst_cnt_reg[0]),
        .O(axi_wlast0_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    axi_wlast0_carry_i_4
       (.I0(axi_wburst_size[8]),
        .I1(axi_wburst_size[6]),
        .I2(axi_wburst_size[5]),
        .I3(axi_wburst_size[4]),
        .I4(axi_wburst_size[7]),
        .O(axi_wlast0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    axi_wlast0_carry_i_5
       (.I0(axi_wburst_size[7]),
        .I1(axi_wburst_size[4]),
        .I2(axi_wburst_size[5]),
        .I3(axi_wburst_size[6]),
        .O(axi_wlast0_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'hF7F700A2)) 
    axi_wstart_locked_i_1
       (.I0(axi_wstart_locked),
        .I1(axi_wlast0),
        .I2(fdma_wstart_locked_i_2_n_0),
        .I3(fdma_wareq),
        .I4(fdma_wstart_locked_reg_0),
        .O(axi_wstart_locked_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wstart_locked_r1_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wstart_locked),
        .Q(axi_wstart_locked_r1),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    axi_wstart_locked_r2_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wstart_locked_r1),
        .Q(axi_wstart_locked_r2),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    axi_wstart_locked_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wstart_locked_i_1_n_0),
        .Q(axi_wstart_locked),
        .R(fdma_wstart_locked1));
  LUT6 #(
    .INIT(64'hB0B0FFB00000FF00)) 
    axi_wvalid_i_1
       (.I0(fdma_wstart_locked_i_2_n_0),
        .I1(axi_wlast0),
        .I2(axi_wstart_locked),
        .I3(axi_wstart_locked_r1),
        .I4(axi_wstart_locked_r2),
        .I5(axi_wvalid),
        .O(axi_wvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(axi_wvalid),
        .R(fdma_wstart_locked1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fdma_rleft_cnt0_carry
       (.CI(1'b0),
        .CO({fdma_rleft_cnt0_carry_n_0,fdma_rleft_cnt0_carry_n_1,fdma_rleft_cnt0_carry_n_2,fdma_rleft_cnt0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(fdma_rsize[3:0]),
        .O(fdma_rleft_cnt[3:0]),
        .S({fdma_rleft_cnt0_carry_i_1_n_0,fdma_rleft_cnt0_carry_i_2_n_0,fdma_rleft_cnt0_carry_i_3_n_0,fdma_rleft_cnt0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fdma_rleft_cnt0_carry__0
       (.CI(fdma_rleft_cnt0_carry_n_0),
        .CO({fdma_rleft_cnt0_carry__0_n_0,fdma_rleft_cnt0_carry__0_n_1,fdma_rleft_cnt0_carry__0_n_2,fdma_rleft_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(fdma_rsize[7:4]),
        .O(fdma_rleft_cnt[7:4]),
        .S({fdma_rleft_cnt0_carry__0_i_1_n_0,fdma_rleft_cnt0_carry__0_i_2_n_0,fdma_rleft_cnt0_carry__0_i_3_n_0,fdma_rleft_cnt0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry__0_i_1
       (.I0(fdma_rsize[7]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[7]),
        .O(fdma_rleft_cnt0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry__0_i_2
       (.I0(fdma_rsize[6]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[6]),
        .O(fdma_rleft_cnt0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry__0_i_3
       (.I0(fdma_rsize[5]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[5]),
        .O(fdma_rleft_cnt0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry__0_i_4
       (.I0(fdma_rsize[4]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[4]),
        .O(fdma_rleft_cnt0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fdma_rleft_cnt0_carry__1
       (.CI(fdma_rleft_cnt0_carry__0_n_0),
        .CO({fdma_rleft_cnt0_carry__1_n_0,fdma_rleft_cnt0_carry__1_n_1,fdma_rleft_cnt0_carry__1_n_2,fdma_rleft_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(fdma_rsize[11:8]),
        .O(fdma_rleft_cnt[11:8]),
        .S({fdma_rleft_cnt0_carry__1_i_1_n_0,fdma_rleft_cnt0_carry__1_i_2_n_0,fdma_rleft_cnt0_carry__1_i_3_n_0,fdma_rleft_cnt0_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry__1_i_1
       (.I0(fdma_rsize[11]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[11]),
        .O(fdma_rleft_cnt0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry__1_i_2
       (.I0(fdma_rsize[10]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[10]),
        .O(fdma_rleft_cnt0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry__1_i_3
       (.I0(fdma_rsize[9]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[9]),
        .O(fdma_rleft_cnt0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry__1_i_4
       (.I0(fdma_rsize[8]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[8]),
        .O(fdma_rleft_cnt0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fdma_rleft_cnt0_carry__2
       (.CI(fdma_rleft_cnt0_carry__1_n_0),
        .CO({NLW_fdma_rleft_cnt0_carry__2_CO_UNCONNECTED[3],fdma_rleft_cnt0_carry__2_n_1,fdma_rleft_cnt0_carry__2_n_2,fdma_rleft_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,fdma_rsize[14:12]}),
        .O(fdma_rleft_cnt[15:12]),
        .S({fdma_rleft_cnt0_carry__2_i_1_n_0,fdma_rleft_cnt0_carry__2_i_2_n_0,fdma_rleft_cnt0_carry__2_i_3_n_0,fdma_rleft_cnt0_carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry__2_i_1
       (.I0(fdma_rsize[15]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[15]),
        .O(fdma_rleft_cnt0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry__2_i_2
       (.I0(fdma_rsize[14]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[14]),
        .O(fdma_rleft_cnt0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry__2_i_3
       (.I0(fdma_rsize[13]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[13]),
        .O(fdma_rleft_cnt0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry__2_i_4
       (.I0(fdma_rsize[12]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[12]),
        .O(fdma_rleft_cnt0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry_i_1
       (.I0(fdma_rsize[3]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[3]),
        .O(fdma_rleft_cnt0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry_i_2
       (.I0(fdma_rsize[2]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[2]),
        .O(fdma_rleft_cnt0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry_i_3
       (.I0(fdma_rsize[1]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[1]),
        .O(fdma_rleft_cnt0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_rleft_cnt0_carry_i_4
       (.I0(fdma_rsize[0]),
        .I1(fdma_rareq),
        .I2(fdma_rstart_locked_reg_0),
        .I3(rfdma_cnt_reg[0]),
        .O(fdma_rleft_cnt0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \fdma_rleft_cnt[15]_i_1 
       (.I0(fdma_rstart_locked_reg_0),
        .I1(fdma_rareq),
        .I2(M_AXI_RVALID),
        .I3(fdma_rready),
        .I4(axi_rready),
        .O(\fdma_rleft_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[0]),
        .Q(\fdma_rleft_cnt_reg_n_0_[0] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[10]),
        .Q(\fdma_rleft_cnt_reg_n_0_[10] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[11]),
        .Q(\fdma_rleft_cnt_reg_n_0_[11] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[12]),
        .Q(\fdma_rleft_cnt_reg_n_0_[12] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[13]),
        .Q(\fdma_rleft_cnt_reg_n_0_[13] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[14]),
        .Q(\fdma_rleft_cnt_reg_n_0_[14] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[15]),
        .Q(\fdma_rleft_cnt_reg_n_0_[15] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[1]),
        .Q(\fdma_rleft_cnt_reg_n_0_[1] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[2]),
        .Q(\fdma_rleft_cnt_reg_n_0_[2] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[3]),
        .Q(\fdma_rleft_cnt_reg_n_0_[3] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[4]),
        .Q(\fdma_rleft_cnt_reg_n_0_[4] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[5]),
        .Q(\fdma_rleft_cnt_reg_n_0_[5] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[6]),
        .Q(\fdma_rleft_cnt_reg_n_0_[6] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[7]),
        .Q(\fdma_rleft_cnt_reg_n_0_[7] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[8]),
        .Q(\fdma_rleft_cnt_reg_n_0_[8] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_rleft_cnt_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_rleft_cnt[15]_i_1_n_0 ),
        .D(fdma_rleft_cnt[9]),
        .Q(\fdma_rleft_cnt_reg_n_0_[9] ),
        .R(fdma_wstart_locked1));
  LUT6 #(
    .INIT(64'hFEFEFE0000000000)) 
    fdma_rstart_locked_i_1
       (.I0(fdma_rstart_locked_i_2_n_0),
        .I1(fdma_rstart_locked_i_3_n_0),
        .I2(fdma_rstart_locked_i_4_n_0),
        .I3(fdma_rareq),
        .I4(fdma_rstart_locked_reg_0),
        .I5(M_AXI_ARESETN),
        .O(fdma_rstart_locked_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    fdma_rstart_locked_i_2
       (.I0(axi_rready),
        .I1(fdma_rready),
        .I2(M_AXI_RVALID),
        .O(fdma_rstart_locked_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    fdma_rstart_locked_i_3
       (.I0(\fdma_rleft_cnt_reg_n_0_[1] ),
        .I1(\fdma_rleft_cnt_reg_n_0_[4] ),
        .I2(\fdma_rleft_cnt_reg_n_0_[5] ),
        .I3(\fdma_rleft_cnt_reg_n_0_[2] ),
        .I4(\fdma_rleft_cnt_reg_n_0_[3] ),
        .I5(\fdma_rleft_cnt_reg_n_0_[0] ),
        .O(fdma_rstart_locked_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fdma_rstart_locked_i_4
       (.I0(fdma_rstart_locked_i_5_n_0),
        .I1(fdma_rstart_locked_i_6_n_0),
        .I2(\fdma_rleft_cnt_reg_n_0_[8] ),
        .I3(\fdma_rleft_cnt_reg_n_0_[7] ),
        .O(fdma_rstart_locked_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fdma_rstart_locked_i_5
       (.I0(\fdma_rleft_cnt_reg_n_0_[10] ),
        .I1(\fdma_rleft_cnt_reg_n_0_[9] ),
        .I2(\fdma_rleft_cnt_reg_n_0_[12] ),
        .I3(\fdma_rleft_cnt_reg_n_0_[11] ),
        .O(fdma_rstart_locked_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fdma_rstart_locked_i_6
       (.I0(\fdma_rleft_cnt_reg_n_0_[14] ),
        .I1(\fdma_rleft_cnt_reg_n_0_[13] ),
        .I2(\fdma_rleft_cnt_reg_n_0_[15] ),
        .I3(\fdma_rleft_cnt_reg_n_0_[6] ),
        .O(fdma_rstart_locked_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fdma_rstart_locked_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(fdma_rstart_locked_i_1_n_0),
        .Q(fdma_rstart_locked_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    fdma_rvalid_INST_0
       (.I0(M_AXI_RVALID),
        .I1(fdma_rready),
        .I2(axi_rready),
        .O(fdma_rvalid));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fdma_wleft_cnt0_carry
       (.CI(1'b0),
        .CO({fdma_wleft_cnt0_carry_n_0,fdma_wleft_cnt0_carry_n_1,fdma_wleft_cnt0_carry_n_2,fdma_wleft_cnt0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(fdma_wsize[3:0]),
        .O(fdma_wleft_cnt[3:0]),
        .S({fdma_wleft_cnt0_carry_i_1_n_0,fdma_wleft_cnt0_carry_i_2_n_0,fdma_wleft_cnt0_carry_i_3_n_0,fdma_wleft_cnt0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fdma_wleft_cnt0_carry__0
       (.CI(fdma_wleft_cnt0_carry_n_0),
        .CO({fdma_wleft_cnt0_carry__0_n_0,fdma_wleft_cnt0_carry__0_n_1,fdma_wleft_cnt0_carry__0_n_2,fdma_wleft_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(fdma_wsize[7:4]),
        .O(fdma_wleft_cnt[7:4]),
        .S({fdma_wleft_cnt0_carry__0_i_1_n_0,fdma_wleft_cnt0_carry__0_i_2_n_0,fdma_wleft_cnt0_carry__0_i_3_n_0,fdma_wleft_cnt0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry__0_i_1
       (.I0(fdma_wsize[7]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[7]),
        .O(fdma_wleft_cnt0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry__0_i_2
       (.I0(fdma_wsize[6]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[6]),
        .O(fdma_wleft_cnt0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry__0_i_3
       (.I0(fdma_wsize[5]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[5]),
        .O(fdma_wleft_cnt0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry__0_i_4
       (.I0(fdma_wsize[4]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[4]),
        .O(fdma_wleft_cnt0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fdma_wleft_cnt0_carry__1
       (.CI(fdma_wleft_cnt0_carry__0_n_0),
        .CO({fdma_wleft_cnt0_carry__1_n_0,fdma_wleft_cnt0_carry__1_n_1,fdma_wleft_cnt0_carry__1_n_2,fdma_wleft_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(fdma_wsize[11:8]),
        .O(fdma_wleft_cnt[11:8]),
        .S({fdma_wleft_cnt0_carry__1_i_1_n_0,fdma_wleft_cnt0_carry__1_i_2_n_0,fdma_wleft_cnt0_carry__1_i_3_n_0,fdma_wleft_cnt0_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry__1_i_1
       (.I0(fdma_wsize[11]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[11]),
        .O(fdma_wleft_cnt0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry__1_i_2
       (.I0(fdma_wsize[10]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[10]),
        .O(fdma_wleft_cnt0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry__1_i_3
       (.I0(fdma_wsize[9]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[9]),
        .O(fdma_wleft_cnt0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry__1_i_4
       (.I0(fdma_wsize[8]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[8]),
        .O(fdma_wleft_cnt0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fdma_wleft_cnt0_carry__2
       (.CI(fdma_wleft_cnt0_carry__1_n_0),
        .CO({NLW_fdma_wleft_cnt0_carry__2_CO_UNCONNECTED[3],fdma_wleft_cnt0_carry__2_n_1,fdma_wleft_cnt0_carry__2_n_2,fdma_wleft_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,fdma_wsize[14:12]}),
        .O(fdma_wleft_cnt[15:12]),
        .S({fdma_wleft_cnt0_carry__2_i_1_n_0,fdma_wleft_cnt0_carry__2_i_2_n_0,fdma_wleft_cnt0_carry__2_i_3_n_0,fdma_wleft_cnt0_carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry__2_i_1
       (.I0(fdma_wsize[15]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[15]),
        .O(fdma_wleft_cnt0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry__2_i_2
       (.I0(fdma_wsize[14]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[14]),
        .O(fdma_wleft_cnt0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry__2_i_3
       (.I0(fdma_wsize[13]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[13]),
        .O(fdma_wleft_cnt0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry__2_i_4
       (.I0(fdma_wsize[12]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[12]),
        .O(fdma_wleft_cnt0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry_i_1
       (.I0(fdma_wsize[3]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[3]),
        .O(fdma_wleft_cnt0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry_i_2
       (.I0(fdma_wsize[2]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[2]),
        .O(fdma_wleft_cnt0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry_i_3
       (.I0(fdma_wsize[1]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[1]),
        .O(fdma_wleft_cnt0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hAA59)) 
    fdma_wleft_cnt0_carry_i_4
       (.I0(fdma_wsize[0]),
        .I1(fdma_wareq),
        .I2(fdma_wstart_locked_reg_0),
        .I3(wfdma_cnt_reg[0]),
        .O(fdma_wleft_cnt0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \fdma_wleft_cnt[15]_i_1 
       (.I0(fdma_wstart_locked_reg_0),
        .I1(fdma_wareq),
        .I2(M_AXI_WREADY),
        .I3(fdma_wready),
        .I4(axi_wvalid),
        .O(\fdma_wleft_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[0]),
        .Q(\fdma_wleft_cnt_reg_n_0_[0] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[10]),
        .Q(p_0_in_0[4]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[11]),
        .Q(p_0_in_0[5]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[12]),
        .Q(p_0_in_0[6]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[13]),
        .Q(p_0_in_0[7]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[14]),
        .Q(p_0_in_0[8]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[15]),
        .Q(p_0_in_0[9]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[1]),
        .Q(\fdma_wleft_cnt_reg_n_0_[1] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[2]),
        .Q(\fdma_wleft_cnt_reg_n_0_[2] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[3]),
        .Q(\fdma_wleft_cnt_reg_n_0_[3] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[4]),
        .Q(\fdma_wleft_cnt_reg_n_0_[4] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[5]),
        .Q(\fdma_wleft_cnt_reg_n_0_[5] ),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[6]),
        .Q(p_0_in_0[0]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[7]),
        .Q(p_0_in_0[1]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[8]),
        .Q(p_0_in_0[2]),
        .R(fdma_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \fdma_wleft_cnt_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\fdma_wleft_cnt[15]_i_1_n_0 ),
        .D(fdma_wleft_cnt[9]),
        .Q(p_0_in_0[3]),
        .R(fdma_wstart_locked1));
  LUT6 #(
    .INIT(64'hFEFEFE0000000000)) 
    fdma_wstart_locked_i_1
       (.I0(fdma_wstart_locked_i_2_n_0),
        .I1(fdma_wstart_locked_i_3_n_0),
        .I2(fdma_wstart_locked_i_4_n_0),
        .I3(fdma_wareq),
        .I4(fdma_wstart_locked_reg_0),
        .I5(M_AXI_ARESETN),
        .O(fdma_wstart_locked_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    fdma_wstart_locked_i_2
       (.I0(axi_wvalid),
        .I1(fdma_wready),
        .I2(M_AXI_WREADY),
        .O(fdma_wstart_locked_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    fdma_wstart_locked_i_3
       (.I0(\fdma_wleft_cnt_reg_n_0_[1] ),
        .I1(\fdma_wleft_cnt_reg_n_0_[4] ),
        .I2(\fdma_wleft_cnt_reg_n_0_[5] ),
        .I3(\fdma_wleft_cnt_reg_n_0_[2] ),
        .I4(\fdma_wleft_cnt_reg_n_0_[3] ),
        .I5(\fdma_wleft_cnt_reg_n_0_[0] ),
        .O(fdma_wstart_locked_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fdma_wstart_locked_i_4
       (.I0(fdma_wstart_locked_i_5_n_0),
        .I1(fdma_wstart_locked_i_6_n_0),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .O(fdma_wstart_locked_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fdma_wstart_locked_i_5
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[6]),
        .I3(p_0_in_0[5]),
        .O(fdma_wstart_locked_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fdma_wstart_locked_i_6
       (.I0(p_0_in_0[8]),
        .I1(p_0_in_0[7]),
        .I2(p_0_in_0[9]),
        .I3(p_0_in_0[0]),
        .O(fdma_wstart_locked_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fdma_wstart_locked_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(fdma_wstart_locked_i_1_n_0),
        .Q(fdma_wstart_locked_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    fdma_wvalid_INST_0
       (.I0(M_AXI_WREADY),
        .I1(fdma_wready),
        .I2(axi_wvalid),
        .O(fdma_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rburst_cnt[0]_i_1 
       (.I0(rburst_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rburst_cnt[1]_i_1 
       (.I0(rburst_cnt_reg[0]),
        .I1(rburst_cnt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rburst_cnt[2]_i_1 
       (.I0(rburst_cnt_reg[2]),
        .I1(rburst_cnt_reg[0]),
        .I2(rburst_cnt_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rburst_cnt[3]_i_1 
       (.I0(rburst_cnt_reg[3]),
        .I1(rburst_cnt_reg[2]),
        .I2(rburst_cnt_reg[0]),
        .I3(rburst_cnt_reg[1]),
        .O(\rburst_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rburst_cnt[4]_i_1 
       (.I0(rburst_cnt_reg[4]),
        .I1(rburst_cnt_reg[3]),
        .I2(rburst_cnt_reg[1]),
        .I3(rburst_cnt_reg[0]),
        .I4(rburst_cnt_reg[2]),
        .O(\rburst_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rburst_cnt[5]_i_1 
       (.I0(rburst_cnt_reg[5]),
        .I1(rburst_cnt_reg[2]),
        .I2(rburst_cnt_reg[0]),
        .I3(rburst_cnt_reg[1]),
        .I4(rburst_cnt_reg[3]),
        .I5(rburst_cnt_reg[4]),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \rburst_cnt[6]_i_1 
       (.I0(rburst_cnt_reg[6]),
        .I1(rburst_cnt_reg[4]),
        .I2(rburst_cnt_reg[3]),
        .I3(\rburst_cnt[7]_i_2_n_0 ),
        .I4(rburst_cnt_reg[5]),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \rburst_cnt[7]_i_1 
       (.I0(rburst_cnt_reg[7]),
        .I1(rburst_cnt_reg[5]),
        .I2(\rburst_cnt[7]_i_2_n_0 ),
        .I3(rburst_cnt_reg[3]),
        .I4(rburst_cnt_reg[4]),
        .I5(rburst_cnt_reg[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rburst_cnt[7]_i_2 
       (.I0(rburst_cnt_reg[1]),
        .I1(rburst_cnt_reg[0]),
        .I2(rburst_cnt_reg[2]),
        .O(\rburst_cnt[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rburst_cnt[8]_i_1 
       (.I0(axi_rstart_locked),
        .O(axi_rstart_locked1));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rburst_cnt[8]_i_2 
       (.I0(rburst_cnt_reg[8]),
        .I1(rburst_cnt_reg[6]),
        .I2(\rburst_cnt[8]_i_3_n_0 ),
        .I3(rburst_cnt_reg[7]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rburst_cnt[8]_i_3 
       (.I0(rburst_cnt_reg[5]),
        .I1(rburst_cnt_reg[2]),
        .I2(rburst_cnt_reg[0]),
        .I3(rburst_cnt_reg[1]),
        .I4(rburst_cnt_reg[3]),
        .I5(rburst_cnt_reg[4]),
        .O(\rburst_cnt[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_cnt_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(p_0_in__0[0]),
        .Q(rburst_cnt_reg[0]),
        .R(axi_rstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_cnt_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(p_0_in__0[1]),
        .Q(rburst_cnt_reg[1]),
        .R(axi_rstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_cnt_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(p_0_in__0[2]),
        .Q(rburst_cnt_reg[2]),
        .R(axi_rstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_cnt_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rburst_cnt[3]_i_1_n_0 ),
        .Q(rburst_cnt_reg[3]),
        .R(axi_rstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_cnt_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rburst_cnt[4]_i_1_n_0 ),
        .Q(rburst_cnt_reg[4]),
        .R(axi_rstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_cnt_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(p_0_in__0[5]),
        .Q(rburst_cnt_reg[5]),
        .R(axi_rstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_cnt_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(p_0_in__0[6]),
        .Q(rburst_cnt_reg[6]),
        .R(axi_rstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_cnt_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(p_0_in__0[7]),
        .Q(rburst_cnt_reg[7]),
        .R(axi_rstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_cnt_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(p_0_in__0[8]),
        .Q(rburst_cnt_reg[8]),
        .R(axi_rstart_locked1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h4FFF40FF)) 
    \rburst_len[0]_i_1 
       (.I0(fdma_rstart_locked_i_4_n_0),
        .I1(\fdma_rleft_cnt_reg_n_0_[0] ),
        .I2(rburst_len_req),
        .I3(M_AXI_ARESETN),
        .I4(axi_rburst_size[4]),
        .O(\rburst_len[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB3)) 
    \rburst_len[5]_i_1 
       (.I0(fdma_rstart_locked_i_4_n_0),
        .I1(M_AXI_ARESETN),
        .I2(rburst_len_req),
        .O(\rburst_len[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \rburst_len[6]_i_1 
       (.I0(fdma_rstart_locked_i_4_n_0),
        .I1(rburst_len_req),
        .I2(M_AXI_ARESETN),
        .I3(axi_rburst_size[10]),
        .O(\rburst_len[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \rburst_len_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\rburst_len[0]_i_1_n_0 ),
        .Q(axi_rburst_size[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_len_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(rburst_len_req),
        .D(\fdma_rleft_cnt_reg_n_0_[1] ),
        .Q(axi_rburst_size[5]),
        .R(\rburst_len[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_len_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(rburst_len_req),
        .D(\fdma_rleft_cnt_reg_n_0_[2] ),
        .Q(axi_rburst_size[6]),
        .R(\rburst_len[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_len_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(rburst_len_req),
        .D(\fdma_rleft_cnt_reg_n_0_[3] ),
        .Q(axi_rburst_size[7]),
        .R(\rburst_len[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_len_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(rburst_len_req),
        .D(\fdma_rleft_cnt_reg_n_0_[4] ),
        .Q(axi_rburst_size[8]),
        .R(\rburst_len[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_len_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(rburst_len_req),
        .D(\fdma_rleft_cnt_reg_n_0_[5] ),
        .Q(axi_rburst_size[9]),
        .R(\rburst_len[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rburst_len_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\rburst_len[6]_i_1_n_0 ),
        .Q(axi_rburst_size[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rburst_len_req_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[31]_i_1_n_0 ),
        .Q(rburst_len_req),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h4F)) 
    \rfdma_cnt[0]_i_1 
       (.I0(fdma_rstart_locked_reg_0),
        .I1(fdma_rareq),
        .I2(M_AXI_ARESETN),
        .O(\rfdma_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rfdma_cnt[0]_i_3 
       (.I0(rfdma_cnt_reg[0]),
        .O(\rfdma_cnt[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[0]_i_2_n_7 ),
        .Q(rfdma_cnt_reg[0]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rfdma_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\rfdma_cnt_reg[0]_i_2_n_0 ,\rfdma_cnt_reg[0]_i_2_n_1 ,\rfdma_cnt_reg[0]_i_2_n_2 ,\rfdma_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rfdma_cnt_reg[0]_i_2_n_4 ,\rfdma_cnt_reg[0]_i_2_n_5 ,\rfdma_cnt_reg[0]_i_2_n_6 ,\rfdma_cnt_reg[0]_i_2_n_7 }),
        .S({rfdma_cnt_reg[3:1],\rfdma_cnt[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[8]_i_1_n_5 ),
        .Q(rfdma_cnt_reg[10]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[8]_i_1_n_4 ),
        .Q(rfdma_cnt_reg[11]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[12]_i_1_n_7 ),
        .Q(rfdma_cnt_reg[12]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rfdma_cnt_reg[12]_i_1 
       (.CI(\rfdma_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_rfdma_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\rfdma_cnt_reg[12]_i_1_n_1 ,\rfdma_cnt_reg[12]_i_1_n_2 ,\rfdma_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rfdma_cnt_reg[12]_i_1_n_4 ,\rfdma_cnt_reg[12]_i_1_n_5 ,\rfdma_cnt_reg[12]_i_1_n_6 ,\rfdma_cnt_reg[12]_i_1_n_7 }),
        .S(rfdma_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[12]_i_1_n_6 ),
        .Q(rfdma_cnt_reg[13]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[12]_i_1_n_5 ),
        .Q(rfdma_cnt_reg[14]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[12]_i_1_n_4 ),
        .Q(rfdma_cnt_reg[15]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[0]_i_2_n_6 ),
        .Q(rfdma_cnt_reg[1]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[0]_i_2_n_5 ),
        .Q(rfdma_cnt_reg[2]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[0]_i_2_n_4 ),
        .Q(rfdma_cnt_reg[3]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[4]_i_1_n_7 ),
        .Q(rfdma_cnt_reg[4]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rfdma_cnt_reg[4]_i_1 
       (.CI(\rfdma_cnt_reg[0]_i_2_n_0 ),
        .CO({\rfdma_cnt_reg[4]_i_1_n_0 ,\rfdma_cnt_reg[4]_i_1_n_1 ,\rfdma_cnt_reg[4]_i_1_n_2 ,\rfdma_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rfdma_cnt_reg[4]_i_1_n_4 ,\rfdma_cnt_reg[4]_i_1_n_5 ,\rfdma_cnt_reg[4]_i_1_n_6 ,\rfdma_cnt_reg[4]_i_1_n_7 }),
        .S(rfdma_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[4]_i_1_n_6 ),
        .Q(rfdma_cnt_reg[5]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[4]_i_1_n_5 ),
        .Q(rfdma_cnt_reg[6]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[4]_i_1_n_4 ),
        .Q(rfdma_cnt_reg[7]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[8]_i_1_n_7 ),
        .Q(rfdma_cnt_reg[8]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rfdma_cnt_reg[8]_i_1 
       (.CI(\rfdma_cnt_reg[4]_i_1_n_0 ),
        .CO({\rfdma_cnt_reg[8]_i_1_n_0 ,\rfdma_cnt_reg[8]_i_1_n_1 ,\rfdma_cnt_reg[8]_i_1_n_2 ,\rfdma_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rfdma_cnt_reg[8]_i_1_n_4 ,\rfdma_cnt_reg[8]_i_1_n_5 ,\rfdma_cnt_reg[8]_i_1_n_6 ,\rfdma_cnt_reg[8]_i_1_n_7 }),
        .S(rfdma_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \rfdma_cnt_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(fdma_rvalid),
        .D(\rfdma_cnt_reg[8]_i_1_n_6 ),
        .Q(rfdma_cnt_reg[9]),
        .R(\rfdma_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wburst_cnt[0]_i_1 
       (.I0(wburst_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wburst_cnt[1]_i_1 
       (.I0(wburst_cnt_reg[0]),
        .I1(wburst_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wburst_cnt[2]_i_1 
       (.I0(wburst_cnt_reg[2]),
        .I1(wburst_cnt_reg[0]),
        .I2(wburst_cnt_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wburst_cnt[3]_i_1 
       (.I0(wburst_cnt_reg[3]),
        .I1(wburst_cnt_reg[2]),
        .I2(wburst_cnt_reg[0]),
        .I3(wburst_cnt_reg[1]),
        .O(\wburst_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wburst_cnt[4]_i_1 
       (.I0(wburst_cnt_reg[4]),
        .I1(wburst_cnt_reg[3]),
        .I2(wburst_cnt_reg[1]),
        .I3(wburst_cnt_reg[0]),
        .I4(wburst_cnt_reg[2]),
        .O(\wburst_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wburst_cnt[5]_i_1 
       (.I0(wburst_cnt_reg[5]),
        .I1(wburst_cnt_reg[2]),
        .I2(wburst_cnt_reg[0]),
        .I3(wburst_cnt_reg[1]),
        .I4(wburst_cnt_reg[3]),
        .I5(wburst_cnt_reg[4]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \wburst_cnt[6]_i_1 
       (.I0(wburst_cnt_reg[6]),
        .I1(wburst_cnt_reg[4]),
        .I2(wburst_cnt_reg[3]),
        .I3(\wburst_cnt[7]_i_2_n_0 ),
        .I4(wburst_cnt_reg[5]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \wburst_cnt[7]_i_1 
       (.I0(wburst_cnt_reg[7]),
        .I1(wburst_cnt_reg[5]),
        .I2(\wburst_cnt[7]_i_2_n_0 ),
        .I3(wburst_cnt_reg[3]),
        .I4(wburst_cnt_reg[4]),
        .I5(wburst_cnt_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \wburst_cnt[7]_i_2 
       (.I0(wburst_cnt_reg[1]),
        .I1(wburst_cnt_reg[0]),
        .I2(wburst_cnt_reg[2]),
        .O(\wburst_cnt[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wburst_cnt[8]_i_1 
       (.I0(axi_wstart_locked),
        .O(axi_wstart_locked1));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wburst_cnt[8]_i_2 
       (.I0(wburst_cnt_reg[8]),
        .I1(wburst_cnt_reg[6]),
        .I2(\wburst_cnt[8]_i_3_n_0 ),
        .I3(wburst_cnt_reg[7]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \wburst_cnt[8]_i_3 
       (.I0(wburst_cnt_reg[5]),
        .I1(wburst_cnt_reg[2]),
        .I2(wburst_cnt_reg[0]),
        .I3(wburst_cnt_reg[1]),
        .I4(wburst_cnt_reg[3]),
        .I5(wburst_cnt_reg[4]),
        .O(\wburst_cnt[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_cnt_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(p_0_in[0]),
        .Q(wburst_cnt_reg[0]),
        .R(axi_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_cnt_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(p_0_in[1]),
        .Q(wburst_cnt_reg[1]),
        .R(axi_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_cnt_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(p_0_in[2]),
        .Q(wburst_cnt_reg[2]),
        .R(axi_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_cnt_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wburst_cnt[3]_i_1_n_0 ),
        .Q(wburst_cnt_reg[3]),
        .R(axi_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_cnt_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wburst_cnt[4]_i_1_n_0 ),
        .Q(wburst_cnt_reg[4]),
        .R(axi_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_cnt_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(p_0_in[5]),
        .Q(wburst_cnt_reg[5]),
        .R(axi_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_cnt_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(p_0_in[6]),
        .Q(wburst_cnt_reg[6]),
        .R(axi_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_cnt_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(p_0_in[7]),
        .Q(wburst_cnt_reg[7]),
        .R(axi_wstart_locked1));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_cnt_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(p_0_in[8]),
        .Q(wburst_cnt_reg[8]),
        .R(axi_wstart_locked1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h4FFF40FF)) 
    \wburst_len[0]_i_1 
       (.I0(fdma_wstart_locked_i_4_n_0),
        .I1(\fdma_wleft_cnt_reg_n_0_[0] ),
        .I2(wburst_len_req),
        .I3(M_AXI_ARESETN),
        .I4(axi_wburst_size[4]),
        .O(\wburst_len[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB3)) 
    \wburst_len[5]_i_1 
       (.I0(fdma_wstart_locked_i_4_n_0),
        .I1(M_AXI_ARESETN),
        .I2(wburst_len_req),
        .O(\wburst_len[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \wburst_len[6]_i_1 
       (.I0(fdma_wstart_locked_i_4_n_0),
        .I1(wburst_len_req),
        .I2(M_AXI_ARESETN),
        .I3(axi_wburst_size[10]),
        .O(\wburst_len[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \wburst_len_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\wburst_len[0]_i_1_n_0 ),
        .Q(axi_wburst_size[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_len_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(wburst_len_req),
        .D(\fdma_wleft_cnt_reg_n_0_[1] ),
        .Q(axi_wburst_size[5]),
        .R(\wburst_len[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_len_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(wburst_len_req),
        .D(\fdma_wleft_cnt_reg_n_0_[2] ),
        .Q(axi_wburst_size[6]),
        .R(\wburst_len[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_len_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(wburst_len_req),
        .D(\fdma_wleft_cnt_reg_n_0_[3] ),
        .Q(axi_wburst_size[7]),
        .R(\wburst_len[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_len_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(wburst_len_req),
        .D(\fdma_wleft_cnt_reg_n_0_[4] ),
        .Q(axi_wburst_size[8]),
        .R(\wburst_len[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_len_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(wburst_len_req),
        .D(\fdma_wleft_cnt_reg_n_0_[5] ),
        .Q(axi_wburst_size[9]),
        .R(\wburst_len[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wburst_len_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\wburst_len[6]_i_1_n_0 ),
        .Q(axi_wburst_size[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    wburst_len_req_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[31]_i_2_n_0 ),
        .Q(wburst_len_req),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h4F)) 
    \wfdma_cnt[0]_i_1 
       (.I0(fdma_wstart_locked_reg_0),
        .I1(fdma_wareq),
        .I2(M_AXI_ARESETN),
        .O(\wfdma_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wfdma_cnt[0]_i_3 
       (.I0(wfdma_cnt_reg[0]),
        .O(\wfdma_cnt[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[0]_i_2_n_7 ),
        .Q(wfdma_cnt_reg[0]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wfdma_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\wfdma_cnt_reg[0]_i_2_n_0 ,\wfdma_cnt_reg[0]_i_2_n_1 ,\wfdma_cnt_reg[0]_i_2_n_2 ,\wfdma_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wfdma_cnt_reg[0]_i_2_n_4 ,\wfdma_cnt_reg[0]_i_2_n_5 ,\wfdma_cnt_reg[0]_i_2_n_6 ,\wfdma_cnt_reg[0]_i_2_n_7 }),
        .S({wfdma_cnt_reg[3:1],\wfdma_cnt[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[8]_i_1_n_5 ),
        .Q(wfdma_cnt_reg[10]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[8]_i_1_n_4 ),
        .Q(wfdma_cnt_reg[11]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[12]_i_1_n_7 ),
        .Q(wfdma_cnt_reg[12]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wfdma_cnt_reg[12]_i_1 
       (.CI(\wfdma_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_wfdma_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\wfdma_cnt_reg[12]_i_1_n_1 ,\wfdma_cnt_reg[12]_i_1_n_2 ,\wfdma_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wfdma_cnt_reg[12]_i_1_n_4 ,\wfdma_cnt_reg[12]_i_1_n_5 ,\wfdma_cnt_reg[12]_i_1_n_6 ,\wfdma_cnt_reg[12]_i_1_n_7 }),
        .S(wfdma_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[12]_i_1_n_6 ),
        .Q(wfdma_cnt_reg[13]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[12]_i_1_n_5 ),
        .Q(wfdma_cnt_reg[14]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[12]_i_1_n_4 ),
        .Q(wfdma_cnt_reg[15]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[0]_i_2_n_6 ),
        .Q(wfdma_cnt_reg[1]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[0]_i_2_n_5 ),
        .Q(wfdma_cnt_reg[2]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[0]_i_2_n_4 ),
        .Q(wfdma_cnt_reg[3]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[4]_i_1_n_7 ),
        .Q(wfdma_cnt_reg[4]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wfdma_cnt_reg[4]_i_1 
       (.CI(\wfdma_cnt_reg[0]_i_2_n_0 ),
        .CO({\wfdma_cnt_reg[4]_i_1_n_0 ,\wfdma_cnt_reg[4]_i_1_n_1 ,\wfdma_cnt_reg[4]_i_1_n_2 ,\wfdma_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wfdma_cnt_reg[4]_i_1_n_4 ,\wfdma_cnt_reg[4]_i_1_n_5 ,\wfdma_cnt_reg[4]_i_1_n_6 ,\wfdma_cnt_reg[4]_i_1_n_7 }),
        .S(wfdma_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[4]_i_1_n_6 ),
        .Q(wfdma_cnt_reg[5]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[4]_i_1_n_5 ),
        .Q(wfdma_cnt_reg[6]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[4]_i_1_n_4 ),
        .Q(wfdma_cnt_reg[7]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[8]_i_1_n_7 ),
        .Q(wfdma_cnt_reg[8]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wfdma_cnt_reg[8]_i_1 
       (.CI(\wfdma_cnt_reg[4]_i_1_n_0 ),
        .CO({\wfdma_cnt_reg[8]_i_1_n_0 ,\wfdma_cnt_reg[8]_i_1_n_1 ,\wfdma_cnt_reg[8]_i_1_n_2 ,\wfdma_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wfdma_cnt_reg[8]_i_1_n_4 ,\wfdma_cnt_reg[8]_i_1_n_5 ,\wfdma_cnt_reg[8]_i_1_n_6 ,\wfdma_cnt_reg[8]_i_1_n_7 }),
        .S(wfdma_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wfdma_cnt_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(fdma_wvalid),
        .D(\wfdma_cnt_reg[8]_i_1_n_6 ),
        .Q(wfdma_cnt_reg[9]),
        .R(\wfdma_cnt[0]_i_1_n_0 ));
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
