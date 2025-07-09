puts "############################"
puts "######  Floor Plan   #######"
puts "############################"
# set path to the block directory
set PATH "./ibex_hvt"
# set the block name at the previous stage
set PREV_BLOCK "ibex_hvt_setup"
set BLOCK "ibex_hvt_floorplan"

set LOG "./2_Floorplan/log"
sh rm -rf $LOG
sh mkdir -p $LOG

set OUTPUT "./2_Floorplan/reports"
sh rm -rf $OUTPUT
sh mkdir -p $OUTPUT

# open block design view
open_block "$PATH:$PREV_BLOCK.design" > "$LOG/open_block.log"

copy_block -from_block "$PREV_BLOCK" -to_block "$BLOCK" > "$LOG/copy_block.log"

current_block $BLOCK > "$LOG/current_block.log"

set_svf "$OUTPUT/ibex_wrapper_fp.svf" > "$LOG/svf.log"

# -- Metal layers Directions 
# orthogonal routing directions between layers as per cell pins
set_attribute [get_layers {M1 M3 M5 M7 M9}] routing_direction vertical >> "$LOG/set_attribute.log"
set_attribute [get_layers {M2 M4 M6 M8}] routing_direction horizontal >> "$LOG/set_attribute.log"
# redistribution layer which is the last layer after which the packaging is done
set_attribute [get_layer MRDL] routing_direction horizontal >> "$LOG/set_attribute.log"


# Metal Track Offset
# Was chanegd after placement to allign the tracks with the pins
set_attribute [get_layers M1] track_offset 0.037 >> "$LOG/set_attribute.log"
set_attribute [get_layers M2] track_offset 0.06 >> "$LOG/set_attribute.log"


# To change the symmetry to Y 
set SITE_DEF [get_site_defs]
set_attribute [get_site_defs $SITE_DEF] is_default true >> "$LOG/set_attribute.log"
set_attribute [get_site_defs $SITE_DEF] symmetry Y >> "$LOG/set_attribute.log"

# Initialize floor plan (the main command)
initialize_floorplan -boundary "{0 0} {160 160}" -flip_first_row true -core_offset {18 18 18 18} -control_type core > "$LOG/initialize_floorplan.log"

# Pin placement
# sides start counting from the lowest left vertical side so you need to pay attention to the routing direction of the selected metal layer
set SIDE_1 [get_ports {ram_cfg* rf_cfg* hart_id_i* boot_addr_i* instr_addr_o* instr_rdata_i* instr_rdata_intg_i*}]
set SIDE_2 [get_ports {data_be_o* data_addr_o* data_wdata_o* data_wdata_intg_o* data_rdata_i* data_rdata_intg_i* irq_fast_i*}]
set SIDE_4 [get_ports {current_pc* next_pc* last_data_addr* exception_pc* exception_addr* fetch_enable_i*}]
set SIDE_3 [get_ports {scramble_key_i* scramble_nonce_i*}]
set IN_PORT_1BIT [get_ports {test_en_i ram_cfg_en rf_cfg_en instr_gnt_i instr_rvalid_i instr_err_i data_gnt_i data_rvalid_i data_err_i irq_software_i irq_timer_i irq_external_i irq_nm_i scramble_key_valid_i debug_req_i scan_rst_ni}]
set OUT_PORT_1BIT [get_ports {instr_req_o data_req_o data_we_o scramble_req_o double_fault_seen_o alert_minor_o alert_major_internal_o alert_major_bus_o core_sleep_o}]

# We attempt to place the pins according to their functionality

set_block_pin_constraints -self -allowed_layers M6 -pin_spacing 1 -sides {1} -corner_keepout_num_tracks 1 >> "$LOG/set_block_pin_constraints.log"

place_pins -ports [get_ports $SIDE_1] >> "$LOG/place_pins.log"

place_pins -ports [get_ports $OUT_PORT_1BIT] >> "$LOG/place_pins.log"

set_block_pin_constraints -self -allowed_layers M7 -pin_spacing 1 -sides {2} -corner_keepout_num_tracks 1 >> "$LOG/set_block_pin_constraints.log"
place_pins -ports [get_ports $SIDE_2] >> "$LOG/place_pins.log"
place_pins -ports [get_ports $IN_PORT_1BIT] >> "$LOG/place_pins.log"

set_block_pin_constraints -self -allowed_layers M9 -pin_spacing 1 -sides {2} -corner_keepout_num_tracks 1 >> "$LOG/set_block_pin_constraints.log"
place_pins -ports [get_ports {clk_i rst_ni}] >> "$LOG/place_pins.log"

set_block_pin_constraints -self -allowed_layers M6 -pin_spacing 1 -sides {3} -corner_keepout_num_tracks 1 >> "$LOG/set_block_pin_constraints.log"
place_pins -ports [get_ports $SIDE_3] >> "$LOG/place_pins.log"

set_block_pin_constraints -self -allowed_layers M7 -pin_spacing 1 -sides {4} -corner_keepout_num_tracks 1 >> "$LOG/set_block_pin_constraints.log"
place_pins -ports [get_ports $SIDE_4] >> "$LOG/place_pins.log"


# Tap cells
create_tap_cells -lib_cell [get_lib_cell */SAEDHVT14_TAPDS] -pattern stagger -distance 20 >> "$LOG/create_tap_cells.log" 

set_svf -off >> "$LOG/svf.log"

##############################
		# SAVE #
##############################
save_block -as $BLOCK

##############################
		# OUTPUTS #
##############################

write_verilog "$OUTPUT/ibex_wrapper_fp.v"

puts "############################"
puts "###  End of Floor Plan   ###"
puts "############################"
