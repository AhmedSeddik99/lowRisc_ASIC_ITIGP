################################################################################
#
# Design name:  ibex_hvt_finishing
#
# Created by icc2 write_sdc on Tue Jul  8 10:03:37 2025
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: Func
# Corner: Slow
# Scenario: Func_Slow

# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 933; \
#   /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 934; \
#   /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 934; \
#   /mnt/hgfs/PnR_GP/Final_1/2_PnR/5_CTS/cts_script.tcl, line 107
create_clock -name clk_i -period 6.25 -waveform {0 3.125} [get_ports {clk_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 941; \
#   /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 942; \
#   /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 941; \
#   /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 942; \
#   /mnt/hgfs/PnR_GP/Final_1/2_PnR/5_CTS/cts_script.tcl, line 107
create_generated_clock -name cluster_clock_gating -divide_by 1 -source \
    [get_ports {clk_i}] -add -master_clock [get_clocks {clk_i}] [get_pins \
    {ibex_top_inst/core_clock_gate_i/U2/X}]
set_propagated_clock [get_clocks {clk_i}]
set_propagated_clock [get_clocks {cluster_clock_gating}]
set_load -pin_load 10 [get_ports {instr_req_o}]
set_load -pin_load 10 [get_ports {instr_addr_o[31]}]
set_load -pin_load 10 [get_ports {instr_addr_o[30]}]
set_load -pin_load 10 [get_ports {instr_addr_o[29]}]
set_load -pin_load 10 [get_ports {instr_addr_o[28]}]
set_load -pin_load 10 [get_ports {instr_addr_o[27]}]
set_load -pin_load 10 [get_ports {instr_addr_o[26]}]
set_load -pin_load 10 [get_ports {instr_addr_o[25]}]
set_load -pin_load 10 [get_ports {instr_addr_o[24]}]
set_load -pin_load 10 [get_ports {instr_addr_o[23]}]
set_load -pin_load 10 [get_ports {instr_addr_o[22]}]
set_load -pin_load 10 [get_ports {instr_addr_o[21]}]
set_load -pin_load 10 [get_ports {instr_addr_o[20]}]
set_load -pin_load 10 [get_ports {instr_addr_o[19]}]
set_load -pin_load 10 [get_ports {instr_addr_o[18]}]
set_load -pin_load 10 [get_ports {instr_addr_o[17]}]
set_load -pin_load 10 [get_ports {instr_addr_o[16]}]
set_load -pin_load 10 [get_ports {instr_addr_o[15]}]
set_load -pin_load 10 [get_ports {instr_addr_o[14]}]
set_load -pin_load 10 [get_ports {instr_addr_o[13]}]
set_load -pin_load 10 [get_ports {instr_addr_o[12]}]
set_load -pin_load 10 [get_ports {instr_addr_o[11]}]
set_load -pin_load 10 [get_ports {instr_addr_o[10]}]
set_load -pin_load 10 [get_ports {instr_addr_o[9]}]
set_load -pin_load 10 [get_ports {instr_addr_o[8]}]
set_load -pin_load 10 [get_ports {instr_addr_o[7]}]
set_load -pin_load 10 [get_ports {instr_addr_o[6]}]
set_load -pin_load 10 [get_ports {instr_addr_o[5]}]
set_load -pin_load 10 [get_ports {instr_addr_o[4]}]
set_load -pin_load 10 [get_ports {instr_addr_o[3]}]
set_load -pin_load 10 [get_ports {instr_addr_o[2]}]
set_load -pin_load 10 [get_ports {instr_addr_o[1]}]
set_load -pin_load 10 [get_ports {instr_addr_o[0]}]
set_load -pin_load 10 [get_ports {data_req_o}]
set_load -pin_load 10 [get_ports {data_we_o}]
set_load -pin_load 10 [get_ports {data_be_o[3]}]
set_load -pin_load 10 [get_ports {data_be_o[2]}]
set_load -pin_load 10 [get_ports {data_be_o[1]}]
set_load -pin_load 10 [get_ports {data_be_o[0]}]
set_load -pin_load 10 [get_ports {data_addr_o[31]}]
set_load -pin_load 10 [get_ports {data_addr_o[30]}]
set_load -pin_load 10 [get_ports {data_addr_o[29]}]
set_load -pin_load 10 [get_ports {data_addr_o[28]}]
set_load -pin_load 10 [get_ports {data_addr_o[27]}]
set_load -pin_load 10 [get_ports {data_addr_o[26]}]
set_load -pin_load 10 [get_ports {data_addr_o[25]}]
set_load -pin_load 10 [get_ports {data_addr_o[24]}]
set_load -pin_load 10 [get_ports {data_addr_o[23]}]
set_load -pin_load 10 [get_ports {data_addr_o[22]}]
set_load -pin_load 10 [get_ports {data_addr_o[21]}]
set_load -pin_load 10 [get_ports {data_addr_o[20]}]
set_load -pin_load 10 [get_ports {data_addr_o[19]}]
set_load -pin_load 10 [get_ports {data_addr_o[18]}]
set_load -pin_load 10 [get_ports {data_addr_o[17]}]
set_load -pin_load 10 [get_ports {data_addr_o[16]}]
set_load -pin_load 10 [get_ports {data_addr_o[15]}]
set_load -pin_load 10 [get_ports {data_addr_o[14]}]
set_load -pin_load 10 [get_ports {data_addr_o[13]}]
set_load -pin_load 10 [get_ports {data_addr_o[12]}]
set_load -pin_load 10 [get_ports {data_addr_o[11]}]
set_load -pin_load 10 [get_ports {data_addr_o[10]}]
set_load -pin_load 10 [get_ports {data_addr_o[9]}]
set_load -pin_load 10 [get_ports {data_addr_o[8]}]
set_load -pin_load 10 [get_ports {data_addr_o[7]}]
set_load -pin_load 10 [get_ports {data_addr_o[6]}]
set_load -pin_load 10 [get_ports {data_addr_o[5]}]
set_load -pin_load 10 [get_ports {data_addr_o[4]}]
set_load -pin_load 10 [get_ports {data_addr_o[3]}]
set_load -pin_load 10 [get_ports {data_addr_o[2]}]
set_load -pin_load 10 [get_ports {data_addr_o[1]}]
set_load -pin_load 10 [get_ports {data_addr_o[0]}]
set_load -pin_load 10 [get_ports {data_wdata_o[31]}]
set_load -pin_load 10 [get_ports {data_wdata_o[30]}]
set_load -pin_load 10 [get_ports {data_wdata_o[29]}]
set_load -pin_load 10 [get_ports {data_wdata_o[28]}]
set_load -pin_load 10 [get_ports {data_wdata_o[27]}]
set_load -pin_load 10 [get_ports {data_wdata_o[26]}]
set_load -pin_load 10 [get_ports {data_wdata_o[25]}]
set_load -pin_load 10 [get_ports {data_wdata_o[24]}]
set_load -pin_load 10 [get_ports {data_wdata_o[23]}]
set_load -pin_load 10 [get_ports {data_wdata_o[22]}]
set_load -pin_load 10 [get_ports {data_wdata_o[21]}]
set_load -pin_load 10 [get_ports {data_wdata_o[20]}]
set_load -pin_load 10 [get_ports {data_wdata_o[19]}]
set_load -pin_load 10 [get_ports {data_wdata_o[18]}]
set_load -pin_load 10 [get_ports {data_wdata_o[17]}]
set_load -pin_load 10 [get_ports {data_wdata_o[16]}]
set_load -pin_load 10 [get_ports {data_wdata_o[15]}]
set_load -pin_load 10 [get_ports {data_wdata_o[14]}]
set_load -pin_load 10 [get_ports {data_wdata_o[13]}]
set_load -pin_load 10 [get_ports {data_wdata_o[12]}]
set_load -pin_load 10 [get_ports {data_wdata_o[11]}]
set_load -pin_load 10 [get_ports {data_wdata_o[10]}]
set_load -pin_load 10 [get_ports {data_wdata_o[9]}]
set_load -pin_load 10 [get_ports {data_wdata_o[8]}]
set_load -pin_load 10 [get_ports {data_wdata_o[7]}]
set_load -pin_load 10 [get_ports {data_wdata_o[6]}]
set_load -pin_load 10 [get_ports {data_wdata_o[5]}]
set_load -pin_load 10 [get_ports {data_wdata_o[4]}]
set_load -pin_load 10 [get_ports {data_wdata_o[3]}]
set_load -pin_load 10 [get_ports {data_wdata_o[2]}]
set_load -pin_load 10 [get_ports {data_wdata_o[1]}]
set_load -pin_load 10 [get_ports {data_wdata_o[0]}]
set_load -pin_load 10 [get_ports {data_wdata_intg_o[6]}]
set_load -pin_load 10 [get_ports {data_wdata_intg_o[5]}]
set_load -pin_load 10 [get_ports {data_wdata_intg_o[4]}]
set_load -pin_load 10 [get_ports {data_wdata_intg_o[3]}]
set_load -pin_load 10 [get_ports {data_wdata_intg_o[2]}]
set_load -pin_load 10 [get_ports {data_wdata_intg_o[1]}]
set_load -pin_load 10 [get_ports {data_wdata_intg_o[0]}]
set_load -pin_load 10 [get_ports {scramble_req_o}]
set_load -pin_load 10 [get_ports {current_pc[31]}]
set_load -pin_load 10 [get_ports {current_pc[30]}]
set_load -pin_load 10 [get_ports {current_pc[29]}]
set_load -pin_load 10 [get_ports {current_pc[28]}]
set_load -pin_load 10 [get_ports {current_pc[27]}]
set_load -pin_load 10 [get_ports {current_pc[26]}]
set_load -pin_load 10 [get_ports {current_pc[25]}]
set_load -pin_load 10 [get_ports {current_pc[24]}]
set_load -pin_load 10 [get_ports {current_pc[23]}]
set_load -pin_load 10 [get_ports {current_pc[22]}]
set_load -pin_load 10 [get_ports {current_pc[21]}]
set_load -pin_load 10 [get_ports {current_pc[20]}]
set_load -pin_load 10 [get_ports {current_pc[19]}]
set_load -pin_load 10 [get_ports {current_pc[18]}]
set_load -pin_load 10 [get_ports {current_pc[17]}]
set_load -pin_load 10 [get_ports {current_pc[16]}]
set_load -pin_load 10 [get_ports {current_pc[15]}]
set_load -pin_load 10 [get_ports {current_pc[14]}]
set_load -pin_load 10 [get_ports {current_pc[13]}]
set_load -pin_load 10 [get_ports {current_pc[12]}]
set_load -pin_load 10 [get_ports {current_pc[11]}]
set_load -pin_load 10 [get_ports {current_pc[10]}]
set_load -pin_load 10 [get_ports {current_pc[9]}]
set_load -pin_load 10 [get_ports {current_pc[8]}]
set_load -pin_load 10 [get_ports {current_pc[7]}]
set_load -pin_load 10 [get_ports {current_pc[6]}]
set_load -pin_load 10 [get_ports {current_pc[5]}]
set_load -pin_load 10 [get_ports {current_pc[4]}]
set_load -pin_load 10 [get_ports {current_pc[3]}]
set_load -pin_load 10 [get_ports {current_pc[2]}]
set_load -pin_load 10 [get_ports {current_pc[1]}]
set_load -pin_load 10 [get_ports {current_pc[0]}]
set_load -pin_load 10 [get_ports {next_pc[31]}]
set_load -pin_load 10 [get_ports {next_pc[30]}]
set_load -pin_load 10 [get_ports {next_pc[29]}]
set_load -pin_load 10 [get_ports {next_pc[28]}]
set_load -pin_load 10 [get_ports {next_pc[27]}]
set_load -pin_load 10 [get_ports {next_pc[26]}]
set_load -pin_load 10 [get_ports {next_pc[25]}]
set_load -pin_load 10 [get_ports {next_pc[24]}]
set_load -pin_load 10 [get_ports {next_pc[23]}]
set_load -pin_load 10 [get_ports {next_pc[22]}]
set_load -pin_load 10 [get_ports {next_pc[21]}]
set_load -pin_load 10 [get_ports {next_pc[20]}]
set_load -pin_load 10 [get_ports {next_pc[19]}]
set_load -pin_load 10 [get_ports {next_pc[18]}]
set_load -pin_load 10 [get_ports {next_pc[17]}]
set_load -pin_load 10 [get_ports {next_pc[16]}]
set_load -pin_load 10 [get_ports {next_pc[15]}]
set_load -pin_load 10 [get_ports {next_pc[14]}]
set_load -pin_load 10 [get_ports {next_pc[13]}]
set_load -pin_load 10 [get_ports {next_pc[12]}]
set_load -pin_load 10 [get_ports {next_pc[11]}]
set_load -pin_load 10 [get_ports {next_pc[10]}]
set_load -pin_load 10 [get_ports {next_pc[9]}]
set_load -pin_load 10 [get_ports {next_pc[8]}]
set_load -pin_load 10 [get_ports {next_pc[7]}]
set_load -pin_load 10 [get_ports {next_pc[6]}]
set_load -pin_load 10 [get_ports {next_pc[5]}]
set_load -pin_load 10 [get_ports {next_pc[4]}]
set_load -pin_load 10 [get_ports {next_pc[3]}]
set_load -pin_load 10 [get_ports {next_pc[2]}]
set_load -pin_load 10 [get_ports {next_pc[1]}]
set_load -pin_load 10 [get_ports {next_pc[0]}]
set_load -pin_load 10 [get_ports {last_data_addr[31]}]
set_load -pin_load 10 [get_ports {last_data_addr[30]}]
set_load -pin_load 10 [get_ports {last_data_addr[29]}]
set_load -pin_load 10 [get_ports {last_data_addr[28]}]
set_load -pin_load 10 [get_ports {last_data_addr[27]}]
set_load -pin_load 10 [get_ports {last_data_addr[26]}]
set_load -pin_load 10 [get_ports {last_data_addr[25]}]
set_load -pin_load 10 [get_ports {last_data_addr[24]}]
set_load -pin_load 10 [get_ports {last_data_addr[23]}]
set_load -pin_load 10 [get_ports {last_data_addr[22]}]
set_load -pin_load 10 [get_ports {last_data_addr[21]}]
set_load -pin_load 10 [get_ports {last_data_addr[20]}]
set_load -pin_load 10 [get_ports {last_data_addr[19]}]
set_load -pin_load 10 [get_ports {last_data_addr[18]}]
set_load -pin_load 10 [get_ports {last_data_addr[17]}]
set_load -pin_load 10 [get_ports {last_data_addr[16]}]
set_load -pin_load 10 [get_ports {last_data_addr[15]}]
set_load -pin_load 10 [get_ports {last_data_addr[14]}]
set_load -pin_load 10 [get_ports {last_data_addr[13]}]
set_load -pin_load 10 [get_ports {last_data_addr[12]}]
set_load -pin_load 10 [get_ports {last_data_addr[11]}]
set_load -pin_load 10 [get_ports {last_data_addr[10]}]
set_load -pin_load 10 [get_ports {last_data_addr[9]}]
set_load -pin_load 10 [get_ports {last_data_addr[8]}]
set_load -pin_load 10 [get_ports {last_data_addr[7]}]
set_load -pin_load 10 [get_ports {last_data_addr[6]}]
set_load -pin_load 10 [get_ports {last_data_addr[5]}]
set_load -pin_load 10 [get_ports {last_data_addr[4]}]
set_load -pin_load 10 [get_ports {last_data_addr[3]}]
set_load -pin_load 10 [get_ports {last_data_addr[2]}]
set_load -pin_load 10 [get_ports {last_data_addr[1]}]
set_load -pin_load 10 [get_ports {last_data_addr[0]}]
set_load -pin_load 10 [get_ports {exception_pc[31]}]
set_load -pin_load 10 [get_ports {exception_pc[30]}]
set_load -pin_load 10 [get_ports {exception_pc[29]}]
set_load -pin_load 10 [get_ports {exception_pc[28]}]
set_load -pin_load 10 [get_ports {exception_pc[27]}]
set_load -pin_load 10 [get_ports {exception_pc[26]}]
set_load -pin_load 10 [get_ports {exception_pc[25]}]
set_load -pin_load 10 [get_ports {exception_pc[24]}]
set_load -pin_load 10 [get_ports {exception_pc[23]}]
set_load -pin_load 10 [get_ports {exception_pc[22]}]
set_load -pin_load 10 [get_ports {exception_pc[21]}]
set_load -pin_load 10 [get_ports {exception_pc[20]}]
set_load -pin_load 10 [get_ports {exception_pc[19]}]
set_load -pin_load 10 [get_ports {exception_pc[18]}]
set_load -pin_load 10 [get_ports {exception_pc[17]}]
set_load -pin_load 10 [get_ports {exception_pc[16]}]
set_load -pin_load 10 [get_ports {exception_pc[15]}]
set_load -pin_load 10 [get_ports {exception_pc[14]}]
set_load -pin_load 10 [get_ports {exception_pc[13]}]
set_load -pin_load 10 [get_ports {exception_pc[12]}]
set_load -pin_load 10 [get_ports {exception_pc[11]}]
set_load -pin_load 10 [get_ports {exception_pc[10]}]
set_load -pin_load 10 [get_ports {exception_pc[9]}]
set_load -pin_load 10 [get_ports {exception_pc[8]}]
set_load -pin_load 10 [get_ports {exception_pc[7]}]
set_load -pin_load 10 [get_ports {exception_pc[6]}]
set_load -pin_load 10 [get_ports {exception_pc[5]}]
set_load -pin_load 10 [get_ports {exception_pc[4]}]
set_load -pin_load 10 [get_ports {exception_pc[3]}]
set_load -pin_load 10 [get_ports {exception_pc[2]}]
set_load -pin_load 10 [get_ports {exception_pc[1]}]
set_load -pin_load 10 [get_ports {exception_pc[0]}]
set_load -pin_load 10 [get_ports {exception_addr[31]}]
set_load -pin_load 10 [get_ports {exception_addr[30]}]
set_load -pin_load 10 [get_ports {exception_addr[29]}]
set_load -pin_load 10 [get_ports {exception_addr[28]}]
set_load -pin_load 10 [get_ports {exception_addr[27]}]
set_load -pin_load 10 [get_ports {exception_addr[26]}]
set_load -pin_load 10 [get_ports {exception_addr[25]}]
set_load -pin_load 10 [get_ports {exception_addr[24]}]
set_load -pin_load 10 [get_ports {exception_addr[23]}]
set_load -pin_load 10 [get_ports {exception_addr[22]}]
set_load -pin_load 10 [get_ports {exception_addr[21]}]
set_load -pin_load 10 [get_ports {exception_addr[20]}]
set_load -pin_load 10 [get_ports {exception_addr[19]}]
set_load -pin_load 10 [get_ports {exception_addr[18]}]
set_load -pin_load 10 [get_ports {exception_addr[17]}]
set_load -pin_load 10 [get_ports {exception_addr[16]}]
set_load -pin_load 10 [get_ports {exception_addr[15]}]
set_load -pin_load 10 [get_ports {exception_addr[14]}]
set_load -pin_load 10 [get_ports {exception_addr[13]}]
set_load -pin_load 10 [get_ports {exception_addr[12]}]
set_load -pin_load 10 [get_ports {exception_addr[11]}]
set_load -pin_load 10 [get_ports {exception_addr[10]}]
set_load -pin_load 10 [get_ports {exception_addr[9]}]
set_load -pin_load 10 [get_ports {exception_addr[8]}]
set_load -pin_load 10 [get_ports {exception_addr[7]}]
set_load -pin_load 10 [get_ports {exception_addr[6]}]
set_load -pin_load 10 [get_ports {exception_addr[5]}]
set_load -pin_load 10 [get_ports {exception_addr[4]}]
set_load -pin_load 10 [get_ports {exception_addr[3]}]
set_load -pin_load 10 [get_ports {exception_addr[2]}]
set_load -pin_load 10 [get_ports {exception_addr[1]}]
set_load -pin_load 10 [get_ports {exception_addr[0]}]
set_load -pin_load 10 [get_ports {double_fault_seen_o}]
set_load -pin_load 10 [get_ports {alert_minor_o}]
set_load -pin_load 10 [get_ports {alert_major_internal_o}]
set_load -pin_load 10 [get_ports {alert_major_bus_o}]
set_load -pin_load 10 [get_ports {core_sleep_o}]
# Set latency for io paths.
# -origin user
set_clock_latency 0.17278 [get_clocks {clk_i}]
# -origin user
set_clock_latency 0.0654411 [get_clocks {cluster_clock_gating}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {clk_i}]
set_propagated_clock  [get_pins {ibex_top_inst/core_clock_gate_i/U2/X}]
set_clock_uncertainty -setup 0.2 [get_clocks {clk_i}]
set_clock_uncertainty -hold 0.1 [get_clocks {clk_i}]
set_clock_uncertainty -setup 0.2 [get_clocks {cluster_clock_gating}]
set_clock_uncertainty -hold 0.1 [get_clocks {cluster_clock_gating}]
set_clock_transition 0.05 [get_clocks {clk_i}]
set_clock_transition 0.05 [get_clocks {cluster_clock_gating}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 13
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {clk_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 14
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {rst_ni}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 15
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {test_en_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 16
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {ram_cfg_en}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 17
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {ram_cfg[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 18
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {ram_cfg[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 19
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {ram_cfg[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 20
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {ram_cfg[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 21
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {rf_cfg_en}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 22
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {rf_cfg[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 23
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {rf_cfg[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 24
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {rf_cfg[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 25
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {rf_cfg[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 26
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[31]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 27
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[30]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 28
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[29]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 29
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[28]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 30
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[27]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 31
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[26]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 32
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[25]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 33
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[24]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 34
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[23]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 35
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[22]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 36
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[21]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 37
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[20]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 38
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[19]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 39
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[18]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 40
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[17]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 41
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[16]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 42
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[15]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 43
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 44
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 45
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 46
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 47
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 48
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 49
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 50
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 51
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 52
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 53
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 54
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 55
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 56
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 57
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {hart_id_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 58
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[31]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 59
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[30]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 60
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[29]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 61
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[28]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 62
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[27]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 63
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[26]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 64
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[25]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 65
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[24]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 66
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[23]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 67
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[22]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 68
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[21]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 69
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[20]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 70
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[19]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 71
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[18]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 72
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[17]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 73
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[16]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 74
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[15]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 75
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 76
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 77
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 78
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 79
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 80
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 81
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 82
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 83
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 84
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 85
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 86
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 87
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 88
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 89
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {boot_addr_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 90
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {instr_gnt_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 91
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {instr_rvalid_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 93
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[31]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 95
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[30]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 97
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[29]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 99
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[28]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 101
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[27]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 103
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[26]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 105
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[25]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 107
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[24]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 109
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[23]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 111
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[22]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 113
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[21]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 115
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[20]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 117
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[19]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 119
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[18]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 121
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[17]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 123
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[16]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 125
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[15]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 127
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 129
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 131
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 133
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 135
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_i[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 137
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {instr_rdata_i[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 139
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {instr_rdata_i[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 141
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {instr_rdata_i[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 143
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {instr_rdata_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 145
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {instr_rdata_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 147
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {instr_rdata_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 149
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {instr_rdata_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 151
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {instr_rdata_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 153
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {instr_rdata_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 155
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {instr_rdata_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 157
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_intg_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 159
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_intg_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 161
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_intg_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 163
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_intg_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 165
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_intg_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 167
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_intg_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 169
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {instr_rdata_intg_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 170
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {instr_err_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 171
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_gnt_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 172
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rvalid_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 174
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[31]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 176
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[30]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 178
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[29]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 180
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[28]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 182
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[27]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 184
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[26]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 186
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[25]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 188
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[24]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 190
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[23]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 192
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[22]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 194
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[21]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 196
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[20]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 198
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[19]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 200
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[18]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 202
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[17]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 204
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[16]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 206
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[15]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 208
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 210
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 212
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 214
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 216
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 217
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 218
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 219
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 220
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 221
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 222
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 223
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 224
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 225
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 226
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_rdata_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 228
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {data_rdata_intg_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 230
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {data_rdata_intg_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 232
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {data_rdata_intg_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 234
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {data_rdata_intg_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 236
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {data_rdata_intg_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 238
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {data_rdata_intg_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 240
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {data_rdata_intg_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 241
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {data_err_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 242
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_software_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 243
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_timer_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 244
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_external_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 245
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 246
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 247
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 248
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 249
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 250
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 251
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 252
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 253
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 254
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 255
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 256
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 257
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 258
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 259
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_fast_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 260
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {irq_nm_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 262
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_valid_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 264
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[127]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 266
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[126]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 268
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[125]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 270
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[124]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 272
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[123]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 274
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[122]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 276
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[121]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 278
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[120]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 280
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[119]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 282
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[118]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 284
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[117]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 286
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[116]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 288
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[115]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 290
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[114]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 292
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[113]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 294
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[112]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 296
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[111]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 298
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[110]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 300
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[109]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 302
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[108]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 304
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[107]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 306
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[106]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 308
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[105]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 310
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[104]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 312
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[103]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 314
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[102]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 316
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[101]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 318
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[100]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 320
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[99]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 322
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[98]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 324
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[97]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 326
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[96]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 328
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[95]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 330
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[94]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 332
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[93]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 334
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[92]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 336
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[91]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 338
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[90]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 340
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[89]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 342
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[88]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 344
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[87]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 346
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[86]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 348
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[85]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 350
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[84]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 352
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[83]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 354
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[82]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 356
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[81]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 358
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[80]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 360
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[79]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 362
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[78]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 364
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[77]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 366
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[76]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 368
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[75]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 370
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[74]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 372
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[73]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 374
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[72]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 376
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[71]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 378
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[70]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 380
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[69]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 382
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[68]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 384
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[67]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 386
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[66]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 388
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[65]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 390
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[64]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 392
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[63]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 394
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[62]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 396
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[61]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 398
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[60]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 400
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[59]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 402
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[58]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 404
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[57]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 406
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[56]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 408
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[55]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 410
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[54]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 412
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[53]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 414
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[52]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 416
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[51]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 418
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[50]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 420
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[49]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 422
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[48]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 424
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[47]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 426
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[46]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 428
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[45]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 430
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[44]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 432
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[43]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 434
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[42]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 436
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[41]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 438
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[40]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 440
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[39]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 442
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[38]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 444
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[37]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 446
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[36]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 448
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[35]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 450
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[34]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 452
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[33]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 454
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[32]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 456
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[31]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 458
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[30]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 460
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[29]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 462
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[28]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 464
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[27]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 466
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[26]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 468
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[25]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 470
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[24]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 472
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[23]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 474
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[22]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 476
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[21]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 478
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[20]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 480
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[19]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 482
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[18]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 484
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[17]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 486
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[16]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 488
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[15]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 490
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 492
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 494
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 496
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 498
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 500
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 502
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 504
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 506
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 508
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 510
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 512
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 514
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 516
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 518
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_key_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 520
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[63]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 522
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[62]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 524
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[61]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 526
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[60]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 528
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[59]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 530
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[58]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 532
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[57]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 534
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[56]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 536
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[55]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 538
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[54]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 540
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[53]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 542
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[52]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 544
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[51]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 546
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[50]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 548
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[49]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 550
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[48]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 552
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[47]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 554
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[46]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 556
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[45]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 558
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[44]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 560
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[43]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 562
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[42]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 564
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[41]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 566
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[40]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 568
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[39]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 570
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[38]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 572
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[37]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 574
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[36]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 576
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[35]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 578
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[34]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 580
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[33]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 582
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[32]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 584
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[31]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 586
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[30]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 588
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[29]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 590
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[28]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 592
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[27]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 594
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[26]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 596
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[25]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 598
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[24]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 600
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[23]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 602
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[22]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 604
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[21]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 606
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[20]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 608
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[19]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 610
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[18]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 612
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[17]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 614
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[16]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 616
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[15]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 618
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 620
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 622
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 624
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 626
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 628
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 630
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 632
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 634
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 636
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 638
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 640
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 642
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 644
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 646
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {scramble_nonce_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 647
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {debug_req_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 649
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {fetch_enable_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 651
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {fetch_enable_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 653
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {fetch_enable_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 655
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports \
    {fetch_enable_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 656
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [get_ports {scan_rst_ni}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 949
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {test_en_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 950
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[31]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 951
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[30]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 952
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[29]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 953
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[28]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 954
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[27]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 955
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[26]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 956
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[25]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 957
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[24]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 958
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[23]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 959
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[22]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 960
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[21]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 961
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[20]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 962
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[19]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 963
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[18]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 964
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[17]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 965
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[16]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 966
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[15]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 967
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 968
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 969
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 970
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 971
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 972
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 973
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 974
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 975
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 976
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 977
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 978
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 979
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 980
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 981
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 982
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[31]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 983
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[30]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 984
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[29]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 985
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[28]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 986
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[27]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 987
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[26]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 988
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[25]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 989
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[24]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 990
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[23]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 991
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[22]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 992
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[21]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 993
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[20]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 994
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[19]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 995
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[18]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 996
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[17]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 997
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[16]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 998
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[15]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 999
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1000
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1001
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1002
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1003
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1004
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1005
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1006
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1007
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1008
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1009
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1010
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1011
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1012
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1013
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1108
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {instr_req_o}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1014
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_gnt_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1015
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rvalid_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1109
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[31]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1110
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[30]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1111
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[29]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1112
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[28]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1113
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[27]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1114
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[26]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1115
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[25]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1116
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[24]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1117
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[23]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1118
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[22]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1119
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[21]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1120
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[20]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1121
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[19]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1122
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[18]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1123
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[17]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1124
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[16]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1125
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[15]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1126
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1127
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1128
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1129
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1130
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {instr_addr_o[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1131
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {instr_addr_o[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1132
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {instr_addr_o[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1133
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {instr_addr_o[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1134
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {instr_addr_o[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1135
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {instr_addr_o[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1136
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {instr_addr_o[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1137
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {instr_addr_o[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1138
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {instr_addr_o[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1139
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {instr_addr_o[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1140
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {instr_addr_o[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1016
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[31]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1017
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[30]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1018
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[29]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1019
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[28]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1020
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[27]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1021
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[26]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1022
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[25]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1023
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[24]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1024
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[23]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1025
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[22]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1026
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[21]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1027
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[20]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1028
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[19]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1029
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[18]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1030
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[17]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1031
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[16]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1032
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[15]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1033
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1034
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1035
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1036
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1037
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1038
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1039
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1040
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1041
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1042
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1043
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1044
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1045
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1046
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1047
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_rdata_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1048
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {instr_err_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1141
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_req_o}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1049
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_gnt_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1050
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rvalid_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1142
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_we_o}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1143
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_be_o[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1144
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_be_o[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1145
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_be_o[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1146
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_be_o[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1147
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[31]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1148
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[30]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1149
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[29]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1150
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[28]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1151
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[27]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1152
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[26]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1153
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[25]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1154
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[24]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1155
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[23]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1156
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[22]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1157
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[21]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1158
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[20]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1159
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[19]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1160
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[18]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1161
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[17]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1162
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[16]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1163
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[15]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1164
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1165
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1166
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1167
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1168
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1169
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1170
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1171
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1172
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1173
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1174
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1175
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1176
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1177
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1178
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_addr_o[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1179
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[31]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1180
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[30]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1181
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[29]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1182
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[28]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1183
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[27]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1184
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[26]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1185
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[25]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1186
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[24]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1187
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[23]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1188
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[22]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1189
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[21]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1190
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[20]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1191
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[19]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1192
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[18]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1193
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[17]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1194
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[16]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1195
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[15]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1196
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1197
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1198
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1199
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1200
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports \
    {data_wdata_o[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1201
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_wdata_o[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1202
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_wdata_o[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1203
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_wdata_o[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1204
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_wdata_o[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1205
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_wdata_o[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1206
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_wdata_o[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1207
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_wdata_o[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1208
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_wdata_o[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1209
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_wdata_o[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1210
set_output_delay -clock [get_clocks {clk_i}] 1.875 [get_ports {data_wdata_o[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1051
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[31]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1052
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[30]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1053
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[29]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1054
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[28]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1055
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[27]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1056
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[26]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1057
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[25]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1058
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[24]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1059
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[23]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1060
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[22]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1061
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[21]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1062
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[20]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1063
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[19]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1064
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[18]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1065
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[17]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1066
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[16]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1067
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[15]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1068
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1069
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1070
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1071
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1072
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1073
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1074
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1075
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1076
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1077
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1078
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1079
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1080
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1081
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1082
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_rdata_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1083
set_input_delay -clock [get_clocks {cluster_clock_gating}] 1.875 [get_ports \
    {data_err_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1084
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_software_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1085
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_timer_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1086
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_external_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1087
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[14]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1088
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[13]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1089
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[12]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1090
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[11]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1091
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[10]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1092
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[9]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1093
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[8]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1094
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[7]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1095
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[6]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1096
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[5]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1097
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[4]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1098
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1099
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1100
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1101
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_fast_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1102
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {irq_nm_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1103
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.625 [get_ports \
    {debug_req_i}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1104
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {fetch_enable_i[3]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1105
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {fetch_enable_i[2]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1106
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {fetch_enable_i[1]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1107
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {fetch_enable_i[0]}]
# /mnt/hgfs/PnR_GP/Final_1/1_DFT/output/ibex_wrapper.sdc, line 1211
set_output_delay -clock [get_clocks {clk_i}] 1.25 [get_ports {core_sleep_o}]
set_max_transition 2 [current_design]
