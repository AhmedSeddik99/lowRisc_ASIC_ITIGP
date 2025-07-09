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

# 1 hold remaining
report_timing -delay_type min -max_paths 10 > "$REPORT/hold_0.rpt"

report_timing -delay_type max -from ibex_top_inst/u_ibex_core/if_stage_i/instr_rdata_id_o_reg[21] \
	-to ibex_top_inst/u_ibex_core/if_stage_i/instr_rdata_id_o_reg[22] > "$REPORT/setup_of_worst_hold_0_fixed.rpt"

insert_buffer "ibex_top_inst/u_ibex_core/if_stage_i/instr_rdata_id_o_reg[21]/Q" "SAEDHVT14_DEL_R2V2_2"

report_timing -delay_type min -from ibex_top_inst/u_ibex_core/if_stage_i/instr_rdata_id_o_reg[21] \
	-to ibex_top_inst/u_ibex_core/if_stage_i/instr_rdata_id_o_reg[22] > "$REPORT/worst_hold_0_fixed.rpt"

################################
report_qor > "$REPORT/qor_1.rpt"

save_session "session_1"
################################
#########_TIMING_CLEAN_#########
################################

report_constraint -all_violators -max_capacitance -verbose > "$REPORT/max_cap_1.rpt"

fix_eco_drc -type max_capacitance -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8" "SAEDHVT14_BUF_10" "SAEDHVT14_BUF_12" "SAEDHVT14_BUF_16" "SAEDHVT14_BUF_20"} > "$LOG/eco_max_cap_1.log"

################################
report_qor > "$REPORT/qor_2.rpt"

report_timing -delay_type min > "$REPORT/hold_2.rpt"
report_timing -delay_type max > "$REPORT/setup_2.rpt"

save_session "session_2"
################################
##########_ALL_CLEAN_###########
################################

remote_execute {write_changes -format icc2tcl -output "changes_2_all_clean.tcl"}

