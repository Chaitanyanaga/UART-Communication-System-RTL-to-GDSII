###############################################################################
# Created by write_sdc
# Thu Jun 25 18:31:28 2026
###############################################################################
current_design uart_top
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data[4]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data[5]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data[6]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data[7]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rst}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {tx_start}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rx_data[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rx_data[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rx_data[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rx_data[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rx_data[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rx_data[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rx_data[6]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rx_data[7]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rx_done}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {tx}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {tx_done}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {rx_done}]
set_load -pin_load 0.0334 [get_ports {tx}]
set_load -pin_load 0.0334 [get_ports {tx_done}]
set_load -pin_load 0.0334 [get_ports {rx_data[7]}]
set_load -pin_load 0.0334 [get_ports {rx_data[6]}]
set_load -pin_load 0.0334 [get_ports {rx_data[5]}]
set_load -pin_load 0.0334 [get_ports {rx_data[4]}]
set_load -pin_load 0.0334 [get_ports {rx_data[3]}]
set_load -pin_load 0.0334 [get_ports {rx_data[2]}]
set_load -pin_load 0.0334 [get_ports {rx_data[1]}]
set_load -pin_load 0.0334 [get_ports {rx_data[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rst}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {tx_start}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
