module tx_unit(
    input clk,
    input rst,
    input baud_tick,
    input tx_start,
    input [7:0] data,
    output reg tx,
    output reg tx_done
);

reg [3:0] bit_count = 0;
reg [9:0] shift_reg = 10'b1111111111;
reg busy = 0;

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        tx <= 1'b1;
        tx_done <= 0;
        busy <= 0;
        bit_count <= 0;
        shift_reg <= 10'b1111111111;
    end

    else
    begin

        if(tx_start && !busy)
        begin
            busy <= 1'b1;

            shift_reg <= {1'b1, data, 1'b0};

            tx <= 1'b0;

            bit_count <= 0;

            tx_done <= 0;
        end

        else if(baud_tick && busy)
        begin
            tx <= shift_reg[0];

            shift_reg <= shift_reg >> 1;

            bit_count <= bit_count + 1;

            if(bit_count == 9)
            begin
                busy <= 0;
                tx_done <= 1;
                tx <= 1'b1;
            end
        end
    end
end

endmodule
