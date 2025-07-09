puts "#######################################"
puts "############### ECO ###################"
puts "#######################################"


set PATH "../../2_PnR/ibex_hvt"
# set the block name at the previous stage
set PREV_BLOCK "ibex_hvt_routing"
set BLOCK "ibex_hvt_eco_0_2"


set LOG "./log"
sh rm -rf $LOG
sh mkdir -p $LOG


set REPORT "./reports"
sh rm -rf $REPORT
sh mkdir $REPORT


set OUTPUT "./output"
sh rm -rf $OUTPUT
sh mkdir -p $OUTPUT

set CHANGES "../../3_PrimeTime/0_PT/work/Func_Fast/changes_0_all_clean.tcl"

# open block design view
open_block "$PATH:$PREV_BLOCK.design" > "$LOG/open_block.log"

copy_block -from_block "$PREV_BLOCK" -to_block "$BLOCK" > "$LOG/copy_block.log"

# guide the tool to change in the current block
current_block $BLOCK > "$LOG/current_block.log"

set_svf "$OUTPUT/ibex_wrapper_eco_0.svf" > "$LOG/svf.log"

# Source changes file from PrimeTime
source $CHANGES


# PnR cells used in PrimeTime
place_eco_cells -eco_changed_cells > "$LOG/place_eco_cells.log" 
legalize_placement -incremental > "$LOG/legalize_place_eco.log" 

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"] >  "$LOG/connect_pg_net.log"
connect_pg_net -net "GND" [get_pins -hierarchical "*/VSS*"] >> "$LOG/connect_pg_net.log"

route_eco -reroute modified_nets_only > "$LOG/route_eco.log"

# Read check_routes	
set file_read  [open "$LOG/route_eco.log" r]
set data [split [read $file_read] "\n"]
close $file_read

# Check the number of DRCs
foreach line $data {
set cond [string match "*Total number of DRCs*" $line]         
	if {$cond} {
	    puts $line
	    regexp {\d+} $line Val_1            
	    puts $Val_1
	    break
	}
}

#################
# If DRCs exist #
#################
if {$Val_1 > 0} {
	for {set i 0} {$i < 6} {incr i} {	
	    save_block
	    route_detail -incremental true > "$LOG/route_detail_$i.log"
	    # Read check_routes	
	    set file_read  [open "$LOG/route_detail_$i.log" r]
	    set data [split [read $file_read] "\n"]
	    close $file_read

	    # Check the number of DRCs
	    foreach line $data {
		set cond [string match "*Total number of DRCs*" $line]         
		if {$cond} {
		    puts $line
		    regexp {\d+} $line Val_2            
		    puts $Val_2
		}
	    }


	    if {$Val_2 == 0} {
		puts "DRCs clean."
		break
	    } elseif {$Val_2 > $Val_1} {
		puts "DRCs are increasing again. Block is forced to be closed to discard the latest route_detail."
		puts "Don't forget to set_svf -append."
		close_block -force
	    	return
	    } else {
		puts "Another route_detail iteration..."
		puts "DRCs = $Val_2"		
		set Val_1 $Val_2
	    }
	}

}

set_svf -append "$OUTPUT/ibex_wrapper_eco_0.svf"

check_routes > "$REPORT/check_routes_3.rpt"

return
#Solve 4 DRCs manuallly

route_detail -incremental true > "$LOG/route_detail_4.log"

set_svf -off >> "$LOG/svf.log"

##############################
		# CHECKS #
##############################

check_pg_drc > "$REPORT/check_pg_drc.log"
report_utilization > "$REPORT/report_utilization.log"

check_pg_connectivity > "$REPORT/check_pg_connectivity.rpt"

check_pg_missing_vias > "$REPORT/check_missing_vias.rpt"

check_routes > "$REPORT/check_routes.rpt"

report_qor  > "$REPORT/report_qor.rpt"
check_legality > "$REPORT/check_legality.rpt"

check_lvs > "$REPORT/check_lvs.rpt"

save_block


####################################
		# OUTPUTS #
####################################

write_def "$OUTPUT/ibex_wrapper.def"

write_sdc -scenario "Func_Slow" -output "$OUTPUT/ibex_wrapper_slow.sdc"
write_sdc -scenario "Func_Fast" -output "$OUTPUT/ibex_wrapper_fast.sdc"

write_verilog "$OUTPUT/ibex_wrapper_rt.v"

write_parasitics -output "$OUTPUT/ibex_wrapper"



















	
		check_routes  > "$REPORT/check_routes_$i.log"

	    # Read check_routes	
	    set file_read  [open "$REPORT/check_routes_$i.log" r]
	    set data [split [read $file_read] "\n"]
	    close $file_read
		
	    # Check the number of DRCs
	    foreach line $data {
		set cond [string match "*Total number of DRCs*" $line]         
		if {$cond} {
		    puts $line
		    regexp {\d+} $line Val_1            
		    puts $Val_1
		}
	    }
		
	    save_block 
	    # Use route detail if DRCs > 0
	    if {$Val_1 > 0} {
	    	route_detail -incremental true > "$LOG/route_detail_$i.log"
	    } else {
		break
	    }

	    # Read check_routes	
	    set file_read  [open "$LOG/route_detail_$i.log" r]
	    set data [split [read $file_read] "\n"]
	    close $file_read

	    # Check the number of DRCs
	    foreach line $data {
		set cond [string match "*Total number of DRCs*" $line]         
		if {$cond} {
		    puts $line
		    regexp {\d+} $line Val_2            
		    puts $Val_2
		}
	    }

	    if {$Val_2 > $Val_1} {
		puts "DRCs are increasing again. Please close_block to discard the latest route_detail."
	    	return
	    } else {
		puts "Another route_detail iteration..."
	    }
	}



