###################################################################

# Created by write_sdc on Mon Apr 14 07:44:15 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_operating_conditions -max ss0p72vm40c -max_library saed14hvt_ss0p72vm40c\
                         -min ff0p88v125c -min_library saed14hvt_ff0p88v125c
set_max_fanout 10 [current_design]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports clk_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports rst_ni]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports test_en_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {ram_cfg_i[ram_cfg][cfg_en]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {ram_cfg_i[ram_cfg][cfg][3]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {ram_cfg_i[ram_cfg][cfg][2]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {ram_cfg_i[ram_cfg][cfg][1]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {ram_cfg_i[ram_cfg][cfg][0]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {ram_cfg_i[rf_cfg][cfg_en]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {ram_cfg_i[rf_cfg][cfg][3]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {ram_cfg_i[rf_cfg][cfg][2]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {ram_cfg_i[rf_cfg][cfg][1]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {ram_cfg_i[rf_cfg][cfg][0]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[31]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[30]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[29]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[28]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[27]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[26]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[25]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[24]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[23]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[22]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[21]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[20]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[19]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[18]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[17]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[16]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[15]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[14]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[13]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[12]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[11]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[10]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[9]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[8]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[7]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[6]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[5]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[4]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[3]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[2]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[1]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {hart_id_i[0]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[31]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[30]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[29]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[28]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[27]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[26]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[25]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[24]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[23]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[22]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[21]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[20]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[19]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[18]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[17]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[16]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[15]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[14]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[13]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[12]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[11]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[10]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[9]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[8]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[7]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[6]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[5]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[4]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[3]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[2]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[1]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {boot_addr_i[0]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports instr_gnt_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports instr_rvalid_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[31]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[30]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[29]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[28]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[27]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[26]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[25]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[24]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[23]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[22]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[21]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[20]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[19]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[18]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[17]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[16]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[15]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[14]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[13]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[12]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[11]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[10]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[9]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[8]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[7]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[6]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[5]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[4]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[3]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[2]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[1]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_i[0]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_intg_i[6]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_intg_i[5]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_intg_i[4]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_intg_i[3]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_intg_i[2]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_intg_i[1]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {instr_rdata_intg_i[0]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports instr_err_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports data_gnt_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports data_rvalid_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[31]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[30]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[29]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[28]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[27]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[26]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[25]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[24]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[23]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[22]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[21]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[20]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[19]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[18]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[17]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[16]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[15]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[14]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[13]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[12]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[11]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[10]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[9]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[8]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[7]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[6]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[5]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[4]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[3]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[2]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[1]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_i[0]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_intg_i[6]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_intg_i[5]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_intg_i[4]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_intg_i[3]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_intg_i[2]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_intg_i[1]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {data_rdata_intg_i[0]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports data_err_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports irq_software_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports irq_timer_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports irq_external_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[14]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[13]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[12]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[11]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[10]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[9]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[8]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[7]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[6]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[5]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[4]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[3]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[2]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[1]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {irq_fast_i[0]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports irq_nm_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports scramble_key_valid_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[127]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[126]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[125]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[124]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[123]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[122]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[121]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[120]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[119]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[118]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[117]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[116]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[115]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[114]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[113]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[112]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[111]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[110]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[109]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[108]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[107]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[106]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[105]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[104]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[103]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[102]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[101]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[100]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[99]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[98]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[97]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[96]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[95]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[94]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[93]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[92]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[91]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[90]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[89]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[88]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[87]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[86]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[85]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[84]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[83]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[82]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[81]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[80]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[79]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[78]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[77]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[76]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[75]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[74]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[73]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[72]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[71]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[70]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[69]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[68]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[67]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[66]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[65]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[64]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[63]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[62]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[61]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[60]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[59]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[58]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[57]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[56]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[55]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[54]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[53]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[52]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[51]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[50]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[49]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[48]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[47]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[46]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[45]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[44]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[43]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[42]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[41]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[40]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[39]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[38]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[37]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[36]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[35]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[34]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[33]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[32]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[31]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[30]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[29]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[28]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[27]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[26]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[25]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[24]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[23]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[22]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[21]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[20]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[19]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[18]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[17]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[16]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[15]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[14]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[13]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[12]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[11]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[10]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[9]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[8]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[7]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[6]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[5]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[4]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[3]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[2]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[1]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_key_i[0]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[63]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[62]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[61]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[60]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[59]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[58]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[57]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[56]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[55]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[54]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[53]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[52]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[51]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[50]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[49]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[48]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[47]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[46]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[45]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[44]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[43]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[42]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[41]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[40]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[39]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[38]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[37]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[36]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[35]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[34]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[33]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[32]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[31]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[30]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[29]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[28]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[27]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[26]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[25]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[24]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[23]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[22]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[21]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[20]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[19]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[18]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[17]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[16]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[15]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[14]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[13]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[12]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[11]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[10]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[9]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[8]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[7]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[6]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[5]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[4]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[3]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[2]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[1]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {scramble_nonce_i[0]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports debug_req_i]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {fetch_enable_i[3]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {fetch_enable_i[2]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {fetch_enable_i[1]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports {fetch_enable_i[0]}]
set_driving_cell -lib_cell SAEDHVT14_BUF_2 -library saed14hvt_ss0p72vm40c -pin \
X [get_ports scan_rst_ni]
set_load -pin_load 10 [get_ports instr_req_o]
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
set_load -pin_load 10 [get_ports data_req_o]
set_load -pin_load 10 [get_ports data_we_o]
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
set_load -pin_load 10 [get_ports scramble_req_o]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][31]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][30]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][29]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][28]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][27]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][26]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][25]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][24]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][23]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][22]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][21]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][20]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][19]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][18]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][17]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][16]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][15]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][14]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][13]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][12]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][11]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][10]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][9]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][8]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][7]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][6]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][5]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][4]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][3]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][2]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][1]}]
set_load -pin_load 10 [get_ports {crash_dump_o[current_pc][0]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][31]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][30]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][29]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][28]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][27]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][26]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][25]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][24]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][23]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][22]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][21]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][20]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][19]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][18]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][17]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][16]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][15]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][14]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][13]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][12]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][11]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][10]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][9]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][8]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][7]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][6]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][5]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][4]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][3]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][2]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][1]}]
set_load -pin_load 10 [get_ports {crash_dump_o[next_pc][0]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][31]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][30]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][29]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][28]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][27]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][26]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][25]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][24]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][23]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][22]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][21]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][20]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][19]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][18]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][17]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][16]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][15]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][14]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][13]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][12]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][11]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][10]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][9]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][8]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][7]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][6]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][5]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][4]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][3]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][2]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][1]}]
set_load -pin_load 10 [get_ports {crash_dump_o[last_data_addr][0]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][31]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][30]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][29]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][28]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][27]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][26]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][25]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][24]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][23]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][22]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][21]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][20]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][19]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][18]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][17]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][16]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][15]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][14]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][13]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][12]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][11]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][10]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][9]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][8]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][7]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][6]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][5]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][4]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][3]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][2]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][1]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_pc][0]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][31]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][30]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][29]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][28]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][27]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][26]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][25]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][24]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][23]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][22]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][21]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][20]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][19]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][18]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][17]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][16]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][15]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][14]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][13]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][12]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][11]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][10]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][9]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][8]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][7]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][6]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][5]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][4]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][3]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][2]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][1]}]
set_load -pin_load 10 [get_ports {crash_dump_o[exception_addr][0]}]
set_load -pin_load 10 [get_ports double_fault_seen_o]
set_load -pin_load 10 [get_ports alert_minor_o]
set_load -pin_load 10 [get_ports alert_major_internal_o]
set_load -pin_load 10 [get_ports alert_major_bus_o]
set_load -pin_load 10 [get_ports core_sleep_o]
create_clock [get_ports clk_i]  -period 6.25  -waveform {0 3.125}
set_clock_latency 0  [get_clocks clk_i]
set_clock_uncertainty -setup 0.2  [get_clocks clk_i]
set_clock_uncertainty -hold 0.1  [get_clocks clk_i]
set_clock_transition -max -rise 0.05 [get_clocks clk_i]
set_clock_transition -min -rise 0.05 [get_clocks clk_i]
set_clock_transition -max -fall 0.05 [get_clocks clk_i]
set_clock_transition -min -fall 0.05 [get_clocks clk_i]
create_generated_clock [get_pins -hsc @ core_clock_gate_i/U2@X]  -name cluster_clock_gating  -source [get_ports clk_i]  -master_clock clk_i  -divide_by 1  -add
set_clock_latency 0  [get_clocks cluster_clock_gating]
set_clock_uncertainty -setup 0.2  [get_clocks cluster_clock_gating]
set_clock_uncertainty -hold 0.1  [get_clocks cluster_clock_gating]
set_clock_transition -max -rise 0.05 [get_clocks cluster_clock_gating]
set_clock_transition -min -rise 0.05 [get_clocks cluster_clock_gating]
set_clock_transition -max -fall 0.05 [get_clocks cluster_clock_gating]
set_clock_transition -min -fall 0.05 [get_clocks cluster_clock_gating]
