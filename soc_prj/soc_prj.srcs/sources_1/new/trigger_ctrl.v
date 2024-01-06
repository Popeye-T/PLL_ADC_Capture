module trigger_ctrl(
    input           clk,
    input           rst_n,
    input [31:0]    usb_wr_data,
    input           usb_wr_en,
    output reg      trigger_en
);

always @(posedge clk or negedge rst_n)begin
    if(!rst_n) begin
        trigger_en <= 0;
    end
    else if(usb_wr_en) begin
        if(usb_wr_data[31:0] == 32'h0001)begin
            trigger_en <= 1;
        end
        else if(usb_wr_data[31:0] == 32'h0000)begin
            trigger_en <= 0;
        end
    end
end

endmodule