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

report_constraint -all_violators -max_transition -verbose > "$REPORT/max_trans_0.rpt"

fix_eco_drc -type max_transition -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8" "SAEDHVT14_BUF_10" "SAEDHVT14_BUF_12" "SAEDHVT14_BUF_16" "SAEDHVT14_BUF_20"} > "$LOG/eco_max_trans_0.log"

report_constraint -all_violators -max_capacitance -verbose > "$REPORT/max_cap_0.rpt"

fix_eco_drc -type max_capacitance -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8" "SAEDHVT14_BUF_10" "SAEDHVT14_BUF_12" "SAEDHVT14_BUF_16" "SAEDHVT14_BUF_20"} > "$LOG/eco_max_cap_0.log"

################################
report_qor > "$REPORT/qor_1.rpt"

save_session "session_1"
################################
##########_ALL_CLEAN_###########
################################

remote_execute {write_changes -format icc2tcl -output "changes_1_all_clean.tcl"}

