puts "############################"
puts "#######   Routing   ########"
puts "############################"
set PATH "./ibex_hvt"
# set the block name at the previous stage
set PREV_BLOCK "ibex_hvt_cts"
set BLOCK "ibex_hvt_routing"


set LOG "./LOG/Routing"
sh rm -rf $LOG
sh mkdir -p $LOG

set REPORT "./REPORT/Routing"
sh rm -rf $REPORT
sh mkdir $REPORT


set OUTPUT "./OUTPUT/Routing"
sh rm -rf $OUTPUT
sh mkdir -p $OUTPUT

# open block design view
open_block "$PATH:$PREV_BLOCK.design" > "$LOG/open_block.log"

copy_block -from_block "$PREV_BLOCK" -to_block "$BLOCK" > "$LOG/copy_block.log"

# guide the tool to change in the current block
current_block $BLOCK > "$LOG/current_block.log"

set_svf "$OUTPUT/ibex_wrapper_rt.svf" > "$LOG/svf.log"

set_ignored_layer -max M9 -min M1 > "$LOG/set_ignored_layer.log"

# Main command
route_opt > "$LOG/route_opt.log"


connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"] > "$LOG/connect_pg_net.log"
connect_pg_net -net "GND" [get_pins -hierarchical "*/VSS*"] >> "$LOG/connect_pg_net.log"

#################
# If DRCs exist #
#################
for {set i 0} {$i < 4} {incr i} {	
    check_routes  > "$REPORT/check_routes_$i.log"

    # Read check_routes	
    set file_read  [open "$REPORT/check_routes_$i.log" r]
    set data [split [read $file_read] "\n"]
    close $file_read
	
    # Check the number of DRCs
    foreach line $data {
        set cond [string match *DRCs* $line]         
        if {$cond} {
            puts $line
            regexp {\d+} $line Val            
            puts $Val
        }
    }

    # Use route detail if DRCs > 0
    if {$Val > 0} {
    	route_detail -incremental true > "$LOG/route_detail_$i.log"
    } else {
	break
    }

    if {$i == 3} {
    	puts "4th iteration of route_detail & Number of DRCs = $Val"
    }
}

set_svf -off >> "$LOG/svf.log"

##############################
		# CHECKS #
##############################

check_pg_drc > "$REPORT/check_pg_drc.log"
report_utilization > "$REPORT/report_utilization.log"

check_pg_connectivity > "$REPORT/check_pg_connectivity.rpt"

check_pg_missing_vias > "$REPORT/check_missing_vias.rpt"

report_clock_timing -type summary > "$REPORT/report_clock_timing.rpt"
report_timing  > "$REPORT/report_timing.rpt"
report_timing -delay_type min > "$REPORT/report_timing_min.rpt"
report_constraints -all_violators -max_delay -min_delay > "$REPORT/report_constraints.rpt"

report_qor  > "$REPORT/report_qor.rpt"
check_legality > "$REPORT/check_legality.rpt"


save_block 

##############################
		# OUTPUTS #
##############################

write_def "$OUTPUT/ibex_wrapper.def"

write_sdc -output "$OUTPUT/ibex_wrapper.sdc"

write_verilog "$OUTPUT/ibex_wrapper_rt.v"

write_parasitics -output "$OUTPUT/ibex_wrapper.spef"

puts "############################"
puts "####  End of Routing   #####"
puts "############################"

