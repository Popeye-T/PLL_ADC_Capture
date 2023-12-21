`timescale 1ns / 1ps

module axi_wr_ddr_tb();

localparam _DATA_WIDTH_ = 32;
localparam _AXI_PERIOD_ = 5;


parameter integer AXI_ID_WIDTH	        = 1    ;
parameter integer AXI_DATA_WIDTH	    = 128  ;
parameter integer AXI_ADDR_WIDTH	    = 32   ;
parameter integer AXI_AWUSER_WIDTH	    = 0    ;
parameter integer AXI_ARUSER_WIDTH	    = 0    ;
parameter integer AXI_WUSER_WIDTH	    = 0    ;
parameter integer AXI_RUSER_WIDTH	    = 0    ;
parameter integer AXI_BUSER_WIDTH	    = 0    ;

//AXIS interface
reg     M_AXI_ACLK    = 1'b0;
reg     M_AXI_ARESETN = 1'b0;
wire    AXIS_TVALID;
wire    AXIS_TREADY;
wire  	AXIS_TUSER;
wire    AXIS_TLAST;
wire    [_DATA_WIDTH_-1 : 0]        AXIS_TDATA;
wire    [(_DATA_WIDTH_/8)-1 : 0]    AXIS_TSTRB;

wire   [_DATA_WIDTH_-1 : 0]         M_AXIS_TDATA;

//AXI-FULL interface
    wire [AXI_ID_WIDTH-1 : 0]               M_AXI_AWID     
;   wire [AXI_ADDR_WIDTH-1 : 0]             M_AXI_AWADDR   
;   wire [7 : 0]                            M_AXI_AWLEN    
;   wire [2 : 0]                            M_AXI_AWSIZE   
;   wire [1 : 0]                            M_AXI_AWBURST  
;   wire                                    M_AXI_AWLOCK   
;   wire [3 : 0]                            M_AXI_AWCACHE  
;   wire [2 : 0]                            M_AXI_AWPROT   
;   wire [3 : 0]                            M_AXI_AWQOS    
;   wire [3 : 0]                            S_AXI_AWREGION  
;   wire [AXI_AWUSER_WIDTH-1 : 0]           M_AXI_AWUSER   
;   wire                                    M_AXI_AWVALID  
;   wire                                    M_AXI_AWREADY  

;   wire [AXI_DATA_WIDTH-1 : 0]             M_AXI_WDATA    
;   wire [(AXI_DATA_WIDTH/8)-1 : 0]         M_AXI_WSTRB    
;   wire                                    M_AXI_WLAST    
;   wire [AXI_WUSER_WIDTH-1 : 0]            M_AXI_WUSER    
;   wire                                    M_AXI_WVALID   
;   wire                                    M_AXI_WREADY   

;   wire [AXI_ID_WIDTH-1 : 0]               M_AXI_BID      
;   wire [1 : 0]                            M_AXI_BRESP    
;   wire [AXI_BUSER_WIDTH-1 : 0]            M_AXI_BUSER    
;   wire                                    M_AXI_BVALID   
;   wire                                    M_AXI_BREADY   

;   wire [AXI_ID_WIDTH-1 : 0]               M_AXI_ARID     
;   wire [AXI_ADDR_WIDTH-1 : 0]             M_AXI_ARADDR   
;   wire [7 : 0]                            M_AXI_ARLEN    
;   wire [2 : 0]                            M_AXI_ARSIZE   
;   wire [1 : 0]                            M_AXI_ARBURST  
;   wire                                    M_AXI_ARLOCK   
;   wire [3 : 0]                            M_AXI_ARCACHE  
;   wire [2 : 0]                            M_AXI_ARPROT   
;   wire [3 : 0]                            M_AXI_ARQOS    
;   wire [3 : 0]                            S_AXI_ARREGION
;   wire [AXI_ARUSER_WIDTH-1 : 0]           M_AXI_ARUSER   
;   wire                                    M_AXI_ARVALID  
;   wire                                    M_AXI_ARREADY  

;   wire [AXI_ID_WIDTH-1 : 0]               M_AXI_RID      
;   wire [AXI_DATA_WIDTH-1 : 0]             M_AXI_RDATA    
;   wire [1 : 0]                            M_AXI_RRESP    
;   wire                                    M_AXI_RLAST    
;   wire [AXI_RUSER_WIDTH-1 : 0]            M_AXI_RUSER    
;   wire                                    M_AXI_RVALID   
;   wire                                    M_AXI_RREADY   
;

always #(_AXI_PERIOD_/2) M_AXI_ACLK = ~M_AXI_ACLK;

initial begin
    #(_AXI_PERIOD_*10);
    M_AXI_ARESETN = 1'b1;
end

parameter _ADC_PERIOD_ = 10;
reg adc_clk_ch_1 = 0;
initial begin
    #3;
    forever begin
		#(_ADC_PERIOD_/2)
		adc_clk_ch_1 = ~adc_clk_ch_1;
	end
end

parameter _USB_PERIOD_ = 10;
reg usb_clk_ch_1 = 0;
initial begin
    #1;
    forever begin
		#(_USB_PERIOD_/2)
		usb_clk_ch_1 = ~usb_clk_ch_1;
	end
end

reg [13:0] cnt = 0;
always @(posedge adc_clk_ch_1)begin
    cnt <= cnt + 1;
end

wire [31:0]	usb_data_ch_1;


axis2ddr_top #(
        // Base address of targeted slave
	    .C_M_TARGET_SLAVE_BASE_ADDR	(32'h10000000)
		// Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
	,   .C_M_AXI_BURST_LEN	    ( 16 )
		// Thread ID Width
	,   .C_M_AXI_ID_WIDTH	    ( 1 )
		// Width of Address Bus
	,   .C_M_AXI_ADDR_WIDTH	    ( AXI_ADDR_WIDTH )
		// Width of Data Bus
	,   .C_M_AXI_DATA_WIDTH	    ( AXI_DATA_WIDTH )
		// Width of User Write Address Bus
	,   .C_M_AXI_AWUSER_WIDTH	( 0 )
		// Width of User Read Address Bus
	,   .C_M_AXI_ARUSER_WIDTH	( 0 )
		// Width of User Write Data Bus
	,   .C_M_AXI_WUSER_WIDTH	( 0 )
		// Width of User Read Data Bus
	,   .C_M_AXI_RUSER_WIDTH	( 0 )
	    // Width of User Response Bus
	,   .C_M_AXI_BUSER_WIDTH	( 0 )
)u_axis2ddr_top(
//----------------------------------------------------
// Adc Data Input
     	.adc_clk_ch_1			(adc_clk_ch_1	)
    ,	.adc_data_ch_1			(cnt			)

//----------------------------------------------------
// Usb Data Output
    ,	.usb_clk_ch_1			(usb_clk_ch_1	)
    ,	.usb_burst_trigger_ch1	(1)
	,	.usb_data_req			(1)
    ,	.usb_data_ch_1			(usb_data_ch_1	)

//----------------------------------------------------
// AXI-FULL master port
    ,   .M_AXI_ACLK             (M_AXI_ACLK     )
    ,   .M_AXI_ARESETN          (M_AXI_ARESETN  )

    //----------------Write Address Channel----------------//
    ,   .M_AXI_AWID             (M_AXI_AWID     )
    ,   .M_AXI_AWADDR           (M_AXI_AWADDR   )
    ,   .M_AXI_AWLEN            (M_AXI_AWLEN    )
    ,   .M_AXI_AWSIZE           (M_AXI_AWSIZE   )
    ,   .M_AXI_AWBURST          (M_AXI_AWBURST  )
    ,   .M_AXI_AWLOCK           (M_AXI_AWLOCK   )
    ,   .M_AXI_AWCACHE          (M_AXI_AWCACHE  )
    ,   .M_AXI_AWPROT           (M_AXI_AWPROT   )
    ,   .M_AXI_AWQOS            (M_AXI_AWQOS    )
    ,   .M_AXI_AWUSER           (M_AXI_AWUSER   )
    ,   .M_AXI_AWVALID          (M_AXI_AWVALID  )
    ,   .M_AXI_AWREADY          (M_AXI_AWREADY  )

    //----------------Write Data Channel----------------//
    ,   .M_AXI_WDATA            (M_AXI_WDATA    )
    ,   .M_AXI_WSTRB            (M_AXI_WSTRB    )
    ,   .M_AXI_WLAST            (M_AXI_WLAST    )
    ,   .M_AXI_WUSER            (M_AXI_WUSER    )
    ,   .M_AXI_WVALID           (M_AXI_WVALID   )
    ,   .M_AXI_WREADY           (M_AXI_WREADY   )

    //----------------Write Response Channel----------------//
    ,   .M_AXI_BID              (M_AXI_BID      )
    ,   .M_AXI_BRESP            (M_AXI_BRESP    )
    ,   .M_AXI_BUSER            (M_AXI_BUSER    )
    ,   .M_AXI_BVALID           (M_AXI_BVALID   )
    ,   .M_AXI_BREADY           (M_AXI_BREADY   )

    //----------------Read Address Channel----------------//
    ,   .M_AXI_ARID             (M_AXI_ARID     )
    ,   .M_AXI_ARADDR           (M_AXI_ARADDR   )
    ,   .M_AXI_ARLEN            (M_AXI_ARLEN    )
    ,   .M_AXI_ARSIZE           (M_AXI_ARSIZE   )
    ,   .M_AXI_ARBURST          (M_AXI_ARBURST  )
    ,   .M_AXI_ARLOCK           (M_AXI_ARLOCK   )
    ,   .M_AXI_ARCACHE          (M_AXI_ARCACHE  )
    ,   .M_AXI_ARPROT           (M_AXI_ARPROT   )
    ,   .M_AXI_ARQOS            (M_AXI_ARQOS    )
    ,   .M_AXI_ARUSER           (M_AXI_ARUSER   )
    ,   .M_AXI_ARVALID          (M_AXI_ARVALID  )
    ,   .M_AXI_ARREADY          (M_AXI_ARREADY  )

    //----------------Read Data Channel----------------//
    ,   .M_AXI_RID              (M_AXI_RID      )
    ,   .M_AXI_RDATA            (M_AXI_RDATA    )
    ,   .M_AXI_RRESP            (M_AXI_RRESP    )
    ,   .M_AXI_RLAST            (M_AXI_RLAST    )
    ,   .M_AXI_RUSER            (M_AXI_RUSER    )
    ,   .M_AXI_RVALID           (M_AXI_RVALID   )
    ,   .M_AXI_RREADY           (M_AXI_RREADY   )
);

//Virtual AXI-FULL MEMORY 
	saxi_full_v1_0_S00_AXI # ( 
		.C_S_AXI_ID_WIDTH       (AXI_ID_WIDTH     ),
		.C_S_AXI_DATA_WIDTH     (AXI_DATA_WIDTH   ),
		.C_S_AXI_ADDR_WIDTH     (AXI_ADDR_WIDTH   ),
		.C_S_AXI_AWUSER_WIDTH   (AXI_AWUSER_WIDTH ),
		.C_S_AXI_ARUSER_WIDTH   (AXI_ARUSER_WIDTH ),
		.C_S_AXI_WUSER_WIDTH    (AXI_WUSER_WIDTH  ),
		.C_S_AXI_RUSER_WIDTH    (AXI_RUSER_WIDTH  ),
		.C_S_AXI_BUSER_WIDTH    (AXI_BUSER_WIDTH  )
	) saxi_full_v1_0_S00_AXI_inst (
		    .S_AXI_ACLK         (M_AXI_ACLK     )
		,   .S_AXI_ARESETN      (M_AXI_ARESETN  )
    
		,   .S_AXI_AWID         (M_AXI_AWID     )
		,   .S_AXI_AWADDR       (M_AXI_AWADDR   )
		,   .S_AXI_AWLEN        (M_AXI_AWLEN    )
		,   .S_AXI_AWSIZE       (M_AXI_AWSIZE   )
		,   .S_AXI_AWBURST      (M_AXI_AWBURST  )
		,   .S_AXI_AWLOCK       (M_AXI_AWLOCK   )
		,   .S_AXI_AWCACHE      (M_AXI_AWCACHE  )
		,   .S_AXI_AWPROT       (M_AXI_AWPROT   )
		,   .S_AXI_AWQOS        (M_AXI_AWQOS    )
		,   .S_AXI_AWREGION     (M_AXI_AWREGION )//unconnected
		,   .S_AXI_AWUSER       (M_AXI_AWUSER   )
		,   .S_AXI_AWVALID      (M_AXI_AWVALID  )
		,   .S_AXI_AWREADY      (M_AXI_AWREADY  )
    
		,   .S_AXI_WDATA        (M_AXI_WDATA    )
		,   .S_AXI_WSTRB        (M_AXI_WSTRB    )
		,   .S_AXI_WLAST        (M_AXI_WLAST    )
		,   .S_AXI_WUSER        (M_AXI_WUSER    )
		,   .S_AXI_WVALID       (M_AXI_WVALID   )
		,   .S_AXI_WREADY       (M_AXI_WREADY   )
    
		,   .S_AXI_BID          (M_AXI_BID      )
		,   .S_AXI_BRESP        (M_AXI_BRESP    )
		,   .S_AXI_BUSER        (M_AXI_BUSER    )
		,   .S_AXI_BVALID       (M_AXI_BVALID   )
		,   .S_AXI_BREADY       (M_AXI_BREADY   )
    
		,   .S_AXI_ARID         (M_AXI_ARID     )
		,   .S_AXI_ARADDR       (M_AXI_ARADDR   )
		,   .S_AXI_ARLEN        (M_AXI_ARLEN    )
		,   .S_AXI_ARSIZE       (M_AXI_ARSIZE   )
		,   .S_AXI_ARBURST      (M_AXI_ARBURST  )
		,   .S_AXI_ARLOCK       (M_AXI_ARLOCK   )
		,   .S_AXI_ARCACHE      (M_AXI_ARCACHE  )
		,   .S_AXI_ARPROT       (M_AXI_ARPROT   )
		,   .S_AXI_ARQOS        (M_AXI_ARQOS    )
		,   .S_AXI_ARREGION     (M_AXI_ARREGION )//unconnected
		,   .S_AXI_ARUSER       (M_AXI_ARUSER   )
		,   .S_AXI_ARVALID      (M_AXI_ARVALID  )
		,   .S_AXI_ARREADY      (M_AXI_ARREADY  )
    
		,   .S_AXI_RID          (M_AXI_RID      )
		,   .S_AXI_RDATA        (M_AXI_RDATA    )
		,   .S_AXI_RRESP        (M_AXI_RRESP    )
		,   .S_AXI_RLAST        (M_AXI_RLAST    )
		,   .S_AXI_RUSER        (M_AXI_RUSER    )
		,   .S_AXI_RVALID       (M_AXI_RVALID   )
		,   .S_AXI_RREADY       (M_AXI_RREADY   )
	);



// function called clogb2 that returns an integer which has the 
// value of the ceiling of the log base 2.
function integer clogb2 (input integer bit_depth);
begin
for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
	bit_depth = bit_depth >> 1;
end
endfunction // WAIT_COUNT_BITS is the width of the wait counter.

endmodule
