############################  Stages ################################
set prev_stage ibex_wrapper_pp
set curr_stage ibex_wrapper_pl

############################  Search PATH ################################

set LIB_PATH  "/mnt/hgfs/stdcell_hvt/db_ccs"

lappend search_path $LIB_PATH


####################### Read Reference tech libs ########################
set FFLIB "saed14hvt_ff0p88v125c.db"
set TTLIB "saed14hvt_tt0p8v25c.db"
set SSLIB "saed14hvt_ss0p72vm40c.db"


######################### Formality Setup File ###########################

# Synopsys setup variable
set synopsys_auto_setup true

set verification_failing_point_limit 2300 

# Formality Setup File
set_svf "./${curr_stage}.svf/cmd-1.svf"


###################################################################
###################### Reference Container ########################
###################################################################
read_verilog -container Ref -netlist "./${prev_stage}.v"


# Read Reference technology libraries
read_db -container Ref [list $SSLIB $FFLIB $TTLIB]


# set the top Reference Design
set_top ibex_wrapper
set_reference_design ibex_wrapper


###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_verilog -container Imp -netlist "./${curr_stage}.v"

# Read Implementation technology libraries
read_db -container Imp [list $SSLIB $FFLIB $TTLIB]

# set the top Implementation Design
set_top ibex_wrapper
set_implementation_design ibex_wrapper



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
