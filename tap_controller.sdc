
create_clock -period 10 [get_ports tck_pad_i] -waveform {0 5} 

set_input_delay -clock [get_clocks tck_pad_i]  1.5 [get_ports tms_pad_i]
set_input_delay -clock [get_clocks tck_pad_i]  1.5 [get_ports trst_pad_i]
set_input_delay -clock [get_clocks tck_pad_i]  1.5 [get_ports tdi_pad_i]
set_input_delay -clock [get_clocks tck_pad_i]  1.5 [get_ports debug_tdi_i]
set_input_delay -clock [get_clocks tck_pad_i]  1.5 [get_ports bs_chain_tdi_i]
set_input_delay -clock [get_clocks tck_pad_i]  1.5 [get_ports mbist_tdi_i]


set_output_delay -clock [get_clocks tck_pad_i] 1.5 [get_ports tdo_pad_o]
set_output_delay -clock [get_clocks tck_pad_i] 1.5 [get_ports tdo_padoe_o]
set_output_delay -clock [get_clocks tck_pad_i] 1.5 [get_ports shift_dr_o]
set_output_delay -clock [get_clocks tck_pad_i] 1.5 [get_ports pause_dr_o]
set_output_delay -clock [get_clocks tck_pad_i] 1.5 [get_ports update_dr_o]
set_output_delay -clock [get_clocks tck_pad_i] 1.5 [get_ports capture_dr_o]
set_output_delay -clock [get_clocks tck_pad_i] 1.5 [get_ports extest_select_o]
set_output_delay -clock [get_clocks tck_pad_i] 1.5 [get_ports sample_preload_select_o]
set_output_delay -clock [get_clocks tck_pad_i] 1.5 [get_ports mbist_select_o]
set_output_delay -clock [get_clocks tck_pad_i] 1.5 [get_ports debug_select_o]
set_output_delay -clock [get_clocks tck_pad_i] 1.5 [get_ports tdo_o]
