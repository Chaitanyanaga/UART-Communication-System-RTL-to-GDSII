module rx_unit(
    input clk,
    input rst,
    input baud_tick,
    input rx,
    output reg [7:0] rx_data,
    output reg rx_done
);

reg [3:0] bit_count;
reg busy;

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        rx_data <= 8'b00000000;
        bit_count <= 0;
        busy <= 0;
        rx_done <= 0;
    end
    else
    begin
        rx_done <= 0;

        if(baud_tick)
        begin
            if(!busy && !rx)
            begin
                busy <= 1;
                bit_count <= 0;
            end
            else if(busy)
            begin
                rx_data <= {rx, rx_data[7:1]};
                bit_count <= bit_count + 1;

                if(bit_count == 7)
                begin
                    busy <= 0;
                    rx_done <= 1;
                end
            end
        end
    end
end

endmodule
