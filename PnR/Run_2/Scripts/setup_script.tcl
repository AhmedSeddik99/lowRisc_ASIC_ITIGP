puts "############################"
puts "######     Setup     #######"
puts "############################"
set BLOCK "ibex_hvt"

#We used the tech file provided through Google Drive
set TECH_FILE "../PDK/saed14nm_1p9m_mw.tf"

set REF_NDM "../NDM/saed14hvt.ndm"

set NETLIST "./syn_output/ibex_wrapper.v"
set SDC "./syn_output/ibex_wrapper.sdc"

set TLUP_MAX "../PDK/saed14nm_1p9m_Cmax.tluplus"
set TLUP_MIN "../PDK/saed14nm_1p9m_Cmin.tluplus"

set MAP_FILE "../PDK/saed14nm_1p9m_layer.map"

set LOG "./LOG/Setup"
sh rm -rf $LOG
sh mkdir -p $LOG


create_lib "./$BLOCK" -technology $TECH_FILE -ref_libs "$REF_NDM" > "$LOG/create_lib.log"

read_verilog $NETLIST > "$LOG/read_verilog.log"


#####_Create Scenario_#####
remove_corners -all
remove_modes -all
remove_scenarios -all

create_corner Slow > "$LOG/create_corner.log"

create_mode Func > "$LOG/create_mode.log"

create_scenario -mode Func -corner Slow -name Func_Slow > "$LOG/create_scenario.log"

current_scenario Func_Slow
report_scenarios > "$LOG/report_scenarios.log"

set_scenario_status [get_scenarios Func_Slow] -leakage_power false -dynamic_power false > "$LOG/set_scenario_status.log"
report_scenarios >> "$LOG/report_scenarios.log"


read_sdc $SDC > "$LOG/read_sdc.log"

link_block > "$LOG/link_block.log"


read_parasitic_tech -tlup $TLUP_MAX -layermap $MAP_FILE -name tlup_max > "$LOG/read_parasitic_tech_max.log"
read_parasitic_tech -tlup $TLUP_MIN -layermap $MAP_FILE -name tlup_min > "$LOG/read_parasitic_tech_min.log"

set_parasitic_parameters -corners [get_corners Slow] -late_spec tlup_max -early_spec tlup_min
###########################

save_block -as "$BLOCK\_setup"

puts "############################"
puts "#####  End of Setup  #######"
puts "############################"


