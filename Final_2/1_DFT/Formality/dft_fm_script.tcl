############################  Search PATH ################################

set top_module ibex_wrapper

set REF_NETLIST       "../../0_Synthesis/output/$top_module.v"
set IMP_NETLIST   "../output/$top_module.v"

set SVF "../$top_module.svf"

set LIB_PATH  "/mnt/hgfs/0_GP/PDK/saed14_pdk/SAED14nm_EDK_CORE_HVT_v_062020/stdcell_hvt/db_ccs"

lappend search_path $LIB_PATH
lappend search_path $REF_NETLIST


####################### Read Reference tech libs ########################
set FFLIB "saed14hvt_ff0p88v125c.db"
set TTLIB "saed14hvt_tt0p8v25c.db"
set SSLIB "saed14hvt_ss0p72vm40c.db"


######################### Formality Setup File ###########################

# Synopsys setup variable
set synopsys_auto_setup true

set verification_failing_point_limit 2300 

# Formality Setup File
set_svf $SVF


###################################################################
###################### Reference Container ########################
###################################################################

read_verilog -container Ref -netlist $REF_NETLIST

# Read Reference technology libraries
read_db -container Ref [list $SSLIB $FFLIB $TTLIB]

# set the top Reference Design
set_top $top_module
set_reference_design $top_module

###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_verilog -container Imp -netlist $IMP_NETLIST

# Read Implementation technology libraries
read_db -container Imp [list $SSLIB $FFLIB $TTLIB]

# set the top Implementation Design
set_top $top_module
set_implementation_design $top_module

setup

set_dont_verify_points -type port Ref:/WORK/*/scan_out*
set_dont_verify_points -type port Imp:/WORK/*/scan_out*

set_dont_verify_points -type port Ref:/WORK/*/scan_in*
set_dont_verify_points -type port Imp:/WORK/*/scan_in*

set_constant Imp:/WORK/*/scan_en 0

set_constant Ref:/WORK/*/test_en_i 0
set_constant Imp:/WORK/*/test_en_i 0

###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
sh mkdir report 

report_passing_points > ./report/passing_points.rpt
report_failing_points > ./report/failing_points.rpt
report_aborted_points > ./report/aborted_points.rpt
report_unverified_points > ./report/unverified_points.rpt
report_not_compared_points > ./report/not_compared_points.rpt
report_hdlin_mismatches > ./report/hdlin_mismatches.rpt
report_matched_points > ./report/matched_points
report_unmatched_points > ./report/unmatched_points



#start_gui
