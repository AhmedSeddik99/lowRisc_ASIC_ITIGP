set FFLIB "saed14hvt_ff0p88v125c.db"
set TTLIB "saed14hvt_tt0p8v25c.db"
set SSLIB "saed14hvt_ss0p72vm40c.db"


set REPORT "./REPORT"
sh rm -rf $REPORT
sh mkdir $REPORT

set SESSIONS "./SESSIONS"
sh rm -rf $SESSIONS
sh mkdir $SESSIONS

#######################	
set_app_var search_path "/mnt/hgfs/stdcell_hvt/db_ccs/"

set_app_var target_library "$SSLIB $FFLIB $TTLIB"

set_app_var link_library "* $target_library"


################ Reading Input Files ################
read_db -library "$SSLIB $FFLIB $TTLIB"

read_verilog "../Output/ibex_wrapper_rt.v"


link_design -keep_sub_designs "ibex_cs_registers_0_00000001_0_0_0_0_00000000_00000028_0_00000000_00000004_0_0_3_0"
link_design -keep_sub_designs "ibex_register_file_ff_0_00000020_0_0_0_00000000"
link_design -keep_sub_designs "ibex_wrapper"


read_sdc "../Output/ibex_wrapper.sdc"


################ Source don't use constraints ################
#set_dont_use [get_lib_cells */*INV_PS*]
#set_dont_use [get_lib_cells */*DEL_PR*]

source ./dont_use_pt.tcl 



################ SS Scenario ################
read_parasitics "../Output/ibex_wrapper.tlup_max_-40.spef" 
check_timing > "$REPORT/check_timing_max.rpt"

save_session "$SESSIONS/w_violations"

################ Fixing Timing Violations ################
fix_eco_timing -type setup
save_session "$SESSIONS/setup_clean"


fix_eco_timing -type hold -buffer_list "SAEDHVT14_BUF_2"
save_session "$SESSIONS/hold_clean"


for {set i 0} {$i < 4} {incr i} {
    insert_buffer ibex_top_inst/core_clock_gate_i/gen_generic.u_impl_generic/en_latch_reg/Q "SAEDHVT14_BUF_2"
}
save_session "$SESSIONS/timing_clean"


################ Output Files ################
write_changes -format icc2tcl -output "ibex_wrapper_changes.tcl"



################ After ECO Cells ################
remove_design
remove_annotated_parasitics 


read_verilog "../Output_ss_spef/ibex_wrapper_rt_ss_spef.v" 

link_design -keep_sub_designs "ibex_cs_registers_0_00000001_0_0_0_0_00000000_00000028_0_00000000_00000004_0_0_3_0"
link_design -keep_sub_designs "ibex_register_file_ff_0_00000020_0_0_0_00000000"
link_design -keep_sub_designs "ibex_wrapper"

read_sdc "../Output_ss_spef/ibex_wrapper_ss_spef.sdc" 

read_parasitics "../Output_ss_spef/ibex_wrapper_ss_spef.tlup_max_-40.spef"
check_timing > "$REPORT/check_timing_max_ss_spef.rpt"

save_session "$SESSIONS/after_eco_cells"


################ FF Scenario ################
remove_annotated_parasitics 

read_parasitics "../Output/ibex_wrapper.tlup_min_125.spef"
check_timing > "$REPORT/check_timing_min.rpt"



################ Fixing Timing Violations ################
fix_eco_timing -type setup

fix_eco_timing -type hold -buffer_list "SAEDHVT14_BUF_2"




################################################################