module trigger_ctrl(
    input           clk,
    input           rst_n,
    input [31:0]    usb_wr_data,
    input           usb_wr_en,
    input           In_Trig,
    output reg      trigger_en
);
reg trigger_temp;
reg In_Trig_d1;
reg In_Trig_d2;

always @(posedge clk) begin
    In_Trig_d1  <= In_Trig;
    In_Trig_d2  <= In_Trig_d1;
end

always @(posedge clk or negedge rst_n)begin
    if(!rst_n) begin
        trigger_temp <= 0;
    end
    else if(usb_wr_en) begin
        if(usb_wr_data[31:0] == 32'h0001)begin
            trigger_temp <= 1;
        end
        else if(usb_wr_data[31:0] == 32'h0000)begin
            trigger_temp <= 0;
        end
    end
end

always @(posedge clk or negedge rst_n)begin
    if(!rst_n) begin
        trigger_en <= 0;
    end
    else if(trigger_temp & (!In_Trig_d2 & In_Trig_d1)) begin
        trigger_en <= 1;
    end
    else if(!trigger_temp) begin
        trigger_en <= 0;
    end
end

endmodule