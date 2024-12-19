`timescale 1ns / 1ps

module fdma_test#(
    //总存储空间大小409600
    parameter TEST_MEM_SIZE   = 32'd409600      ,
    //突发传输长度
    parameter FDMA_BURST_LEN  = 16'd1024        ,
    //传输地址偏移
    parameter ADDR_MEM_OFFSET = 1024*1024*20
)(
    input               ui_clk      ,
    input               fdma_rstn   ,
    output      [31: 0] fdma_waddr  ,
    output  reg         fdma_wareq  ,
    output      [15: 0] fdma_wsize  ,
    input               fdma_wbusy  ,
    output  reg [127:0] fdma_wdata  ,
    input               fdma_wvalid ,
    output              fdma_wready ,

    output      [31: 0] fdma_raddr  ,
    output  reg         fdma_rareq  ,
    output      [15: 0] fdma_rsize  ,
    input               fdma_rbusy  ,
    input       [127:0] fdma_rdata  ,
    input               fdma_rvalid ,
    output              fdma_rready
);

assign fdma_rready = 1'b1;
assign fdma_wready = 1'b1;

parameter WRITE1 = 0;
parameter WRITE2 = 1;
parameter READ1  = 2;
parameter READ2  = 3;
parameter ADDR_INC = FDMA_BURST_LEN*16;

reg [31: 0] fdma_waddr_r;
reg [15 :0] fdma_rcnt = 0;
reg [2  :0] T_S = 0;

assign fdma_waddr = fdma_waddr_r + ADDR_MEM_OFFSET;
assign fdma_raddr = fdma_waddr;

assign fdma_wsize = FDMA_BURST_LEN;
assign fdma_rsize = FDMA_BURST_LEN;



reg [10:0] rst_cnt = 0;

always @(posedge ui_clk)
    if(fdma_rstn == 1'b0)begin
        rst_cnt <=0;
    end
    else begin
        if(rst_cnt[10] == 1'b0)
            rst_cnt <= rst_cnt + 1'b1;
        else
            rst_cnt <= rst_cnt;
    end

always @(posedge ui_clk)begin
    if(rst_cnt[10] == 1'b0)begin
        T_S <=0;
        fdma_wareq      <=  0;
        fdma_rareq      <=  0;
        fdma_wdata      <=  0;
        fdma_waddr_r    <=  0;
    end
    else begin
        case(T_S)
        WRITE1:begin
            if(fdma_waddr_r > TEST_MEM_SIZE)
                fdma_waddr_r<=0;
                if(!fdma_wbusy)begin
                    fdma_wareq  <= 1'b1;
                    fdma_wdata  <= 0;
                end
                if(fdma_wareq&&fdma_wbusy)begin
                    fdma_wareq  <= 1'b0;
                    T_S         <= WRITE2;
                end
        end
        WRITE2:begin
            if(!fdma_wbusy) begin
                T_S <= READ1;
                fdma_wdata  <= 32'd0;
            end
            else if(fdma_wvalid) begin
                fdma_wdata <= fdma_wdata + 1'b1;
            end
        end

        READ1:begin
            if(!fdma_rbusy)begin
                fdma_rareq  <= 1'b1;
                fdma_rcnt   <= 0;
            end
            if(fdma_rareq&&fdma_rbusy)begin
                fdma_rareq  <= 1'b0;
                T_S         <= READ2;
            end
        end
        READ2:begin
            if(!fdma_rbusy) begin
                T_S <= WRITE1;
                fdma_waddr_r  <= fdma_waddr_r + ADDR_INC;
            end
            else if(fdma_rvalid) begin
                fdma_rcnt <= fdma_rcnt + 1'b1;
            end
        end
        default:
            T_S <= WRITE1;
        endcase
    end
end

wire test_error = ((fdma_rready&&fdma_rvalid) && (fdma_rcnt[15:0] != fdma_rdata[15:0]));

ila_for_fdma ila_for_fdma_inst (
	.clk        (ui_clk         ),
	.probe0     ({fdma_wdata[15:0],fdma_wareq,fdma_wvalid,fdma_wready,fdma_wbusy}                       ),
	.probe1     ({fdma_rdata[15:0],fdma_rcnt[15:0],fdma_rvalid,fdma_rready,fdma_rbusy,T_S,test_error}   )
);



endmodule
