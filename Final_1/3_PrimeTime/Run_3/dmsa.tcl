## Start PrimeTime with the multi-scenario mode ##
pt_shell -multi_scenario

set_app_var multi_scenario_working_directory "./work"
sh rm -rf "./work"
sh mkdir "./work"

#set DONT_USE_PT "./dont_use_pt.tcl"

set REPORT "./REPORT"
sh rm -rf $REPORT
sh mkdir $REPORT

## Create scenarios ##
create_scenario -name "Func_Slow" -specific_data "./pt_func_slow.tcl"
create_scenario -name "Func_Fast" -specific_data "./pt_func_fast.tcl" 

set_host_options -name ibex -max_cores 4 -num_processes 4

report_host_usage

start_hosts

current_session "Func_Slow Func_Fast"

#source $DONT_USE_PT > "$LOG/dont_use.log"

remote_execute {check_timing}
remote_execute {update_timing}

save_session "session_0"

remove_scenario Func_Slow
remove_scenario Func_Fast
create_scenario -name "Func_Slow" -specific_data "./pt_func_slow.tcl" -image "./session_0/Func_Slow"
create_scenario -name "Func_Fast" -specific_data "./pt_func_fast.tcl" -image "./session_0/Func_Fast"

current_session "Func_Slow Func_Fast"

remote_execute {check_timing}
remote_execute {update_timing}

report_qor > "$REPORT/qor_0.rpt"
report_constraints > "$REPORT/const_0.rpt"
report_timing -delay_type max -max_paths 500 > "$REPORT/setup_0.rpt"
report_timing -delay_type min -max_paths 500 > "$REPORT/hold_0.rpt"


fix_eco_timing -type setup

save_session "session_1"


fix_eco_drc -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8" "SAEDHVT14_BUF_16" "SAEDHVT14_BUF_20"} -type max_transition > "$REPORT/fix_eco_drc_max_transition_0.rpt"

report_qor > "$REPORT/qor_1.rpt"
report_constraints > "$REPORT/const_1.rpt"

save_session "session_2"

fix_eco_timing -type hold -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8" "SAEDHVT14_BUF_16" "DEL_R2V2_2" "DEL_R2V3_2"} 

report_qor > "$REPORT/qor_2.rpt"
report_constraints > "$REPORT/const_2.rpt"

save_session "session_3"

report_timing -delay_type min > "$REPORT/hold_1.rpt"

################################################################################
              
insert_buffer ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q "SAEDHVT14_BUF_2"
insert_buffer ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q "SAEDHVT14_BUF_2"	
insert_buffer ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q "SAEDHVT14_BUF_2"	
insert_buffer ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q "SAEDHVT14_BUF_2"
insert_buffer ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q "SAEDHVT14_BUF_2"
insert_buffer ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q "SAEDHVT14_BUF_2"	
insert_buffer ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q "SAEDHVT14_BUF_2"	
insert_buffer ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q "SAEDHVT14_BUF_2"
insert_buffer ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q "SAEDHVT14_BUF_2"
insert_buffer ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q "SAEDHVT14_BUF_2"	
insert_buffer ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q "SAEDHVT14_BUF_2"	
insert_buffer ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q "SAEDHVT14_BUF_2"

report_qor > "$REPORT/qor_3.rpt"
report_constraints > "$REPORT/const_3.rpt"
report_timing -delay_type min > "$REPORT/hold_2.rpt"

insert_buffer U5413/X "SAEDHVT14_BUF_2"
insert_buffer U5413/X "SAEDHVT14_BUF_2"
insert_buffer U5413/X "SAEDHVT14_BUF_2"
insert_buffer U5413/X "SAEDHVT14_BUF_2"

for {set i 2} {$i < 20} {incr i} {	

    report_timing -delay_type min -max_paths 500 > "$REPORT/hold_$i.rpt"

    set file_read  [open "$REPORT/hold_$i.rpt" r]
    set data [split [read $file_read] "\n"]
    close $file_read
	
    foreach line $data {
        set cond [string match */Q* $line]         
        if {$cond} {
            puts $line
            set newline_nosplit [split $line "("]
            set newline [lindex $newline_nosplit 0]
            insert_buffer $newline "SAEDHVT14_BUF_2"
            insert_buffer $newline "SAEDHVT14_BUF_2"
	    insert_buffer $newline "SAEDHVT14_BUF_2"
            insert_buffer $newline "SAEDHVT14_BUF_2"
	    insert_buffer $newline "SAEDHVT14_BUF_2"
            insert_buffer $newline "SAEDHVT14_BUF_2"
            break 
        }
    }
}



################################################################################


remote_execute {check_timing}
remote_execute {update_timing}

fix_eco_drc -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8"} -type max_capacitance > "$REPORT/fix_eco_drc_max_capacitance_0.rpt"

fix_eco_drc -buffer_list {"SAEDHVT14_BUF_2" "SAEDHVT14_BUF_4" "SAEDHVT14_BUF_6" "SAEDHVT14_BUF_8" "SAEDHVT14_BUF_16" "SAEDHVT14_BUF_20"} -type max_transition > "$REPORT/fix_eco_drc_max_transition_0.rpt"


#################################################################################################

remote_execute {write_changes -format icc2tcl -output "ibex_wrapper_changes.tcl"}

report_timing -delay_type min -slack_lesser_than 0.01 -max_paths 1000 -significant_digits 4 > $REPORT/hold_24.rpt


##############################################################################
for {set i 0} {$i < 100} {incr i} {	

    report_timing -delay_type min -slack_lesser_than 0 -max_paths 1000 > "$REPORT/timing_after_clean_1.rpt"

    set file_read  [open "$REPORT/timing_after_clean_1.rpt" r]
    set data [split [read $file_read] "\n"]
    close $file_read
	
    foreach line1 $data {
#        set cond1 [string match */X?(* $line1]
        set cond1 [string match */Q?(* $line1]
        if {$cond1} {
            puts $line1
            set newline_nosplit [split $line1 "("]
            set newline [lindex $newline_nosplit 0]
            insert_buffer $newline "SAEDHVT14_BUF_2" > "insert_buffer.log"
            insert_buffer $newline "SAEDHVT14_BUF_2" >> "insert_buffer.log" 
            insert_buffer $newline "SAEDHVT14_BUF_2" >> "insert_buffer.log"
            insert_buffer $newline "SAEDHVT14_BUF_2" >> "insert_buffer.log"
            break 
        }
    }
	
    set file_read  [open "insert_buffer.log" r]
    set data [split [read $file_read] "\n"]
    close $file_read

    foreach line2 $data {
    set cond2 [string match *Error* $line2]
        if {$cond2} {
            #puts $line2
            break 
        }
    }
	
    if {$cond2} {
        #puts $line2
        break 
    }

}

	
