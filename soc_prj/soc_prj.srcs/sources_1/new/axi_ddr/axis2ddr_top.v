`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/07 13:57:27
// Design Name: 
// Module Name: axi-s2axi-f
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


module axis2ddr_top#(
        //the max depth of the fifo: 2^FIFO_AW
        parameter FIFO_AW = 10
		// AXI4Stream sink: Data Width
    ,   parameter AXIS_DATA_WIDTH = 32
		// AXI4 sink: Data Width as same as the data depth of the fifo
    ,   parameter AXI4_DATA_WIDTH = 128
        // Horizontal resolution
    ,   parameter PIXELS_H = 1280
        // Vertical resolution
    ,   parameter PIXELS_V = 1024
        // Delay number of the frame, the max value is 1024(constrained by the bits of the counter)
    ,   parameter FRAME_MAX = 4

		// Base address of targeted slave
	,   parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h10000000
		// Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
	,   parameter integer C_M_AXI_BURST_LEN	= 16
		// Thread ID Width
	,   parameter integer C_M_AXI_ID_WIDTH	= 1
		// Width of Address Bus
	,   parameter integer C_M_AXI_ADDR_WIDTH	= 32
		// Width of Data Bus
	,   parameter integer C_M_AXI_DATA_WIDTH	= AXI4_DATA_WIDTH
		// Width of User Write Address Bus
	,   parameter integer C_M_AXI_AWUSER_WIDTH	= 0
		// Width of User Read Address Bus
	,   parameter integer C_M_AXI_ARUSER_WIDTH	= 0
		// Width of User Write Data Bus
	,   parameter integer C_M_AXI_WUSER_WIDTH	= 0
		// Width of User Read Data Bus
	,   parameter integer C_M_AXI_RUSER_WIDTH	= 0
		// Width of User Response Bus
	,   parameter integer C_M_AXI_BUSER_WIDTH	= 0

    
		// Width of S_AXI data bus
	,   parameter integer C_S_AXI_DATA_WIDTH	= 32
		// Width of S_AXI address bus
	,	parameter integer C_S_AXI_ADDR_WIDTH	= 4
)(
//----------------------------------------------------
// Adc Data Input
        input   wire            adc_clk_ch_1
    ,   input   wire    [13:0]  adc_data_ch_1

//----------------------------------------------------
// Usb Data Output
    ,   input   wire            usb_clk_ch_1
    ,   input   wire            usb_data_req
    ,   output  wire    [31:0]  usb_data_ch_1

//----------------------------------------------------
// usb trigger interface
    ,   input   wire            trigger_en
    ,   output  wire            usb_fifo_almost_empty
    ,   input   wire           	usb_burst_trigger

//----------------------------------------------------
// AXI-FULL master port
    // Global Clock Signal.
    ,   input wire  M_AXI_ACLK
    // Global Reset Singal. This Signal is Active Low
    ,   input wire  M_AXI_ARESETN

    //----------------Write Address Channel----------------//
    // Master Interface Write Address ID
    ,   output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_AWID
    // Master Interface Write Address
    ,   output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR
    // Burst length. The burst length gives the exact number of transfers in a burst
    ,   output wire [7 : 0] M_AXI_AWLEN
    // Burst size. This signal indicates the size of each transfer in the burst
    ,   output wire [2 : 0] M_AXI_AWSIZE
    // Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
    ,   output wire [1 : 0] M_AXI_AWBURST
    // Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
    ,   output wire  M_AXI_AWLOCK
    // Memory type. This signal indicates how transactions
    // are required to progress through a system.
    ,   output wire [3 : 0] M_AXI_AWCACHE
    // Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
    ,   output wire [2 : 0] M_AXI_AWPROT
    // Quality of Service, QoS identifier sent for each write transaction.
    ,   output wire [3 : 0] M_AXI_AWQOS
    // Optional User-defined signal in the write address channel.
    ,   output wire [C_M_AXI_AWUSER_WIDTH-1 : 0] M_AXI_AWUSER
    // Write address valid. This signal indicates that
    // the channel is signaling valid write address and control information.
    ,   output wire  M_AXI_AWVALID
    // Write address ready. This signal indicates that
    // the slave is ready to accept an address and associated control signals
    ,   input wire  M_AXI_AWREADY

    //----------------Write Data Channel----------------//
    // Master Interface Write Data.
    ,   output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA
    // Write strobes. This signal indicates which byte
    // lanes hold valid data. There is one write strobe
    // bit for each eight bits of the write data bus.
    ,   output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB
    // Write last. This signal indicates the last transfer in a write burst.
    ,   output wire  M_AXI_WLAST
    // Optional User-defined signal in the write data channel.
    ,   output wire [C_M_AXI_WUSER_WIDTH-1 : 0] M_AXI_WUSER
    // Write valid. This signal indicates that valid write
    // data and strobes are available
    ,   output wire  M_AXI_WVALID
    // Write ready. This signal indicates that the slave
    // can accept the write data.
    ,   input wire  M_AXI_WREADY

    //----------------Write Response Channel----------------//
    // Master Interface Write Response.
    ,   input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_BID
    // Write response. This signal indicates the status of the write transaction.
    ,   input wire [1 : 0] M_AXI_BRESP
    // Optional User-defined signal in the write response channel
    ,   input wire [C_M_AXI_BUSER_WIDTH-1 : 0] M_AXI_BUSER
    // Write response valid. This signal indicates that the
    // channel is signaling a valid write response.
    ,   input wire  M_AXI_BVALID
    // Response ready. This signal indicates that the master
    // can accept a write response.
    ,   output wire  M_AXI_BREADY

    //----------------Read Address Channel----------------//
    // Master Interface Read Address.
    ,   output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID
    // Read address. This signal indicates the initial
    // address of a read burst transaction.
    ,   output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR
    // Burst length. The burst length gives the exact number of transfers in a burst
    ,   output wire [7 : 0] M_AXI_ARLEN
    // Burst size. This signal indicates the size of each transfer in the burst
    ,   output wire [2 : 0] M_AXI_ARSIZE
    // Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
    ,   output wire [1 : 0] M_AXI_ARBURST
    // Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
    ,   output wire  M_AXI_ARLOCK
    // Memory type. This signal indicates how transactions
    // are required to progress through a system.
    ,   output wire [3 : 0] M_AXI_ARCACHE
    // Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
    ,   output wire [2 : 0] M_AXI_ARPROT
    // Quality of Service, QoS identifier sent for each read transaction
    ,   output wire [3 : 0] M_AXI_ARQOS
    // Optional User-defined signal in the read address channel.
    ,   output wire [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER
    // Write address valid. This signal indicates that
    // the channel is signaling valid read address and control information
    ,   output wire  M_AXI_ARVALID
    // Read address ready. This signal indicates that
    // the slave is ready to accept an address and associated control signals
    ,   input wire  M_AXI_ARREADY

    //----------------Read Data Channel----------------//
    // Read ID tag. This signal is the identification tag
    // for the read data group of signals generated by the slave.
    ,   input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID
    // Master Read Data
    ,   input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA
    // Read response. This signal indicates the status of the read transfer
    ,   input wire [1 : 0] M_AXI_RRESP
    // Read last. This signal indicates the last transfer in a read burst
    ,   input wire  M_AXI_RLAST
    // Optional User-defined signal in the read address channel.
    ,   input wire [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER
    // Read valid. This signal indicates that the channel
    // is signaling the required read data.
    ,   input wire  M_AXI_RVALID
    // Read ready. This signal indicates that the master can
    // accept the read data and response information.
    ,   output wire  M_AXI_RREADY
);

//----------------------------------------------------
// wire definition
    wire            fwr_clk             ;
    wire            fwr_en              ;
    wire [15 : 0]   fwr_data            ;
    wire            fwr_en_pause        ;
    wire            frd_clk             ;
    wire            frd_en              ;
    wire [127 : 0]  frd_data            ;
    wire            frd_almost_full     ;

    wire            bwr_clk             ;
    wire            bwr_en              ;
    wire [127 : 0]  bwr_data            ;
    wire            brd_clk             ;
    wire            brd_en              ;
    wire [31 : 0]   brd_data            ;
    wire            brd_almost_empty    ;
    wire            brd_is_not_empty    ;
    
	reg             trigger_en_d1       ;
	reg             trigger_en_d2       ;
    reg             fwr_en_pause_d1     ;
    reg             fwr_en_pause_d2     ;

    always @(adc_clk_ch_1) begin
        trigger_en_d1   <=  trigger_en;
        trigger_en_d2   <=  trigger_en_d1;
        fwr_en_pause_d1 <=  fwr_en_pause;
        fwr_en_pause_d2 <=  fwr_en_pause_d1;
    end

    assign fwr_clk  =   adc_clk_ch_1;
    assign fwr_en   =   trigger_en_d2 & (!fwr_en_pause_d2);
    assign fwr_data =   {2'b0,adc_data_ch_1};
    assign frd_clk  =   M_AXI_ACLK;

    assign bwr_clk          =   M_AXI_ACLK;
    assign brd_clk          =   usb_clk_ch_1;
    assign brd_en           =   usb_data_req;
    assign usb_data_ch_1    =   brd_data;

    assign usb_fifo_almost_empty = brd_almost_empty;

//---------------------------------------------------
// FORWARD FIFO STORAGE
fifo_generator_1 u_forward_fifo (
    .rst                (fwr_en_pause_d2        ),      // input wire rst
    .wr_clk             (fwr_clk                ),      // input wire wr_clk
    .wr_en              (fwr_en                 ),      // input wire wr_en
    .din                (fwr_data               ),      // input wire [15 : 0] din
    .rd_clk             (frd_clk                ),      // input wire rd_clk
    .rd_en              (frd_en                 ),      // input wire rd_en
    .dout               (frd_data               ),      // output wire [127 : 0] dout
    .full               (),                             // output wire full
    .almost_full        (frd_almost_full        ),      // output wire almost_full
    .empty              (),                             // output wire empty
    .wr_rst_busy        (),                             // output wire wr_rst_busy
    .rd_rst_busy        ()                              // output wire rd_rst_busy
);

ila_1 u_ila_1 (
	.clk        (fwr_clk    ), // input wire clk
	.probe0     (fwr_data   ), // input wire [15:0]  probe0  
	.probe1     (fwr_en     ) // input wire [0:0]  probe1
);

//---------------------------------------------------
// FIFO TO AXI FULL
axi_full_core #(
    //----------------------------------------------------
    // AXI-FULL parameters
	    .C_M_TARGET_SLAVE_BASE_ADDR	    (C_M_TARGET_SLAVE_BASE_ADDR)   
	,   .C_M_AXI_BURST_LEN	            (C_M_AXI_BURST_LEN	       )   
	,   .C_M_AXI_ID_WIDTH	            (C_M_AXI_ID_WIDTH	       )   
	,   .C_M_AXI_ADDR_WIDTH	            (C_M_AXI_ADDR_WIDTH	       )   
	,   .C_M_AXI_DATA_WIDTH	            (C_M_AXI_DATA_WIDTH	       )   
	,   .C_M_AXI_AWUSER_WIDTH	        (C_M_AXI_AWUSER_WIDTH	   )   
	,   .C_M_AXI_ARUSER_WIDTH	        (C_M_AXI_ARUSER_WIDTH	   )   
	,   .C_M_AXI_WUSER_WIDTH	        (C_M_AXI_WUSER_WIDTH	   )   
	,   .C_M_AXI_RUSER_WIDTH	        (C_M_AXI_RUSER_WIDTH	   )   
	,   .C_M_AXI_BUSER_WIDTH	        (C_M_AXI_BUSER_WIDTH	   )   
)u_axi_full_core(

//----------------------------------------------------
// forward FIFO write interface
        .fwr_en_pause           (fwr_en_pause           )

//----------------------------------------------------
// forward FIFO read interface
    ,   .frd_en                 (frd_en                 )
    ,   .frd_data               (frd_data               )
    ,   .frd_almost_full        (frd_almost_full        )  

//----------------------------------------------------
// backward FIFO write interface
    ,   .brd_is_not_empty       (brd_is_not_empty       )
    ,   .bwr_en                 (bwr_en                 )
    ,   .bwr_data               (bwr_data               )

//----------------------------------------------------
// usb trigger interface
    ,   .trigger_en             (trigger_en             )
    ,   .usb_burst_trigger      (usb_burst_trigger      )

//----------------------------------------------------
// AXI-FULL master port
    ,   .INIT_AXI_TXN       (0)
    ,   .TXN_DONE           ()
    ,   .ERROR              ()
    ,   .M_AXI_ACLK         (M_AXI_ACLK         )
    ,   .M_AXI_ARESETN      (M_AXI_ARESETN      )

    //----------------Write Address Channel----------------//
    ,   .M_AXI_AWID         (M_AXI_AWID         )
    ,   .M_AXI_AWADDR       (M_AXI_AWADDR       )
    ,   .M_AXI_AWLEN        (M_AXI_AWLEN        )
    ,   .M_AXI_AWSIZE       (M_AXI_AWSIZE       )
    ,   .M_AXI_AWBURST      (M_AXI_AWBURST      )
    ,   .M_AXI_AWLOCK       (M_AXI_AWLOCK       )
    ,   .M_AXI_AWCACHE      (M_AXI_AWCACHE      )
    ,   .M_AXI_AWPROT       (M_AXI_AWPROT       )
    ,   .M_AXI_AWQOS        (M_AXI_AWQOS        )
    ,   .M_AXI_AWUSER       (M_AXI_AWUSER       )
    ,   .M_AXI_AWVALID      (M_AXI_AWVALID      )
    ,   .M_AXI_AWREADY      (M_AXI_AWREADY      )

    //----------------Write Data Channel----------------//
    ,   .M_AXI_WDATA        (M_AXI_WDATA        )
    ,   .M_AXI_WSTRB        (M_AXI_WSTRB        )
    ,   .M_AXI_WLAST        (M_AXI_WLAST        )
    ,   .M_AXI_WUSER        (M_AXI_WUSER        )
    ,   .M_AXI_WVALID       (M_AXI_WVALID       )
    ,   .M_AXI_WREADY       (M_AXI_WREADY       )

    //----------------Write Response Channel----------------//
    ,   .M_AXI_BID          (M_AXI_BID          )
    ,   .M_AXI_BRESP        (M_AXI_BRESP        )
    ,   .M_AXI_BUSER        (M_AXI_BUSER        )
    ,   .M_AXI_BVALID       (M_AXI_BVALID       )
    ,   .M_AXI_BREADY       (M_AXI_BREADY       )

    //----------------Read Address Channel----------------//
    ,   .M_AXI_ARID         (M_AXI_ARID         )
    ,   .M_AXI_ARADDR       (M_AXI_ARADDR       )
    ,   .M_AXI_ARLEN        (M_AXI_ARLEN        )
    ,   .M_AXI_ARSIZE       (M_AXI_ARSIZE       )
    ,   .M_AXI_ARBURST      (M_AXI_ARBURST      )
    ,   .M_AXI_ARLOCK       (M_AXI_ARLOCK       )
    ,   .M_AXI_ARCACHE      (M_AXI_ARCACHE      )
    ,   .M_AXI_ARPROT       (M_AXI_ARPROT       )
    ,   .M_AXI_ARQOS        (M_AXI_ARQOS        )
    ,   .M_AXI_ARUSER       (M_AXI_ARUSER       )
    ,   .M_AXI_ARVALID      (M_AXI_ARVALID      )
    ,   .M_AXI_ARREADY      (M_AXI_ARREADY      )

    //----------------Read Data Channel----------------//
    ,   .M_AXI_RID          (M_AXI_RID          )
    ,   .M_AXI_RDATA        (M_AXI_RDATA        )
    ,   .M_AXI_RRESP        (M_AXI_RRESP        )
    ,   .M_AXI_RLAST        (M_AXI_RLAST        )
    ,   .M_AXI_RUSER        (M_AXI_RUSER        )
    ,   .M_AXI_RVALID       (M_AXI_RVALID       )
    ,   .M_AXI_RREADY       (M_AXI_RREADY       )
);

backward_fifo u_backward_fifo (
  .rst              (!trigger_en_d2     ),  // input wire rst
  .wr_clk           (bwr_clk            ),  // input wire wr_clk
  .wr_en            (bwr_en             ),  // input wire wr_en
  .din              (bwr_data           ),  // input wire [127 : 0] din
  .rd_clk           (brd_clk            ),  // input wire rd_clk
  .rd_en            (brd_en             ),  // input wire rd_en
  .dout             (brd_data           ),  // output wire [31 : 0] dout
  .full             (),                     // output wire full
  .empty            (),                     // output wire empty
  .almost_empty     (brd_almost_empty   ),  // output wire almost_empty
  .wr_rst_busy      (),                     // output wire wr_rst_busy
  .rd_rst_busy      ()                      // output wire rd_rst_busy
);

endmodule
