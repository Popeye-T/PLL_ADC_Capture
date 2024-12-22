
`timescale 1 ns / 1 ps

	module master_axi_full_v1_0 #
	(
		// Users to add parameters here
		parameter			BURST_TIMES					=	'd1000		,

		parameter			C_M_TARGET_SLAVE_BASE_ADDR	=	32'h40000000,
		parameter	integer	C_M_AXI_BURST_LEN			=	256			,
		parameter	integer	C_M_AXI_ID_WIDTH			=	1			,
		parameter	integer	C_M_AXI_ADDR_WIDTH			=	32			,
		parameter	integer	C_M_AXI_DATA_WIDTH			=	128			,
		parameter	integer	C_M_AXI_AWUSER_WIDTH		=	0			,
		parameter	integer	C_M_AXI_ARUSER_WIDTH		=	0			,
		parameter	integer	C_M_AXI_WUSER_WIDTH			=	0			,
		parameter	integer	C_M_AXI_RUSER_WIDTH			=	0			,
		parameter	integer	C_M_AXI_BUSER_WIDTH			=	0
	)
	(
	//user define
	input	wire	[127:0]							data_trans			,
	input	wire									data_trans_signal	,
	output	wire									data_ready_trans	,
	output	reg 									state_write_busy	,
	output	reg 									state_read_busy		,
	output	reg 									state_wait			,

	input	wire									INIT_AXI_TXN		,
	output	wire									TXN_DONE			,
	output	reg										ERROR				,
	input	wire									M_AXI_ACLK			,
	input	wire									M_AXI_ARESETN		,
	output	wire	[C_M_AXI_ID_WIDTH-1 : 0]		M_AXI_AWID			,
	output	wire	[C_M_AXI_ADDR_WIDTH-1 : 0]		M_AXI_AWADDR		,
	output	wire	[7 : 0]							M_AXI_AWLEN			,
	output	wire	[2 : 0]							M_AXI_AWSIZE		,
	output	wire	[1 : 0]							M_AXI_AWBURST		,
	output	wire									M_AXI_AWLOCK		,
	output	wire	[3 : 0]							M_AXI_AWCACHE		,
	output	wire	[2 : 0]							M_AXI_AWPROT		,
	output	wire	[3 : 0]							M_AXI_AWQOS			,
	output	wire	[C_M_AXI_AWUSER_WIDTH-1 : 0]	M_AXI_AWUSER		,
	output	wire									M_AXI_AWVALID		,
	input	wire									M_AXI_AWREADY		,
	output	wire	[C_M_AXI_DATA_WIDTH-1 : 0]		M_AXI_WDATA			,
	output	wire	[C_M_AXI_DATA_WIDTH/8-1 : 0] 	M_AXI_WSTRB			,
	output	wire	 								M_AXI_WLAST			,
	output	wire	[C_M_AXI_WUSER_WIDTH-1 : 0]		M_AXI_WUSER			,
	output	wire	 								M_AXI_WVALID		,
	input	wire	 								M_AXI_WREADY		,
	input	wire	[C_M_AXI_ID_WIDTH-1 : 0] 		M_AXI_BID			,
	input	wire	[1 : 0] 						M_AXI_BRESP			,
	input	wire	[C_M_AXI_BUSER_WIDTH-1 : 0] 	M_AXI_BUSER			,
	input	wire	 								M_AXI_BVALID		,
	output	wire	 								M_AXI_BREADY		,
	output	wire	[C_M_AXI_ID_WIDTH-1 : 0] 		M_AXI_ARID			,
	output	wire	[C_M_AXI_ADDR_WIDTH-1 : 0] 		M_AXI_ARADDR		,
	output	wire	[7 : 0] 						M_AXI_ARLEN			,
	output	wire	[2 : 0] 						M_AXI_ARSIZE		,
	output	wire	[1 : 0] 						M_AXI_ARBURST		,
	output	wire							 		M_AXI_ARLOCK		,
	output	wire	[3 : 0] 						M_AXI_ARCACHE		,
	output	wire	[2 : 0] 						M_AXI_ARPROT		,
	output	wire	[3 : 0] 						M_AXI_ARQOS			,
	output	wire	[C_M_AXI_ARUSER_WIDTH-1 : 0] 	M_AXI_ARUSER		,
	output	wire	 								M_AXI_ARVALID		,
	input	wire	 								M_AXI_ARREADY		,
	input	wire	[C_M_AXI_ID_WIDTH-1 : 0] 		M_AXI_RID			,
	input	wire	[C_M_AXI_DATA_WIDTH-1 : 0]		M_AXI_RDATA			,
	input	wire	[1 : 0] 						M_AXI_RRESP			,
	input	wire	 								M_AXI_RLAST			,
	input	wire	[C_M_AXI_RUSER_WIDTH-1 : 0]		M_AXI_RUSER			,
	input	wire									M_AXI_RVALID		,
	output	wire									M_AXI_RREADY
);






//位宽计算函数
function integer clogb2 (input integer bit_depth);
	begin
		for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
			bit_depth = bit_depth >> 1;
	end
endfunction

localparam integer C_TRANSACTIONS_NUM = clogb2(C_M_AXI_BURST_LEN-1);
localparam integer C_MASTER_LENGTH	= 12;

//状态机
reg [3:0] mst_exec_state;
parameter [3:0] IDLE			= 4'b0000,
				INIT_WRITE		= 4'b0001,
				INIT_READ		= 4'b0010,
				INIT_COMPARE	= 4'b0100,
				INIT_WAIT		= 4'b1000;

//AXI4 internal temp signals
reg		[C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr				;
reg		 							axi_awvalid				;
reg		[C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata				;
reg		 							axi_wlast				;
reg		 							axi_wvalid				;
reg		 							axi_bready				;
reg		[C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr				;
reg		 							axi_arvalid				;
reg		 							axi_rready				;
reg		[C_TRANSACTIONS_NUM : 0] 	write_index				;
reg		[C_TRANSACTIONS_NUM : 0] 	read_index				;
wire	[C_TRANSACTIONS_NUM+4 : 0]	burst_size_bytes		;
reg		[10 : 0] 					write_burst_counter		;
reg		[10 : 0] 					read_burst_counter		;
reg  								start_single_burst_write;
reg  								start_single_burst_read	;
reg  								writes_done				;
reg  								reads_done				;
reg  								compare_done			;
reg  								read_mismatch			;
reg  								burst_write_active		;
reg  								burst_read_active		;
reg 	[C_M_AXI_DATA_WIDTH-1 : 0] 	expected_rdata			;
wire  								wnext					;
wire  								rnext					;
reg  								init_txn_ff				;
reg  								init_txn_ff2			;
reg  								init_txn_edge			;
wire  								init_txn_pulse			;

assign	M_AXI_AWID			=	'b0													;
assign	M_AXI_AWADDR		=	C_M_TARGET_SLAVE_BASE_ADDR + axi_awaddr				;
assign	M_AXI_AWLEN			=	C_M_AXI_BURST_LEN - 1								;
assign	M_AXI_AWSIZE		=	clogb2((C_M_AXI_DATA_WIDTH/8)-1)					;
assign	M_AXI_AWBURST		=	2'b01												;
assign	M_AXI_AWLOCK		=	1'b0												;
assign	M_AXI_AWCACHE		=	4'b0010												;
assign	M_AXI_AWPROT		=	3'h0												;
assign	M_AXI_AWQOS			=	4'h0												;
assign	M_AXI_AWUSER		=	'b1													;
assign	M_AXI_AWVALID		=	axi_awvalid											;
assign	M_AXI_WDATA			=	axi_wdata											;
assign	M_AXI_WSTRB			=	{(C_M_AXI_DATA_WIDTH/8){1'b1}}						;
assign	M_AXI_WLAST			=	axi_wlast											;
assign	M_AXI_WUSER			=	'b0													;
assign	M_AXI_WVALID		=	axi_wvalid											;
assign	M_AXI_BREADY		=	axi_bready											;
assign	M_AXI_ARID			=	'b0													;
assign	M_AXI_ARADDR		=	C_M_TARGET_SLAVE_BASE_ADDR + axi_araddr				;
assign	M_AXI_ARLEN			=	C_M_AXI_BURST_LEN - 1								;
assign	M_AXI_ARSIZE		=	clogb2((C_M_AXI_DATA_WIDTH/8)-1)					;
assign	M_AXI_ARBURST		=	2'b01												;
assign	M_AXI_ARLOCK		=	1'b0												;
assign	M_AXI_ARCACHE		=	4'b0010												;
assign	M_AXI_ARPROT		=	3'h0												;
assign	M_AXI_ARQOS			=	4'h0												;
assign	M_AXI_ARUSER		=	'b1													;
assign	M_AXI_ARVALID		=	axi_arvalid											;
assign	M_AXI_RREADY		=	axi_rready											;
assign	TXN_DONE			=	compare_done										;
assign	burst_size_bytes	=	C_M_AXI_BURST_LEN * C_M_AXI_DATA_WIDTH/8			;
assign	init_txn_pulse		=	(!data_trans_signal_d2) && data_trans_signal_d1		;


//用户信号定义
reg	data_trans_signal_d1;
reg	data_trans_signal_d2;
always @(posedge M_AXI_ACLK)begin
	if (M_AXI_ARESETN == 0 )begin
		data_trans_signal_d1 <= 1'b0;
		data_trans_signal_d2 <= 1'b0;
	end
	else begin
		data_trans_signal_d1 <= data_trans_signal;
		data_trans_signal_d2 <= data_trans_signal_d1;
	end
end
assign	data_ready_trans = (!axi_wlast) && ((M_AXI_AWREADY && axi_awvalid) || wnext);


//--------------------
//Write Address Channel
//--------------------
always @(posedge M_AXI_ACLK) begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 ) begin
		axi_awvalid <= 1'b0;
	end
	else if (~axi_awvalid && start_single_burst_write) begin
		axi_awvalid <= 1'b1;
	end
	else if (M_AXI_AWREADY && axi_awvalid) begin
		axi_awvalid <= 1'b0;
	end
	else begin
		axi_awvalid <= axi_awvalid;
	end
end
always @(posedge M_AXI_ACLK)begin
if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)begin
	axi_awaddr <= 'b0;
end
else if (M_AXI_AWREADY && axi_awvalid)begin
	axi_awaddr <= axi_awaddr + burst_size_bytes;
end
else
	axi_awaddr <= axi_awaddr;
end
//--------------------
//Write Data Channel
//--------------------
assign wnext = M_AXI_WREADY & axi_wvalid;
always @(posedge M_AXI_ACLK) begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 ) begin
		axi_wvalid <= 1'b0;
	end
	else if (~axi_wvalid && M_AXI_AWREADY && axi_awvalid) begin
		axi_wvalid <= 1'b1;
	end
	else if (wnext && axi_wlast) begin
		axi_wvalid <= 1'b0;
	end
	else begin
		axi_wvalid <= axi_wvalid;
	end
end
always @(posedge M_AXI_ACLK) begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 ) begin
		axi_wlast <= 1'b0;
	end
	else if (((write_index == C_M_AXI_BURST_LEN-2 && C_M_AXI_BURST_LEN >= 2) && wnext) || (C_M_AXI_BURST_LEN == 1 )) begin
		axi_wlast <= 1'b1;
	end
	else if (wnext) begin
		axi_wlast <= 1'b0;
	end
	else if (axi_wlast && C_M_AXI_BURST_LEN == 1) begin
		axi_wlast <= 1'b0;
	end
	else begin
		axi_wlast <= axi_wlast;
	end
end
always @(posedge M_AXI_ACLK) begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || start_single_burst_write == 1'b1) begin
		write_index <= 0;
	end
	else if (wnext && (write_index != C_M_AXI_BURST_LEN-1)) begin
		write_index <= write_index + 1;
	end
	else begin
		write_index <= write_index;
	end
end
always @(posedge M_AXI_ACLK)begin
if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)
	axi_wdata <= 'd0;
else if (M_AXI_AWREADY && axi_awvalid)
	axi_wdata <= data_trans;
else if (wnext)
	axi_wdata <= data_trans;
else
	axi_wdata <= axi_wdata;
end

//----------------------------
//Write Response (B) Channel
//----------------------------
always @(posedge M_AXI_ACLK) begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 ) begin
		axi_bready <= 1'b0;
	end
	else if (M_AXI_BVALID && ~axi_bready) begin
		axi_bready <= 1'b1;
	end
	else if (axi_bready) begin
		axi_bready <= 1'b0;
	end
	else begin
		axi_bready <= axi_bready;
	end
end
//----------------------------
//Read Address Channel
//----------------------------
always @(posedge M_AXI_ACLK) begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 ) begin
		axi_arvalid <= 1'b0;
	end
	// If previously not valid, start next transaction
	else if (~axi_arvalid && start_single_burst_read) begin
		axi_arvalid <= 1'b1;
	end
	else if (M_AXI_ARREADY && axi_arvalid) begin
		axi_arvalid <= 1'b0;
	end
	else begin
		axi_arvalid <= axi_arvalid;
	end
end
always @(posedge M_AXI_ACLK) begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1) begin
		axi_araddr <= 'b0;
	end
	else if (M_AXI_ARREADY && axi_arvalid) begin
		axi_araddr <= axi_araddr + burst_size_bytes;
	end
	else begin
		axi_araddr <= axi_araddr;
	end
end
//--------------------------------
//Read Data (and Response) Channel
//--------------------------------
assign rnext = M_AXI_RVALID && axi_rready;
always @(posedge M_AXI_ACLK) begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || start_single_burst_read) begin
		read_index <= 0;
	end
	else if (rnext && (read_index != C_M_AXI_BURST_LEN-1)) begin
		read_index <= read_index + 1;
	end
	else begin
		read_index <= read_index;
	end
end
always @(posedge M_AXI_ACLK) begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 ) begin
		axi_rready <= 1'b0;
	end
	else if (M_AXI_RVALID) begin
		if (M_AXI_RLAST && axi_rready) begin
			axi_rready <= 1'b0;
		end
		else begin
			axi_rready <= 1'b1;
		end
	end
end
always @(posedge M_AXI_ACLK)begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )begin
		write_burst_counter <= 'b0;
	end
else if (M_AXI_AWREADY && axi_awvalid)begin
	if (write_burst_counter != BURST_TIMES)begin
		write_burst_counter <= write_burst_counter + 1'b1;
	end
end
else if(writes_done)
	write_burst_counter <= 0;
else
	write_burst_counter <= write_burst_counter;
end
always @(posedge M_AXI_ACLK)begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)begin
		read_burst_counter <= 'b0;
	end
else if (M_AXI_ARREADY && axi_arvalid)begin
	if (read_burst_counter != BURST_TIMES)begin
		read_burst_counter <= read_burst_counter + 1'b1;
	end
end
else if(reads_done)
	read_burst_counter <= 0;
else
	read_burst_counter <= read_burst_counter;
end
//FSM
always @ ( posedge M_AXI_ACLK)begin
if (M_AXI_ARESETN == 1'b0 )begin
	mst_exec_state     	 		<= IDLE;
	start_single_burst_write	<= 1'b0;
	start_single_burst_read 	<= 1'b0;
	compare_done      			<= 1'b0;
	state_write_busy		 	<= 1'b0;
	state_read_busy		 		<= 1'b0;
	state_wait 					<= 1'b0;
end
else begin
	case (mst_exec_state)
		IDLE:begin
			state_write_busy	<= 1'b0;
			state_read_busy		<= 1'b0;
			state_wait			<= 1'b1;
			if ( init_txn_pulse == 1'b1)begin
					mst_exec_state  <= INIT_WRITE;
					compare_done <= 1'b0;
				end
			else begin
				mst_exec_state  <= IDLE;
			end
		end
		INIT_WRITE:begin
			state_write_busy	<= 1'b1;
			state_read_busy		<= 1'b0;
			state_wait			<= 1'b0;
			if (writes_done)begin
				mst_exec_state <= INIT_READ;
			end
			else begin
				mst_exec_state  <= INIT_WRITE;
				if (~axi_awvalid && ~start_single_burst_write && ~burst_write_active)begin
					start_single_burst_write <= 1'b1;
				end
				else begin
					start_single_burst_write <= 1'b0; //Negate to generate a pulse
				end
			end
		end
		INIT_READ:begin
			state_write_busy	<= 1'b0;
			state_read_busy		<= 1'b1;
			state_wait			<= 1'b0;
			if (reads_done)begin
				mst_exec_state <= IDLE;
			end
			else begin
				mst_exec_state  <= INIT_READ;
				if (~axi_arvalid && ~burst_read_active && ~start_single_burst_read)begin
					start_single_burst_read <= 1'b1;
				end
				else begin
					start_single_burst_read <= 1'b0; //Negate to generate a pulse
				end
			end
		end
		INIT_WAIT:begin
			state_write_busy	<= 1'b0;
			state_read_busy		<= 1'b0;
			state_wait			<= 1'b1;
			mst_exec_state <= mst_exec_state;
		end
	endcase
	end
end

// Check for last write completion.
always @(posedge M_AXI_ACLK)begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)
		burst_write_active <= 1'b0;
	else if (start_single_burst_write)
		burst_write_active <= 1'b1;
	else if (M_AXI_BVALID && axi_bready)
		burst_write_active <= 0;
end

always @(posedge M_AXI_ACLK)begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)
		writes_done <= 1'b0;
	else if (M_AXI_BVALID && (write_burst_counter == BURST_TIMES) && axi_bready)
		writes_done <= 1'b1;
	else
		writes_done <= writes_done;
end

always @(posedge M_AXI_ACLK)begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)
		burst_read_active <= 1'b0;
	else if (start_single_burst_read)
		burst_read_active <= 1'b1;
	else if (M_AXI_RVALID && axi_rready && M_AXI_RLAST)
		burst_read_active <= 0;
end

always @(posedge M_AXI_ACLK)begin
	if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)
		reads_done <= 1'b0;
	else if (M_AXI_RVALID && axi_rready && (read_index == C_M_AXI_BURST_LEN-1) && (read_burst_counter == BURST_TIMES))
		reads_done <= 1'b1;
	else
		reads_done <= reads_done;
end

endmodule
