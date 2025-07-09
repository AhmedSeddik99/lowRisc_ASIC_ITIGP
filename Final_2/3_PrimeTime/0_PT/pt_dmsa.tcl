set WORK "./work"

set_app_var multi_scenario_working_directory $WORK
sh rm -rf $WORK
sh mkdir $WORK

set REPORT "./reports"
sh rm -rf $REPORT
sh mkdir $REPORT


set LOG "./log"
sh rm -rf $LOG
sh mkdir $LOG


set OUTPUT "./output"
sh rm -rf $OUTPUT
sh mkdir $OUTPUT


## Create scenarios ##
create_scenario -name "Func_Slow" -specific_data "./pt_func_slow.tcl"
create_scenario -name "Func_Fast" -specific_data "./pt_func_fast.tcl" 

set_host_options -name hamada -max_cores 4 -num_processes 4

report_host_usage

start_hosts

current_session "Func_Slow Func_Fast"


remote_execute {check_timing}
remote_execute {update_timing}

save_session "session_0"

################################
report_qor > "$REPORT/qor_0.rpt"

fix_eco_timing -type setup -setup_margin 0.02 -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8" "SAEDHVT14_BUF_10" "SAEDHVT14_BUF_12" "SAEDHVT14_BUF_16" "SAEDHVT14_BUF_20"} > "$LOG/eco_setup_0.log"

fix_eco_timing -type hold -hold_margin 0.02 -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8" "SAEDHVT14_BUF_10" "SAEDHVT14_BUF_12" "SAEDHVT14_BUF_16" "SAEDHVT14_BUF_20"} > "$LOG/eco_hold_0.log"

################################
report_qor > "$REPORT/qor_1.rpt"

report_timing -delay_type min -max_paths 10 > "$REPORT/hold_1.rpt"

# 8 hold remaining
# the worst hold has slack of -0.1 and its setup slack is 2.28 
report_timing -delay_type max -from ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg \
	-to ibex_top_inst/core_clock_gate_i/U2 > "$REPORT/setup_of_worst_hold_1.rpt"

insert_buffer "ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q" "SAEDHVT14_DEL_R2V2_2"
insert_buffer "ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q" "SAEDHVT14_DEL_R2V2_2"
insert_buffer "ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q" "SAEDHVT14_DEL_R2V2_2"

report_timing -delay_type min -from ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg \
	-to ibex_top_inst/core_clock_gate_i/U2 > "$REPORT/worst_hold_1_fixed.rpt"

report_timing -delay_type max -from ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg \
	-to ibex_top_inst/core_clock_gate_i/U2 > "$REPORT/setup_of_worst_hold_1_fixed.rpt"

################################
report_qor > "$REPORT/qor_2.rpt"

fix_eco_timing -type setup -setup_margin 0.02 -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8" "SAEDHVT14_BUF_10" "SAEDHVT14_BUF_12" "SAEDHVT14_BUF_16" "SAEDHVT14_BUF_20"} > "$LOG/eco_setup_2.log"

fix_eco_timing -type hold -hold_margin 0.02 -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8" "SAEDHVT14_BUF_10" "SAEDHVT14_BUF_12" "SAEDHVT14_BUF_16" "SAEDHVT14_BUF_20" "SAEDHVT14_DEL_R2V2_2" "SAEDHVT14_DEL_R2V3_2"} > "$LOG/eco_hold_2.log"

################################
report_qor > "$REPORT/qor_3.rpt"

report_timing -delay_type min -max_paths 10 > "$REPORT/hold_3.rpt"

# 5 hold remaining
# the worst hold has slack of -0.05 and its setup slack is 4.58 
report_timing -delay_type max -from ibex_top_inst/u_ibex_core/if_stage_i/gen_prefetch_buffer.prefetch_buffer_i/fifo_i/instr_addr_q_reg[31] \
	-to ibex_top_inst/u_ibex_core/if_stage_i/gen_prefetch_buffer.prefetch_buffer_i/fifo_i/rdata_q_reg[0][0] > "$REPORT/setup_of_worst_hold_3.rpt"


