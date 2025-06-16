################################################################################
#
# Design name:  ibex_hvt_routing
#
# Created by icc2 write_sdc on Mon Jun 16 17:37:34 2025
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

# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line \
#   1047; /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, \
#   line 1048
create_clock -name clk_i -period 6.25 -waveform {0 3.125} [get_ports {clk_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line \
#   1055; /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, \
#   line 1056
create_generated_clock -name cluster_clock_gating -divide_by 1 -source \
    [get_ports {clk_i}] -add -master_clock [get_clocks {clk_i}] [get_pins \
    {ibex_top_inst/core_clock_gate_i/U2/X}]
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
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 10
set_operating_conditions -analysis_type on_chip_variation -max ss0p72vm40c -min \
    ff0p88v125c -max_library saed14hvt_ss0p72vm40c -min_library \
    saed14hvt_ff0p88v125c
# Set latency for io paths.
# -origin user
set_clock_latency 0 [get_clocks {clk_i}]
# -origin user
set_clock_latency 0 [get_clocks {cluster_clock_gating}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_clock_uncertainty -setup 0.2 [get_clocks {clk_i}]
set_clock_uncertainty -hold 0.1 [get_clocks {clk_i}]
set_clock_uncertainty -setup 0.2 [get_clocks {cluster_clock_gating}]
set_clock_uncertainty -hold 0.1 [get_clocks {cluster_clock_gating}]
set_clock_transition 0.05 [get_clocks {clk_i}]
set_clock_transition 0.05 [get_clocks {cluster_clock_gating}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 14; \
#   /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/Scripts/cts_script.tcl, line 38; \
#   /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/Scripts/cts_script.tcl, line 39
set_input_transition -rise 1.875 [get_ports {clk_i}]
set_input_transition -fall 1.25 [get_ports {clk_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 16
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {rst_ni}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 18
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {test_en_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 20
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {ram_cfg_en}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 22
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {ram_cfg[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 24
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {ram_cfg[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 26
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {ram_cfg[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 28
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {ram_cfg[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 30
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {rf_cfg_en}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 32
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {rf_cfg[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 34
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {rf_cfg[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 36
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {rf_cfg[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 38
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {rf_cfg[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 40
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[31]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 42
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[30]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 44
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[29]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 46
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[28]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 48
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[27]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 50
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[26]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 52
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[25]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 54
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[24]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 56
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[23]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 58
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[22]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 60
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[21]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 62
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[20]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 64
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[19]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 66
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[18]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 68
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[17]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 70
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[16]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 72
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[15]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 74
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 76
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 78
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 80
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 82
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 84
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 86
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 88
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 90
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 92
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 94
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 96
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 98
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 100
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 102
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {hart_id_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 104
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[31]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 106
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[30]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 108
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[29]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 110
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[28]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 112
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[27]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 114
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[26]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 116
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[25]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 118
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[24]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 120
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[23]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 122
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[22]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 124
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[21]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 126
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[20]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 128
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[19]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 130
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[18]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 132
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[17]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 134
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[16]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 136
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[15]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 138
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 140
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 142
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 144
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 146
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 148
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 150
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 152
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 154
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 156
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 158
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 160
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 162
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 164
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 166
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {boot_addr_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 168
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_gnt_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 170
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rvalid_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 172
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[31]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 174
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[30]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 176
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[29]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 178
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[28]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 180
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[27]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 182
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[26]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 184
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[25]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 186
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[24]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 188
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[23]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 190
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[22]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 192
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[21]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 194
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[20]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 196
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[19]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 198
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[18]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 200
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[17]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 202
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[16]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 204
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[15]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 206
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 208
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 210
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 212
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 214
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 216
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 218
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 220
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 222
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 224
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 226
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 228
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 230
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 232
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 234
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 236
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_intg_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 238
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_intg_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 240
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_intg_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 242
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_intg_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 244
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_intg_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 246
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_intg_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 248
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_rdata_intg_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 250
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {instr_err_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 252
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_gnt_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 254
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rvalid_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 256
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[31]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 258
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[30]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 260
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[29]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 262
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[28]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 264
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[27]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 266
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[26]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 268
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[25]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 270
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[24]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 272
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[23]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 274
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[22]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 276
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[21]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 278
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[20]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 280
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[19]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 282
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[18]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 284
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[17]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 286
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[16]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 288
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[15]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 290
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 292
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 294
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 296
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 298
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 300
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 302
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 304
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 306
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 308
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 310
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 312
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 314
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 316
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 318
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 320
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_intg_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 322
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_intg_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 324
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_intg_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 326
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_intg_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 328
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_intg_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 330
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_intg_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 332
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_rdata_intg_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 334
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {data_err_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 336
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_software_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 338
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_timer_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 340
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_external_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 342
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 344
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 346
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 348
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 350
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 352
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 354
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 356
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 358
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 360
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 362
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 364
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 366
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 368
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 370
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_fast_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 372
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {irq_nm_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 374
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_valid_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 376
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[127]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 378
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[126]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 380
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[125]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 382
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[124]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 384
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[123]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 386
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[122]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 388
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[121]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 390
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[120]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 392
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[119]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 394
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[118]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 396
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[117]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 398
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[116]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 400
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[115]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 402
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[114]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 404
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[113]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 406
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[112]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 408
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[111]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 410
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[110]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 412
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[109]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 414
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[108]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 416
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[107]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 418
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[106]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 420
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[105]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 422
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[104]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 424
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[103]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 426
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[102]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 428
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[101]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 430
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[100]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 432
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[99]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 434
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[98]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 436
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[97]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 438
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[96]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 440
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[95]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 442
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[94]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 444
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[93]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 446
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[92]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 448
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[91]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 450
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[90]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 452
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[89]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 454
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[88]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 456
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[87]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 458
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[86]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 460
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[85]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 462
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[84]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 464
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[83]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 466
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[82]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 468
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[81]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 470
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[80]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 472
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[79]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 474
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[78]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 476
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[77]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 478
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[76]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 480
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[75]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 482
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[74]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 484
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[73]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 486
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[72]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 488
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[71]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 490
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[70]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 492
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[69]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 494
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[68]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 496
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[67]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 498
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[66]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 500
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[65]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 502
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[64]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 504
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[63]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 506
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[62]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 508
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[61]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 510
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[60]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 512
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[59]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 514
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[58]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 516
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[57]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 518
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[56]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 520
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[55]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 522
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[54]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 524
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[53]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 526
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[52]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 528
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[51]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 530
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[50]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 532
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[49]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 534
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[48]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 536
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[47]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 538
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[46]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 540
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[45]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 542
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[44]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 544
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[43]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 546
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[42]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 548
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[41]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 550
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[40]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 552
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[39]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 554
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[38]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 556
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[37]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 558
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[36]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 560
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[35]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 562
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[34]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 564
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[33]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 566
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[32]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 568
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[31]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 570
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[30]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 572
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[29]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 574
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[28]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 576
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[27]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 578
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[26]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 580
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[25]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 582
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[24]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 584
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[23]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 586
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[22]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 588
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[21]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 590
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[20]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 592
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[19]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 594
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[18]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 596
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[17]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 598
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[16]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 600
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[15]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 602
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 604
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 606
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 608
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 610
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 612
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 614
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 616
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 618
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 620
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 622
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 624
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 626
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 628
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 630
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_key_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 632
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[63]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 634
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[62]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 636
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[61]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 638
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[60]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 640
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[59]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 642
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[58]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 644
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[57]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 646
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[56]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 648
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[55]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 650
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[54]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 652
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[53]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 654
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[52]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 656
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[51]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 658
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[50]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 660
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[49]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 662
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[48]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 664
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[47]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 666
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[46]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 668
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[45]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 670
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[44]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 672
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[43]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 674
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[42]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 676
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[41]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 678
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[40]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 680
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[39]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 682
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[38]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 684
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[37]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 686
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[36]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 688
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[35]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 690
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[34]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 692
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[33]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 694
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[32]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 696
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[31]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 698
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[30]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 700
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[29]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 702
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[28]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 704
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[27]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 706
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[26]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 708
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[25]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 710
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[24]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 712
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[23]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 714
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[22]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 716
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[21]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 718
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[20]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 720
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[19]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 722
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[18]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 724
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[17]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 726
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[16]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 728
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[15]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 730
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 732
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 734
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 736
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 738
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 740
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 742
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 744
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 746
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 748
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 750
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 752
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 754
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 756
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 758
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scramble_nonce_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 760
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {debug_req_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 762
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {fetch_enable_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 764
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {fetch_enable_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 766
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {fetch_enable_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 768
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {fetch_enable_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 770
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X -library \
    saed14hvt_ss0p72vm40c [get_ports {scan_rst_ni}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1063
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {test_en_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1064
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[31]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1065
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[30]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1066
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[29]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1067
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[28]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1068
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[27]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1069
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[26]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1070
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[25]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1071
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[24]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1072
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[23]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1073
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[22]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1074
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[21]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1075
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[20]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1076
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[19]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1077
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[18]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1078
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[17]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1079
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[16]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1080
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[15]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1081
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1082
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1083
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1084
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1085
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1086
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1087
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1088
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1089
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1090
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1091
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1092
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1093
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1094
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1095
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {hart_id_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1096
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[31]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1097
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[30]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1098
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[29]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1099
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[28]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1100
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[27]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1101
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[26]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1102
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[25]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1103
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[24]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1104
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[23]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1105
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[22]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1106
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[21]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1107
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[20]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1108
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[19]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1109
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[18]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1110
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[17]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1111
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[16]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1112
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[15]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1113
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1114
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1115
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1116
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1117
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1118
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1119
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1120
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1121
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1122
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1123
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1124
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1125
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1126
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1127
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {boot_addr_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1222
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_req_o}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1128
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_gnt_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1129
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rvalid_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1223
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[31]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1224
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[30]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1225
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[29]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1226
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[28]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1227
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[27]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1228
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[26]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1229
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[25]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1230
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[24]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1231
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[23]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1232
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[22]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1233
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[21]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1234
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[20]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1235
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[19]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1236
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[18]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1237
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[17]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1238
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[16]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1239
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[15]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1240
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1241
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1242
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1243
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1244
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1245
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1246
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1247
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1248
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1249
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1250
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1251
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1252
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1253
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1254
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {instr_addr_o[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1130
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[31]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1131
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[30]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1132
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[29]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1133
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[28]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1134
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[27]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1135
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[26]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1136
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[25]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1137
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[24]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1138
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[23]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1139
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[22]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1140
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[21]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1141
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[20]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1142
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[19]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1143
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[18]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1144
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[17]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1145
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[16]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1146
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[15]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1147
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1148
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1149
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1150
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1151
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1152
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1153
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1154
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1155
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1156
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1157
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1158
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1159
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1160
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1161
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_rdata_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1162
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {instr_err_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1255
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_req_o}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1163
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_gnt_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1164
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rvalid_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1256
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_we_o}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1257
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_be_o[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1258
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_be_o[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1259
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_be_o[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1260
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_be_o[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1261
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[31]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1262
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[30]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1263
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[29]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1264
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[28]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1265
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[27]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1266
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[26]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1267
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[25]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1268
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[24]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1269
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[23]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1270
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[22]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1271
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[21]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1272
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[20]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1273
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[19]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1274
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[18]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1275
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[17]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1276
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[16]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1277
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[15]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1278
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1279
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1280
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1281
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1282
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1283
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1284
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1285
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1286
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1287
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1288
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1289
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1290
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1291
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1292
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_addr_o[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1293
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[31]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1294
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[30]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1295
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[29]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1296
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[28]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1297
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[27]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1298
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[26]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1299
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[25]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1300
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[24]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1301
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[23]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1302
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[22]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1303
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[21]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1304
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[20]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1305
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[19]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1306
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[18]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1307
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[17]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1308
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[16]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1309
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[15]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1310
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1311
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1312
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1313
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1314
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1315
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1316
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1317
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1318
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1319
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1320
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1321
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1322
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1323
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1324
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.7 [get_ports \
    {data_wdata_o[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1165
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[31]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1166
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[30]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1167
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[29]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1168
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[28]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1169
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[27]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1170
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[26]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1171
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[25]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1172
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[24]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1173
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[23]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1174
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[22]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1175
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[21]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1176
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[20]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1177
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[19]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1178
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[18]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1179
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[17]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1180
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[16]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1181
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[15]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1182
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1183
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1184
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1185
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1186
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1187
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1188
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1189
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1190
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1191
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1192
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1193
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1194
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1195
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1196
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_rdata_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1197
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.3 [get_ports \
    {data_err_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1198
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_software_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1199
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_timer_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1200
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_external_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1201
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[14]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1202
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[13]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1203
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[12]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1204
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[11]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1205
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[10]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1206
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[9]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1207
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[8]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1208
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[7]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1209
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[6]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1210
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[5]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1211
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[4]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1212
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1213
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1214
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1215
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_fast_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1216
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {irq_nm_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1217
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0.1 [get_ports \
    {debug_req_i}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1218
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {fetch_enable_i[3]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1219
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {fetch_enable_i[2]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1220
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {fetch_enable_i[1]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1221
set_input_delay -clock [get_clocks {cluster_clock_gating}] 0 [get_ports \
    {fetch_enable_i[0]}]
# /mnt/hgfs/lowRisc_ASIC_ITIGP/PnR/Run_2/syn_output/ibex_wrapper.sdc, line 1325
set_output_delay -clock [get_clocks {cluster_clock_gating}] 0.8 [get_ports \
    {core_sleep_o}]
set_max_transition 2 [current_design]
set_max_transition 0.05 [get_clocks {clk_i}] -clock_path
set_max_transition 0.05 [get_clocks {cluster_clock_gating}] -clock_path
