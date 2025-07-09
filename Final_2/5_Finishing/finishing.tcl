puts "############################"
puts "#######   Finishing  ########"
puts "############################"
set PATH "../2_PnR/ibex_hvt"
# set the block name at the previous stage
set PREV_BLOCK "ibex_hvt_eco_3"
set BLOCK "ibex_hvt_finishing_2"


set LOG "./log"
sh rm -rf $LOG
sh mkdir -p $LOG

set REPORT "./reports"
sh rm -rf $REPORT
sh mkdir $REPORT


set OUTPUT "./output"
sh rm -rf $OUTPUT
sh mkdir -p $OUTPUT


# open block design view
open_block "$PATH:$PREV_BLOCK.design" > "$LOG/open_block.log"

copy_block -from_block "$PREV_BLOCK" -to_block "$BLOCK" > "$LOG/copy_block.log"

# guide the tool to change in the current block
current_block $BLOCK > "$LOG/current_block.log"


set_svf "$OUTPUT/ibex_wrapper_rt.svf" > "$LOG/svf.log"


set pnr_std_fillers " */SAEDHVT14_FILL_ECO_18   */SAEDHVT14_FILL_ECO_15 */SAEDHVT14_FILL_ECO_12 */SAEDHVT14_FILL_ECO_9   */SAEDHVT14_FILL_ECO_2 */SAEDHVT14_FILL_ECO_1    */SAEDHVT14_FILL_NNWIV1Y2_2 */SAEDHVT14_FILL_NNWIV1Y2_3 */SAEDHVT14_FILL_NNWIY2_2 */SAEDHVT14_FILL_NNWIY2_3 */SAEDHVT14_FILL_NNWSPACERY2_7 */SAEDHVT14_FILL_NNWVDDBRKY2_3 */SAEDHVT14_FILLP2 */SAEDHVT14_FILLP3 */SAEDHVT14_FILL_SPACER_7 */SAEDHVT14_FILL_Y2_3 "

set std_fillers_dont_use "  */SAEDHVT14_DCAP_PV1ECO_*   "
set std_fillers "  */SAEDHVT14_DCAP_*   "

set_dont_use [get_lib_cells $std_fillers_dont_use]

create_stdcell_filler -lib_cell $std_fillers > "$LOG/create_stdcell_filler.log"

remove_stdcell_fillers_with_violation > "$LOG/remove_stdcell_fillers_with_violation.log"



connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"] > "$LOG/connect_pg_net.log"
connect_pg_net -net "GND" [get_pins -hierarchical "*/VSS*"] >> "$LOG/connect_pg_net.log"


create_stdcell_filler -lib_cell $pnr_std_fillers >> "$LOG/create_stdcell_filler.log"

# DRCs are solved manually #

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"] >> "$LOG/connect_pg_net.log"
connect_pg_net -net "GND" [get_pins -hierarchical "*/VSS*"] >> "$LOG/connect_pg_net.log"


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

write_def "$OUTPUT/ibex_wrapper_finishing.def"

write_sdc -scenario Func_Fast -output "$OUTPUT/ibex_wrapper_fast_finishing.sdc"

write_sdc -scenario Func_Slow -output "$OUTPUT/ibex_wrapper_slow_finishing.sdc"

write_verilog "$OUTPUT/ibex_wrapper_rt_finishing.v"

write_parasitics -output "$OUTPUT/ibex_wrapper_finishing"



