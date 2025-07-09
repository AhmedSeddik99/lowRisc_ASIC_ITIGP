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

save_session "session_0"
################################
##########_ALL_CLEAN_###########
################################

remote_execute {write_changes -format icc2tcl -output "changes_4_all_clean.tcl"}

