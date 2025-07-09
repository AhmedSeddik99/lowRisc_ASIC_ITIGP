puts "#######################################"
puts "####### Routing MM Scenario ###########"
puts "#######################################"


set PATH "./ibex_hvt"
# set the block name at the previous stage
set PREV_BLOCK "ibex_hvt_routing_change_4"
set BLOCK "ibex_hvt_routing_change_5"



set LOG "./7_Eco/log/Routing_change_5"
sh rm -rf $LOG
sh mkdir -p $LOG


set REPORT "./7_Eco/report/Routing_change_5"
sh rm -rf $REPORT
sh mkdir -p $REPORT


set OUTPUT "./7_Eco/output/Routing_change_5"
sh rm -rf $OUTPUT
sh mkdir -p $OUTPUT



# open block design view
open_block "$PATH:$PREV_BLOCK.design" > "$LOG/open_block.log"

copy_block -from_block "$PREV_BLOCK" -to_block "$BLOCK" > "$LOG/copy_block.log"

# guide the tool to change in the current block
current_block $BLOCK > "$LOG/current_block.log"


# Source changes file from PrimeTime
source ./7_Eco/ibex_wrapper_changes.tcl



# PnR cells used in PrimeTime
place_eco_cells -eco_changed_cells > "$LOG/place_eco_cells.log" 


connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"] >  "$LOG/connect_pg_net.log"
connect_pg_net -net "GND" [get_pins -hierarchical "*/VSS*"] >> "$LOG/connect_pg_net.log"

#legalize_placement  > "$LOG/legalize_placement.log"

#route_eco > "$LOG/route_eco.log"

route_eco -reroute modified_nets_only > "$LOG/route_eco.log"


#route_detail -incremental true > "$LOG/route_detail_after_eco.log"



##############################
		# CHECKS #
##############################

check_pg_drc > "$REPORT/check_pg_drc.log"
report_utilization > "$REPORT/report_utilization.log"

check_pg_connectivity > "$REPORT/check_pg_connectivity.rpt"

check_pg_missing_vias > "$REPORT/check_missing_vias.rpt"

check_routes > "$REPORT/check_routes.rpt"

check_lvs > "$REPORT/check_lvs.rpt"

report_clock_timing -type summary > "$REPORT/report_clock_timing.rpt"
report_timing  > "$REPORT/report_timing.rpt"
report_timing -delay_type min > "$REPORT/report_timing_min.rpt"
report_constraints -all_violators -max_delay -min_delay > "$REPORT/report_constraints.rpt"

report_qor  > "$REPORT/report_qor.rpt"
check_legality > "$REPORT/check_legality.rpt"

save_block 


####################################
		# OUTPUTS #
####################################

write_def "$OUTPUT/ibex_wrapper_change_5.def"

write_sdc -scenario Func_Fast -output "$OUTPUT/ibex_wrapper_fast_change_5.sdc"

write_sdc -scenario Func_Slow -output "$OUTPUT/ibex_wrapper_slow_change_5.sdc"

write_verilog "$OUTPUT/ibex_wrapper_rt_change_5.v"

write_parasitics -output "$OUTPUT/ibex_wrapper_change_5"






