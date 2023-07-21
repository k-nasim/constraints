
current_design top



# Clock Constraints
create_clock -name "top.clk1" -period 10 -waveform {0 5} [get_ports clk1] -domain domain1
create_clock -name "top.clk2" -period 20 -waveform {0 10} [get_ports clk2] -domain domain2

//# Input Delay Constraints
//set_input_delay -clock clkout1 -min 1 -max 1 [get_ports datain]

set_input_delay 1.0 -clock clk1 {datain}
set_input_delay 1.7 -clock clk2-add_delay { dataout }

//# Output Delay Constraint
//set_output_delay -clock clkout2 -min 1 -max 1 [get_ports dataout]

set_output_delay 1.0 -clock clk1 {datain}
set_output_delay 1.7 -clock clk2 -add_delay {dataout}



# Latency Constraint
set_latency 1 [get_clocks *]


set_case_analysis sel -name "top.sel" -value 1



set_clock_uncertainty -setup 0.6 [get_clocks clk1]
set_clock_uncertainty -hold 0.4 [get_clocks clk1]

set_clock_uncertainty -setup 0.6 [get_clocks clk2]
set_clock_uncertainty -hold 0.4 [get_clocks clk2]

