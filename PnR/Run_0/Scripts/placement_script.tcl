puts "############################"
puts "######  Placement    #######"
puts "############################"

set PATH "./ibex_hvt"
# set the block name at the previous stage
set PREV_BLOCK "ibex_hvt_powerplan"
set BLOCK "ibex_hvt_placement"

set LOG "./LOG/Placement"
sh rm -rf $LOG
sh mkdir -p $LOG

set REPORT "./REPORT/Placement"
sh rm -rf $REPORT
sh mkdir $REPORT

set OUTPUT "./OUTPUT/Placement"
sh rm -rf $OUTPUT
sh mkdir -p $OUTPUT

# open block design view
open_block "$PATH:$PREV_BLOCK.design" > "$LOG/open_block.log"

copy_block -from_block "$PREV_BLOCK" -to_block "$BLOCK" > "$LOG/copy_block.log"

# guide the tool to change in the current block
current_block $BLOCK > "$LOG/current_block.log"

set_svf "$OUTPUT/ibex_wrapper_pl.svf" > "$LOG/svf.log"

#add the dont_use here 
source ./syn_output/dont_use_const.tcl > "$LOG/dont_use_const.log"

set_placement_spacing_label -name {X} -side both -lib_cells [get_lib_cells */*/frame] > "$LOG/set_placement_spacing_label.log"
set_placement_spacing_rule -labels {X X} {0 3} >> "$LOG/set_placement_spacing_label.log"

add_spare_cells -cell_name sspare -lib_cell "*/SAEDHVT14_ND2_2 */SAEDHVT14_NR2_2" -num_instances 50 > "$LOG/add_spare_cells.log"

set spare_cells [get_cells *sspare*]
spread_spare_cells -cells $spare_cells > "$LOG/spread_spare_cells.log"
place_eco_cells -cells $spare_cells -legalize_only  > "$LOG/place_eco_cells.log"

set_app_options -list {opt.tie_cell.max_fanout 25}  > "$LOG/set_app_options.log"
add_tie_cells -objects $spare_cells -tie_low_lib_cells [get_lib_cells */SAEDHVT14_TIE0_4]  -tie_high_lib_cells [get_lib_cells  */SAEDHVT14_TIE1_4]  -legalize  > "$LOG/add_tie_cells.log"
set_dont_touch $spare_cells > "$LOG/set_dont_touch.log"
set_fixed_objects $spare_cells > "$LOG/set_fixed_objects.log"


set_app_options -name place.coarse.continue_on_missing_scandef -value true >> "$LOG/set_app_options.log"

set_app_option -name place.coarse.congestion_driven_max_util -value 0.5 >> "$LOG/set_app_options.log"
set_app_options -name place.coarse.max_density -value 0.2 >> "$LOG/set_app_options.log"


set_app_options -name place.coarse.target_routing_density -value 0.7 >> "$LOG/set_app_options.log"

set_app_options -name opt.common.user_instance_name_prefix -value "PLACE_" >> "$LOG/set_app_options.log"

# To have more congestion-aware placement
set_app_options -name place_opt.congestion.effort -value high >> "$LOG/set_app_options.log"


place_opt > "$LOG/place_opt.log"


connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"] > "$LOG/connect_pg_net.log"
connect_pg_net -net "GND" [get_pins -hierarchical "*/VSS"] >> "$LOG/connect_pg_net.log"


set_svf -off >> "$LOG/svf.log"


##############################
		# CHECKS #
##############################
check_legality -verbose > "$REPORT/check_legality.rpt"
report_utilization > "$REPORT/report_utilization.rpt"
check_pg_drc > "$REPORT/check_pg_drc.rpt"
report_design > "$REPORT/report_design.rpt"
report_cell > "$REPORT/report_cell.rpt"
report_qor > "$REPORT/report_qor.rpt"  
report_timing > "$REPORT/report_timing.rpt"

report_congestion -mode summary > "$REPORT/report_congestion.rpt"

check_routability > "$REPORT/check_routability.rpt"

##############################
		# SAVE #
##############################
save_block

##############################
		# OUTPUTS #
##############################

write_verilog "$OUTPUT/ibex_wrapper_pl.v"

puts "############################"
puts "###  End of Placement    ###"
puts "############################"

