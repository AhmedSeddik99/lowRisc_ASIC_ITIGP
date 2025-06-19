####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
#set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

# REF CLOCK (160 MHz)
set CLK1_NAME clk_i
set CLK1_PER 6.25

# Skew
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1

#clock latency, rise & fall
set CLK_LAT 0
set CLK_RISE 0.05
set CLK_FALL 0.05

#1. Master Clocks

create_clock -name $CLK1_NAME -period $CLK1_PER -waveform "0 [expr $CLK1_PER/2]" [get_ports clk_i]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK1_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks $CLK1_NAME]
set_clock_transition -rise $CLK_RISE [get_clocks $CLK1_NAME]
set_clock_transition -fall $CLK_FALL [get_clocks $CLK1_NAME]
set_clock_latency $CLK_LAT [get_clocks $CLK1_NAME]
set_dont_touch_network [get_clocks clk_i]


#2. Generated clocks

create_generated_clock -master_clock $CLK1_NAME -source [get_ports clk_i] \
                       -name "cluster_clock_gating" [get_port core_clock_gate_i/clk_o] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "cluster_clock_gating"]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks "cluster_clock_gating"]
set_clock_transition -rise $CLK_RISE         [get_clocks "cluster_clock_gating"]
set_clock_transition -fall $CLK_FALL         [get_clocks "cluster_clock_gating"]
set_clock_latency $CLK_LAT                   [get_clocks "cluster_clock_gating"]
set_dont_touch_network                       [get_clocks "cluster_clock_gating"]

###########
#_MY_EDIT_#
###########
set_dont_use "saed14hvt_tt0p8v25c/SAEDHVT14_CLKSPLT_1"
set_dont_use "saed14hvt_tt0p8v25c/SAEDHVT14_ND2_MM_0P5"

####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set synth_outputs [list {instr_req_o   70.0} \
                           {instr_addr_o  70.0} \
                           {data_req_o    70.0} \
                           {data_we_o     70.0} \
                           {data_be_o     70.0} \
                           {data_addr_o   70.0} \
                           {data_wdata_o  70.0} \
                           {core_sleep_o  80.0}]

set synth_inputs [list {test_en_i      0.0 } \
                          {hart_id_i      0.0 } \
                          {boot_addr_i    0.0 } \
                          {instr_gnt_i    30.0} \
                          {instr_rvalid_i 30.0} \
                          {instr_rdata_i  30.0} \
                          {instr_err_i    30.0} \
                          {data_gnt_i     30.0} \
                          {data_rvalid_i  30.0} \
                          {data_rdata_i   30.0} \
                          {data_err_i     30.0} \
                          {irq_software_i 10.0} \
                          {irq_timer_i    10.0} \
                          {irq_external_i 10.0} \
                          {irq_fast_i     10.0} \
                          {irq_nm_i       10.0} \
                          {debug_req_i    10.0} \
                          {fetch_enable_i 0.0 }]
####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library saed14hvt_ss0p72vm40c -lib_cell SAEDHVT14_BUF_2 -pin X [all_inputs]
#set_driving_cell -library saed14rvt_ss0p72vm40c -lib_cell SAEDRVT14_BUF_2 -pin X [all_inputs]
#set_driving_cell -library saed90nm_max -lib_cell AOBUFX2 -pin Z [all_inputs]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 10 [all_outputs]
set_max_fanout 10 [current_design]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "saed14hvt_ff0p88v125c" -min "ff0p88v125c" -max_library "saed14hvt_ss0p72vm40c" -max "ss0p72vm40c"
#set_operating_conditions -min_library "saed14rvt_ff0p88v125c" -min "ff0p88v125c" -max_library "saed14rvt_ss0p72vm40c" -max "ss0p72vm40c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

#set_wire_load_model -name saed14hvt_wlm -library saed14hvt_ss0p72vm40c

####################################################################################


