####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Clock definitions
#
# 2. Set IO delay on ports
#
# 3. Operating conditions
#
# 4. Driving cells
#
# 5. Output load
#
####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

set dc_allow_rtl_pg true
set hdlin_keep_power_ground_pins true
set verilogout_no_tri	 true
set verilogout_equation  false

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 5. Clock Transitions
####################################################################################

# REF CLOCK (200 MHz)
set CLK1_NAME "clk_i"
set CLK1_PER 5.0

# GATED CLOCK (250 MHz)
set CLK2_NAME "cluster_clock_gating"
set CLK2_DIV 1

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
set_dont_touch_network [get_clocks $CLK1_NAME]


#2. Generated clocks

create_generated_clock -master_clock $CLK1_NAME -source [get_ports clk_i] \
                       -name  $CLK2_NAME [get_port ibex_top_inst/core_clock_gate_i/clk_o] \
                       -divide_by $CLK2_DIV
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK2_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks $CLK2_NAME]
set_clock_transition -rise $CLK_RISE         [get_clocks $CLK2_NAME]
set_clock_transition -fall $CLK_FALL         [get_clocks $CLK2_NAME]
set_clock_latency $CLK_LAT                   [get_clocks $CLK2_NAME]
set_dont_touch_network                       [get_clocks $CLK2_NAME]


####################################################################################
           #########################################################
            		#### Section 2 : IO Delays ####
           #########################################################
####################################################################################

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

foreach input $synth_inputs {
    set port [lindex $input 0] 
    set delay [expr ([lindex $input 1]/100.0)*$CLK1_PER] 
    set_input_delay $delay -clock [get_clocks $CLK2_NAME] [get_ports $port]
}


set synth_outputs [list {instr_req_o   70.0} \
                           {instr_addr_o  70.0} \
                           {data_req_o    70.0} \
                           {data_we_o     70.0} \
                           {data_be_o     70.0} \
                           {data_addr_o   70.0} \
                           {data_wdata_o  70.0} \
                           {core_sleep_o  80.0}]

foreach output $synth_outputs {
    set port [lindex $output 0] 
    set delay [expr (1.0-([lindex $output 1]/100.0))*$CLK1_PER] 
    set_output_delay $delay -clock [get_clocks $CLK1_NAME] [get_ports $port]
}


####################################################################################
           #########################################################
                 #### Section 3 : Operating Condition ####
           #########################################################
####################################################################################

set_operating_conditions -min_library "saed14hvt_ff0p88v125c" -min "ff0p88v125c" -max_library "saed14hvt_ss0p72vm40c" -max "ss0p72vm40c"

####################################################################################
           #########################################################
                  #### Section 4 : Driving Cells ####
           #########################################################
####################################################################################

set_driving_cell -lib_cell SAEDHVT14_BUF_2 -pin X [all_inputs]

####################################################################################
           #########################################################
                  #### Section 5 : Output Load ####
           #########################################################
####################################################################################

set_load 10 [all_outputs]
set_max_fanout 10 [current_design]

