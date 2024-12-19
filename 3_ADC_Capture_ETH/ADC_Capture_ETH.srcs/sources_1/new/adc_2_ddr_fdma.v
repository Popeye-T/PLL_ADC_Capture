`timescale 1ns / 1ps

module adc_2_ddr_fdma#(
    //总存储空间大小409600
    parameter TEST_MEM_SIZE   = 32'd409600      ,
    //突发传输长度
    parameter FDMA_BURST_LEN  = 16'd128        ,
    //传输地址偏移
    parameter ADDR_MEM_OFFSET = 1024*1024*20
)(
    input               adc_clk_in              ,//200M
    input      [15: 0]  adc_data_in             ,

    input               ui_clk                  ,//100M
    input               fdma_rstn               ,
    output      [31: 0] fdma_waddr              ,
    output  reg         fdma_wareq              ,
    output      [15: 0] fdma_wsize              ,
    input               fdma_wbusy              ,
    output      [127:0] fdma_wdata              ,
    input               fdma_wvalid             ,
    output              fdma_wready             ,

    output      [31: 0] fdma_raddr              ,
    output  reg         fdma_rareq              ,
    output      [15: 0] fdma_rsize              ,
    input               fdma_rbusy              ,
    input       [127:0] fdma_rdata              ,
    input               fdma_rvalid             ,
    output              fdma_rready
);

reg     [31:0]  fdma_waddr_r                                    ;
reg     [15:0]  fdma_rcnt   =   0                               ;
reg     [2:0]   T_S         =   0                               ;
reg     [10:0]  rst_cnt     =   0                               ;
reg     [15:0]  sim_data_gen                                    ;
wire    [127:0] fifo2ddr_data                                   ;
wire            full                                            ;
wire            almost_full                                     ;
wire            empty                                           ;
wire            almost_empty                                    ;
wire            wr_rst_busy                                     ;
wire            rd_rst_busy                                     ;
wire            ui_rst_n                                        ;
assign          ui_rst_n    =   rst_cnt[10]                     ;//rst_cnt从0变成1就是低电平复位过程
assign          fdma_rready =   1'b1                            ;
assign          fdma_wready =   1'b1                            ;
assign          fdma_waddr  =   fdma_waddr_r + ADDR_MEM_OFFSET  ;
assign          fdma_raddr  =   fdma_waddr                      ;
assign          fdma_wsize  =   FDMA_BURST_LEN                  ;
assign          fdma_rsize  =   FDMA_BURST_LEN                  ;
assign          fdma_wdata  =   fifo2ddr_data    ;
parameter       WRITE1      =   0                               ;
parameter       WRITE2      =   1                               ;
parameter       READ1       =   2                               ;
parameter       READ2       =   3                               ;
parameter       ADDR_INC    =   FDMA_BURST_LEN * 16             ;

//根据ZYNQ初始化完成复位信号，实现延时复位
always @(posedge ui_clk)begin
    if(fdma_rstn == 1'b0)begin
        rst_cnt <=0;
    end
    else begin
        if(rst_cnt[10] == 1'b0)
            rst_cnt <= rst_cnt + 1'b1;
        else
            rst_cnt <= rst_cnt;
    end
end

//产生16bit数据
always @(posedge ui_clk)begin
    if((rst_cnt[10] == 1'b0) && (T_S == 0))begin
        sim_data_gen <= 'd0;
    end
    else begin
        sim_data_gen <= sim_data_gen + 1;
    end
end

// ADC写入FIFO ====>>  DDR读取FIFO
//200M * 16bit ====>> 100M * 128bit
//出FIFO的数据量大于入FIFO的数据，不会被写爆
//满1024触发一次DDR的突发传输
fifo_w16x128_1024 fifo_w16x128_1024_inst (
    .rst            (~ui_rst_n      ),// input wire rst
    .wr_clk         (adc_clk_in     ),// input wire wr_clk
    .rd_clk         (ui_clk         ),// input wire rd_clk
    .din            (sim_data_gen   ),// input wire [15 : 0] din
    .wr_en          (1              ),// input wire wr_en
    //读信号由后面的状态机产生，写有效信号的时候读取数据写入
    .rd_en          (fdma_wvalid    ),// input wire rd_en
    .dout           (fifo2ddr_data  ),// output wire [127 : 0] dout
    .full           (full           ),// output wire full
    .almost_full    (almost_full    ),// output wire almost_full
    .empty          (empty          ),// output wire empty
    .almost_empty   (almost_empty   ),// output wire almost_empty
    .wr_rst_busy    (wr_rst_busy    ),// output wire wr_rst_busy
    .rd_rst_busy    (rd_rst_busy    ) // output wire rd_rst_busy
);
//查看fifo数据是否正常
ila_for_fifo ila_for_fifo_inst (
	.clk        (adc_clk_in         ),// input wire clk
	.probe0     (sim_data_gen       ),// input wire [15:0]  probe0
	.probe1     (fifo2ddr_data[15:0]),// input wire [15:0]  probe1
	.probe2     (full               ), // input wire [0:0]  probe2
	.probe3     (empty              ) // input wire [0:0]  probe3
);

//状态机先写后读
always @(posedge ui_clk)begin
    if(rst_cnt[10] == 1'b0)begin
        T_S <=0;
        fdma_wareq  <= 1'b0;
        fdma_rareq  <= 1'b0;
        // fdma_wdata  <=0;
        fdma_waddr_r <=0;
    end
    else begin
        case(T_S)
        WRITE1:begin
            if(fdma_waddr_r>TEST_MEM_SIZE) fdma_waddr_r<=0;
                if(full && !fdma_wbusy)begin
                    fdma_wareq  <= 1'b1;
                    // fdma_wdata  <= 0;
                end
                if(fdma_wareq&&fdma_wbusy)begin
                    fdma_wareq  <= 1'b0;
                    T_S         <= WRITE2;
                end
        end
        WRITE2:begin
            if(!fdma_wbusy) begin
                T_S <= READ1;
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
