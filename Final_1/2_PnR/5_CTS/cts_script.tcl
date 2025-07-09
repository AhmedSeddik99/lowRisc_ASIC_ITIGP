puts "############################"
puts "#########   CTS   ##########"
puts "############################"
set PATH "./ibex_hvt"
# set the block name at the previous stage
set PREV_BLOCK "ibex_hvt_placement"
set BLOCK "ibex_hvt_cts"


set LOG "./5_CTS/log"
sh rm -rf $LOG
sh mkdir -p $LOG

set REPORT "./5_CTS/reports"
sh rm -rf $REPORT
sh mkdir $REPORT

set OUTPUT "./5_CTS/output"
sh rm -rf $OUTPUT
sh mkdir -p $OUTPUT

set DONT_USE "../0_Synthesis/constraints/dont_use_const_hendawi.tcl"

# open block design view
open_block "$PATH:$PREV_BLOCK.design" > "$LOG/open_block.log"


copy_block -from_block "$PREV_BLOCK" -to_block "$BLOCK" > "$LOG/copy_block.log"

# guide the tool to change in the current block
current_block $BLOCK > "$LOG/current_block.log"

set_svf "$OUTPUT/ibex_wrapper_cts.svf" > "$LOG/svf.log"

set CLK_NDR_NAME "clk_2Xw_2Xs"
set TARGET_SKEW 0.01

## remove_ideal_clock
## set_propagated clock

# 0.3 and 0.2 were set arbitrarily
set_input_transition -rise 0.05 [get_ports clk_i] > "$LOG/set_input_transition.log"
set_input_transition -fall 0.05 [get_ports clk_i] >> "$LOG/set_input_transition.log"


set_ignored_layers -max_routing_layer M9 -min_routing_layer M1 -verbose > "$LOG/set_ignored_layers.log"

remove_clock_tree_options -all -target_latency -target_skew -max_levels > "$LOG/remove_clock_tree_options.log"

set_lib_cell_purpose -exclude cts [get_lib_cells -of [get_cells *]] > "$LOG/set_lib_cell_purpose.log"

set_lib_cell_purpose -include cts */*_INV_S_3* >> "$LOG/set_lib_cell_purpose.log"
set_lib_cell_purpose -include cts */*_INV_S_4* >> "$LOG/set_lib_cell_purpose.log"
set_lib_cell_purpose -include cts */*_INV_S_6* >> "$LOG/set_lib_cell_purpose.log"
set_lib_cell_purpose -include cts */*_INV_S_8* >> "$LOG/set_lib_cell_purpose.log"



set_lib_cell_purpose -exclude all  [get_lib_cells */*DEL*] >> "$LOG/set_lib_cell_purpose.log"
# improves in timing so that it will help during hold opt
set_lib_cell_purpose -include hold [get_lib_cells */*DEL*] >> "$LOG/set_lib_cell_purpose.log"

# add the dont_use here 
source $DONT_USE > "$LOG/dont_use_const.log"

create_routing_rule $CLK_NDR_NAME -multiplier_spacing 2 -multiplier_width 2 > "$LOG/create_routing_rule.log"

set_clock_routing_rules -net_type sink -default_rule -max_routing_layer M9 -min_routing_layer M1  > "$LOG/set_clock_routing_rules.log"

set_clock_routing_rules -net_type root -rules $CLK_NDR_NAME -max_routing_layer M9 -min_routing_layer M3  > "$LOG/set_clock_routing_rules.log"

set_clock_routing_rules -net_type internal -rules $CLK_NDR_NAME -max_routing_layer M9 -min_routing_layer M3 >> "$LOG/set_clock_routing_rules.log"

# 0.05 to match the clock_transition values in the synthesis constraints
set_max_transition -clock_path 0.05 [get_clocks] > "$LOG/set_max_transition.log"

set_app_options -as_user_default -list {cts.common.max_fanout 25} > "$LOG/set_app_options.log"

# to enable ndr promotion in case of no congestion restrictions
set_app_options -as_user_default -list {cts.optimize.enable_congestion_aware_ndr_promotion true} > "$LOG/set_app_options.log"


set_clock_tree_options -corners [all_corners ] -target_skew $TARGET_SKEW >> "$LOG/set_clock_tree_options.log"

set_app_options -name cts.common.user_instance_name_prefix -value "CTS_" >> "$LOG/set_app_options.log"
set_app_options -name opt.common.user_instance_name_prefix -value "CTS_" >> "$LOG/set_app_options.log"



report_clock_settings  > "$REPORT/report_clock_settings.rpt"


set cts_enable_drc_fixing_on_data true

#clock_opt -to build_clock  > "$LOG/clock_opt.log"
echo "##########################################" >> "$LOG/clock_opt.log"
#clock_opt -from route_clock -to route_clock >> "$LOG/clock_opt.log"


clock_opt > "$LOG/clock_opt.log"



connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"] > "$LOG/connect_pg_net.log"
connect_pg_net -net "GND" [get_pins -hierarchical "*/VSS*"] >> "$LOG/connect_pg_net.log"

remove_clock_latency [get_clocks *]

set_svf -off >> "$LOG/svf.log"
			 



##############################
		# CHECKS #
##############################
check_pg_drc > "$REPORT/check_pg_drc.rpt"

check_pg_connectivity > "$REPORT/check_pg_connectivity.rpt"

check_pg_missing_vias > "$REPORT/check_missing_vias.rpt"

check_routes > "$REPORT/check_routes.rpt"

check_routability > "$REPORT/check_routability.rpt"


report_clock_timing -type summary > "$REPORT/report_clock_timing.rpt"
report_timing  > "$REPORT/report_timing.rpt"
report_timing -delay_type min > "$REPORT/report_timing_min.rpt"
report_constraints -all_violators -max_delay -min_delay > "$REPORT/report_constraints.rpt"
report_qor > "$REPORT/report_qor.rpt"

report_utilization > "$REPORT/report_utilization.rpt"

report_congestion -mode summary > "$REPORT/report_congestion.rpt"

check_legality > "$REPORT/check_legality.rpt"

##############################
		# SAVE #
##############################
save_block 


##############################
		# OUTPUTS #
##############################

write_verilog "$OUTPUT/ibex_wrapper_cts.v"

puts "############################"
puts "###### End of CTS   ########"
puts "############################"










