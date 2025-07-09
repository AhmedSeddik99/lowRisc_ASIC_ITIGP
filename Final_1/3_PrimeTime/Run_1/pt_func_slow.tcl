set NAME  "ibex_wrapper_rt_change_1"
set NAME2 "ibex_wrapper_slow_change_1"
set NAME3 "ibex_wrapper_change_1"
set PATHS "Routing_change_1"
set RUN   "Run_1"


set BLOCK "Routing_route_opt"

set LIB "saed14hvt_ss0p72vm40c.db"

set_app_var search_path "/mnt/hgfs/stdcell_hvt/db_ccs/"

set_app_var target_library $LIB

set_app_var link_library "$target_library"

set NETLIST "/mnt/hgfs/PnR_GP/Final_1/3_PrimeTime/Run_2/output/Routing_change_1/ibex_wrapper_rt_change_1.v"

set CONSTRAINTS "/mnt/hgfs/PnR_GP/Final_1/3_PrimeTime/Run_2/output/Routing_change_1/ibex_wrapper_slow_change_1.sdc"

set PARASITICS "/mnt/hgfs/PnR_GP/Final_1/3_PrimeTime/Run_2/output/Routing_change_1/ibex_wrapper_change_1.tlup_max_-40.spef"  

read_db -library $LIB

read_verilog $NETLIST



link_design -keep_sub_designs "ibex_cs_registers_0_00000001_0_0_0_0_00000000_00000028_0_00000000_00000004_0_0_3_0"
link_design -keep_sub_designs "ibex_register_file_ff_0_00000020_0_0_0_00000000"
link_design -keep_sub_designs "ibex_wrapper"

#current_design "ibex_wrapper"

read_sdc $CONSTRAINTS

read_parasitics $PARASITICS

source "/mnt/hgfs/PnR_GP/Final_1/3_PrimeTime/Run_2/dont_use_const_hendawi.tcl"

