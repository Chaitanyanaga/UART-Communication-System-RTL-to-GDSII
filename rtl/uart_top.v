module uart_top(
    input clk,
    input rst,
    input tx_start,
    input [7:0] data,
    output tx,
    output tx_done,
    output [7:0] rx_data,
    output rx_done
);

wire baud_tick;
wire rx;

assign rx = tx;

baud_gen bg (
    .clk(clk),
    .rst(rst),
    .baud_tick(baud_tick)
);

tx_unit txu (
    .clk(clk),
    .rst(rst),
    .baud_tick(baud_tick),
    .tx_start(tx_start),
    .data(data),
    .tx(tx),
    .tx_done(tx_done)
);

rx_unit rxu (
    .clk(clk),
    .rst(rst),
    .baud_tick(baud_tick),
    .rx(rx),
    .rx_data(rx_data),
    .rx_done(rx_done)
);

endmodule