insert_buffer "ibex_top_inst/u_ibex_core/if_stage_i/gen_prefetch_buffer.prefetch_buffer_i/fifo_i/instr_addr_q_reg[31]/Q" "SAEDHVT14_DEL_R2V2_2"
insert_buffer "ibex_top_inst/u_ibex_core/if_stage_i/gen_prefetch_buffer.prefetch_buffer_i/fifo_i/instr_addr_q_reg[31]/Q" "SAEDHVT14_DEL_R2V2_2"

report_timing -delay_type min -from ibex_top_inst/u_ibex_core/if_stage_i/gen_prefetch_buffer.prefetch_buffer_i/fifo_i/instr_addr_q_reg[31] \
	-to ibex_top_inst/u_ibex_core/if_stage_i/gen_prefetch_buffer.prefetch_buffer_i/fifo_i/rdata_q_reg[0][0] > "$REPORT/worst_hold_3_fixed.rpt"

report_timing -delay_type max -from ibex_top_inst/u_ibex_core/if_stage_i/gen_prefetch_buffer.prefetch_buffer_i/fifo_i/instr_addr_q_reg[31] \
	-to ibex_top_inst/u_ibex_core/if_stage_i/gen_prefetch_buffer.prefetch_buffer_i/fifo_i/rdata_q_reg[0][0] > "$REPORT/setup_of_worst_hold_3_fixed.rpt"

################################
report_qor > "$REPORT/qor_4.rpt"

fix_eco_timing -type hold -hold_margin 0.02 -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8" "SAEDHVT14_BUF_10" "SAEDHVT14_BUF_12" "SAEDHVT14_BUF_16" "SAEDHVT14_BUF_20" "SAEDHVT14_DEL_R2V2_2" "SAEDHVT14_DEL_R2V3_2"} > "$LOG/eco_hold_4.log"

report_timing -delay_type min -max_paths 10 > "$REPORT/hold_4.rpt"

# 3 hold remaining
# the worst 1 hold has slack of -0.04 and its setup slack is 4.61 
report_timing -delay_type max -from ibex_top_inst/u_ibex_core/if_stage_i/pc_id_o_reg[16] \
	-to ibex_top_inst/u_ibex_core/if_stage_i/pc_id_o_reg[17] > "$REPORT/setup_of_worst_1_hold_4.rpt"

# the worst 2 hold has slack of -0.02 and its setup slack is 4.55 
report_timing -delay_type max -from ibex_top_inst/u_ibex_core/if_stage_i/pc_id_o_reg[16] \
	-to ibex_top_inst/u_ibex_core/wb_stage_i/g_writeback_stage.wb_pc_q_reg[16] > "$REPORT/setup_of_worst_2_hold_4.rpt"

# the worst 3 hold has slack of -0.01 and its setup slack is 4.56 
report_timing -delay_type max -from ibex_top_inst/u_ibex_core/if_stage_i/pc_id_o_reg[16] \
	-to ibex_top_inst/u_ibex_core/if_stage_i/pc_id_o_reg[16] > "$REPORT/setup_of_worst_3_hold_4.rpt"

insert_buffer "ibex_top_inst/u_ibex_core/if_stage_i/pc_id_o_reg[16]/Q" "SAEDHVT14_DEL_R2V2_2"
insert_buffer "ibex_top_inst/u_ibex_core/if_stage_i/pc_id_o_reg[16]/Q" "SAEDHVT14_DEL_R2V2_2"

################################
report_qor > "$REPORT/qor_5.rpt"

save_session "session_1"
################################
#########_TIMING_CLEAN_#########
################################

report_constraint -all_violators -max_transition -verbose > "$REPORT/max_trans_5.rpt"

fix_eco_drc -type max_transition -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8" "SAEDHVT14_BUF_10" "SAEDHVT14_BUF_12" "SAEDHVT14_BUF_16" "SAEDHVT14_BUF_20"} > "$LOG/eco_max_trans_5.log"

report_constraint -all_violators -max_transition -verbose > "$REPORT/max_cap_5.rpt"

fix_eco_drc -type max_capacitance -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8" "SAEDHVT14_BUF_10" "SAEDHVT14_BUF_12" "SAEDHVT14_BUF_16" "SAEDHVT14_BUF_20"} > "$LOG/eco_max_cap_5.log"

################################
report_qor > "$REPORT/qor_6.rpt"

save_session "session_2"
################################
##########_ALL_CLEAN_###########
################################

remote_execute {write_changes -format icc2tcl -output "changes_0_all_clean.tcl"}


