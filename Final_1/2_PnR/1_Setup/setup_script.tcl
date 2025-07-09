puts "############################"
puts "######     Setup     #######"
puts "############################"
set BLOCK "ibex_hvt"

#We used the tech file provided through Google Drive
set TECH_FILE "/mnt/hgfs/PnR_GP/Final_1/PDK/saed14nm_1p9m_mw.tf"

set REF_NDM "./0_NDM/saed14hvt.ndm"
#set REF_NDM "/mnt/hgfs/0_GP/Official_Repo/lowRisc_ASIC_ITIGP/PnR/NDM/saed14hvt.ndm"

set NETLIST "../1_DFT/output/ibex_wrapper.v"
set SDC "../1_DFT/output/ibex_wrapper.sdc"

set TLUP_MAX "../PDK/saed14nm_1p9m_Cmax.tluplus"
set TLUP_MIN "../PDK/saed14nm_1p9m_Cmin.tluplus"

set MAP_FILE "../PDK/saed14nm_1p9m_layer.map"

set LOG "./1_Setup/log"
sh rm -rf $LOG
sh mkdir -p $LOG

set REPORT "./1_Setup/reports"
sh rm -rf $REPORT
sh mkdir -p $REPORT


create_lib "$BLOCK" -technology $TECH_FILE -ref_libs "$REF_NDM" > "$LOG/create_lib.log"

read_verilog $NETLIST > "$LOG/read_verilog.log"


#####_Create Scenario_#####
remove_corners -all
remove_modes -all
remove_scenarios -all


create_corner Slow > "$LOG/create_corner.log"

set_process_label "ss" -corner "Slow"
set_process_number "1" -corner "Slow"
set_voltage "0.72" -corner "Slow"
set_temperature "-40" -corner "Slow"


create_corner Fast >> "$LOG/create_corner.log"

set_process_label "ff" -corner "Fast"
set_process_number "1" -corner "Fast"
set_voltage "0.88" -corner "Fast"
set_temperature "125" -corner "Fast"

#return


create_mode Func > "$LOG/create_mode.log"

create_scenario -mode Func -corner Slow -name Func_Slow > "$LOG/create_scenario.log"
create_scenario -mode Func -corner Fast -name Func_Fast >> "$LOG/create_scenario.log"


#current_scenario Func_Slow
report_scenarios > "$REPORT/report_scenarios.rpt"

set_scenario_status [get_scenarios Func_Slow] -leakage_power false -dynamic_power false > "$LOG/set_scenario_status.log"
set_scenario_status [get_scenarios Func_Fast] -leakage_power false -dynamic_power false >> "$LOG/set_scenario_status.log"

report_scenarios >> "$REPORT/report_scenarios.rpt"

report_pvt

current_scenario Func_Slow
read_sdc $SDC > "$LOG/read_sdc.log"


current_scenario Func_Fast
read_sdc $SDC > "$LOG/read_sdc.log"
#return	
link_block > "$LOG/link_block.log"


read_parasitic_tech -tlup $TLUP_MAX -layermap $MAP_FILE -name tlup_max > "$LOG/read_parasitic_tech_max.log"
read_parasitic_tech -tlup $TLUP_MIN -layermap $MAP_FILE -name tlup_min > "$LOG/read_parasitic_tech_min.log"


set_parasitic_parameters -corners [get_corners Slow] -late_spec tlup_max -early_spec tlup_max -early_temperature -40  -late_temperature -40
set_parasitic_parameters -corners [get_corners Fast] -late_spec tlup_min -early_spec tlup_min -early_temperature 125  -late_temperature 125



report_pvt > "$REPORT/report_pvt.rpt"
###########################

save_block -as "$BLOCK\_setup"

puts "############################"
puts "#####  End of Setup  #######"
puts "############################"


