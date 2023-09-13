# Counter Module Constraints

# Define the clock
create_clock -period 10 [get_ports clk] -waveform {0 5}  # 100 MHz clock as an example.

# Clock Pulse Width
set_clock_min_pulse_width [get_clocks clk] 2.5  # Minimum half-cycle duration for a 100MHz clock
set_clock_max_pulse_width [get_clocks clk] 7.5  # Maximum half-cycle duration for a 100MHz clock

# Input Delays
set_input_delay -clock [get_clocks clk] -min 1.5 [get_ports reset]
set_input_delay -clock [get_clocks clk] -max 2.5 [get_ports reset]
set_input_delay -clock [get_clocks clk] -min 1.5 [get_ports ena]
set_input_delay -clock [get_clocks clk] -max 2.5 [get_ports ena]

# Output Delays
set_output_delay -clock [get_clocks clk] -min 1.5 [get_ports result]
set_output_delay -clock [get_clocks clk] -max 2.5 [get_ports result]

# Clock Uncertainty for setup and hold
set_clock_uncertainty -setup 0.5 [get_clocks clk]
set_clock_uncertainty -hold 0.2 [get_clocks clk]

# Max and Min Delays
set_max_delay -from [get_ports ena] -to [get_ports result] -rise 8
set_max_delay -from [get_ports ena] -to [get_ports result] -fall 7
set_min_delay -from [get_ports ena] -to [get_ports result] -rise 1
set_min_delay -from [get_ports ena] -to [get_ports result] -fall 1

# Pulse Width Constraints
set_min_pulse_width [get_ports reset] 2
set_max_pulse_width [get_ports reset] 10
set_min_pulse_width [get_ports ena] 2
set_max_pulse_width [get_ports ena] 10

# Load, Transition, and Fanout Constraints
set_load 0.1 [get_ports result]  # Assuming 0.1 pF as an example.
set_max_transition 2.0 [get_ports result]
set_max_fanout 10 [get_ports result]

# (Optional) Area and Capacitance Constraints
set_attribute [get_ports result] area 50  # Assuming an arbitrary area constraint.
set_attribute [get_ports result] capacitance 0.1  # Assuming an arbitrary capacitance constraint.
