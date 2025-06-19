puts "############################"
puts "####     Power Plan     ####"
puts "############################"

# set path to the block directory
set PATH "./ibex_hvt"
# set the block name at the previous stage
set PREV_BLOCK "ibex_hvt_floorplan"
set BLOCK "ibex_hvt_powerplan"

set LOG "./LOG/Powerplan"
sh rm -rf $LOG
sh mkdir -p $LOG

set REPORT "./REPORT/Powerplan"
sh rm -rf $REPORT
sh mkdir -p $REPORT

set OUTPUT "./OUTPUT/Powerplan"
sh rm -rf $OUTPUT
sh mkdir -p $OUTPUT

# open block design view
open_block "$PATH:$PREV_BLOCK.design" > "$LOG/open_block.log"

# to not overwrite the previous block
copy_block -from_block "$PREV_BLOCK" -to_block "$BLOCK" > "$LOG/copy_block.log"

# guide the tool to change in the current block
current_block $BLOCK > "$LOG/current_block.log"

set_svf "$OUTPUT/ibex_wrapper_pp.svf" > "$LOG/svf.log"

## -- Remove ignored layers if any to enable power distribution
report_ignored_layers 
remove_ignored_layers -all -max_routing_layer -min_routing_layer
report_ignored_layers > "$REPORT/report_ignored_layers.rpt"

## -- Create VDD & VSS ports - if designing a chip not IP (to be confirmed)
create_port -port_type ground -direction in GND > "$LOG/create_port.log"
create_port -port_type power -direction in VDD >> "$LOG/create_port.log"

## -- Create power & ground nets
create_net -ground GND >> "$LOG/create_net.log"
create_net -power VDD >> "$LOG/create_net.log"


connect_net -net GND [get_ports GND] > "$LOG/connect_net.log"
connect_net -net VDD [get_ports VDD] >> "$LOG/connect_net.log"


connect_pg_net -net VDD [get_pins -hierarchical */VDD] > "$LOG/connect_pg_net.log"
connect_pg_net -net GND [get_pins -hierarchical */VSS] >> "$LOG/connect_pg_net.log"


# enable undo steps of compile_pg -undo
set_app_options -name plan.pgroute.max_undo_steps -value 20

##############################
	# RING #
##############################
set PG_TOP_OFFSET 2
set PG_REGION_NAME "Power_Ring"
set PG_H_LAYER M8
set PG_V_LAYER M9
set PG_H_WIDTH 5
set PG_V_WIDTH 5
set PG_H_SPACING 3
set PG_V_SPACING 3

# to start clean
remove_pg_via_master_rules -all 
remove_pg_patterns -all
remove_pg_strategies -all
remove_pg_strategy_via_rules -all

# Create region for the PG ring
# 4 sides because it's an R shape. Pay attention if another shape is used such as U.
create_pg_region $PG_REGION_NAME -core \
		-expand_by_edge "{{side: 1} {offset: $PG_TOP_OFFSET}} {{side: 2} {offset: $PG_TOP_OFFSET}} \
				 {{side: 3} {offset: $PG_TOP_OFFSET}} {{side: 4} {offset: $PG_TOP_OFFSET}}" > "$LOG/create_pg_region.log"

# Create PG ring pattern
create_pg_ring_pattern \
		 ring \
		 -horizontal_layer $PG_H_LAYER -vertical_layer $PG_V_LAYER \
		 -horizontal_width $PG_H_WIDTH -vertical_width $PG_V_WIDTH \
		 -horizontal_spacing $PG_H_SPACING -vertical_spacing $PG_V_SPACING > "$LOG/create_pg_ring_pattern.log"


# Set strategy
set_pg_strategy  ring -pg_regions "$PG_REGION_NAME" -pattern {{ name: ring} { nets: "GND VDD" }} > "$LOG/set_pg_strategy.log"

compile_pg -strategies ring > "$LOG/compile_pg.log"

##############################
	# MESH #
##############################
set MESH_H_LAYER "M8"
set MESH_V_LAYER "M9"
set MESH_H_WIDTH 4
set MESH_V_WIDTH 4
set MESH_H_SPACING 2
set MESH_V_SPACING 2
set MESH_H_PITCH 20
set MESH_V_PITCH 20
set MESH_H_OFFSET 5
set MESH_V_OFFSET 5

create_pg_mesh_pattern \
		mesh \
		-parameter {MESH_H_LAYER MESH_H_WIDTH MESH_H_SPACING MESH_H_PITCH MESH_H_OFFSET\
			    MESH_V_LAYER MESH_V_WIDTH MESH_V_SPACING MESH_V_PITCH MESH_V_OFFSET} \
		-layers { \
			{ {horizontal_layer: @MESH_H_LAYER} {width: @MESH_H_WIDTH} {spacing: @MESH_H_SPACING} {pitch: @MESH_H_PITCH} {offset: @MESH_H_OFFSET} {trim : true} } \
			{ {vertical_layer: @MESH_V_LAYER}   {width: @MESH_V_WIDTH} {spacing: @MESH_V_SPACING} {pitch: @MESH_V_PITCH} {offset: @MESH_V_OFFSET}  {trim : true} } \
			}  > "$LOG/create_pg_mesh_pattern.log"

set_pg_strategy mesh \
		-core \
		-pattern {{name: mesh} {nets: {"GND VDD"}} \
				     {parameters: "$MESH_H_LAYER $MESH_H_WIDTH $MESH_H_SPACING $MESH_H_PITCH $MESH_H_OFFSET \
						   $MESH_V_LAYER $MESH_V_WIDTH $MESH_V_SPACING $MESH_V_PITCH $MESH_V_OFFSET"}} \
		-extension { {stop:outermost_ring} } >> "$LOG/set_pg_strategy.log"
		

compile_pg -strategies mesh >> "$LOG/compile_pg.log"


##############################
	# CELL RAIL #
##############################
# 0.094 is the width if M1 used in SAED14 std cells
set CELL_RAIL_WIDTH 0.094 
set CELL_RAIL_LAYER M1

create_pg_std_cell_conn_pattern cell_rail -rail_width $CELL_RAIL_WIDTH -layers $CELL_RAIL_LAYER > "$LOG/create_pg_std_cell_conn_pattern.log"

set_pg_strategy cell_rail -pattern {{name: cell_rail} {nets: "GND VDD"}} -core >> "$LOG/set_pg_strategy.log"

compile_pg -strategies cell_rail >> "$LOG/compile_pg.log"


##############################
		# STUBS #
##############################
# a strategy to guide the tool to place vias only on the intersection between 2 adjacent orthogonal wires
set_pg_strategy_via_rule adjacent_only \
    -via_rule {{intersection: adjacent}{via_master: default}} > "$LOG/set_pg_strategy_via_rule.log"

create_pg_wire_pattern SEGMENT \
    -parameters {seg_layer seg_direction seg_width seg_low_end seg_high_end} \
	-layer @seg_layer \
    -direction @seg_direction \
    -width @seg_width \
    -low_end_reference_point @seg_low_end \
    -high_end_reference_point @seg_high_end > "$LOG/create_pg_wire_pattern.log"

#########_M7_##########
echo "################### M7 ###################" > "$LOG/create_pg_composite_pattern.log"
echo "################### M7 ###################" >> "$LOG/set_pg_strategy.log"
echo "################### M7 ###################" >> "$LOG/compile_pg.log"

set M7_WIDTH 1
set M7_LENGTH 4
set M7_PITCH $MESH_H_PITCH
set M7_VDD_OFFSET_V [expr $MESH_V_OFFSET + ($MESH_H_WIDTH/2) + $MESH_V_SPACING]
set M7_VDD_OFFSET_H 6
set M7_GND_OFFSET_V [expr $MESH_V_OFFSET - ($MESH_H_WIDTH/2)]
set M7_GND_OFFSET_H 10

create_pg_composite_pattern M7_PATTERN \
	-parameters {pat_pitch pat_offset_x pat_offset_y} \
	-add_patterns {{name: SEGMENT} \
				   {pitch: @pat_pitch} \
				   {offset: @pat_offset_x @pat_offset_y} \
				   {parameters: {M7 vertical 1 0 4}}} >> "$LOG/create_pg_composite_pattern.log"

set_pg_strategy M7_STRATEGY_VDD \
    -core \
    -pattern {{name: M7_PATTERN} \
			  {nets: VDD} \
			  {parameters: {$M7_PITCH $M7_VDD_OFFSET_H $M7_VDD_OFFSET_V}}} >> "$LOG/set_pg_strategy.log"

compile_pg -strategies "M7_STRATEGY_VDD" -via_rule adjacent_only >> "$LOG/compile_pg.log"

set_pg_strategy M7_STRATEGY_GND \
    -core \
    -pattern {{name: M7_PATTERN} \
			  {nets: GND} \
			  {parameters: {$M7_PITCH $M7_GND_OFFSET_H $M7_GND_OFFSET_V}}} >> "$LOG/set_pg_strategy.log"

compile_pg -strategies "M7_STRATEGY_GND" -via_rule adjacent_only >> "$LOG/compile_pg.log"


#########_M6_##########
echo "################### M6 ###################" >> "$LOG/create_pg_composite_pattern.log"
echo "################### M6 ###################" >> "$LOG/set_pg_strategy.log"
echo "################### M6 ###################" >> "$LOG/compile_pg.log"

set M6_PITCH $MESH_H_PITCH
set M6_VDD_OFFSET_V [expr $M7_VDD_OFFSET_V + ($M7_LENGTH/2.0)]
set M6_VDD_OFFSET_H [expr $M7_VDD_OFFSET_H - ($M7_WIDTH/2.0)]

set M6_GND_OFFSET_V [expr $M7_GND_OFFSET_V + ($M7_LENGTH/2.0)]
set M6_GND_OFFSET_H [expr $M7_GND_OFFSET_H - ($M7_WIDTH/2.0)]

create_pg_composite_pattern M6_PATTERN \
	-parameters {pat_pitch pat_offset_x pat_offset_y} \
	-add_patterns {{name: SEGMENT} \
				   {pitch: @pat_pitch} \
				   {offset: @pat_offset_x @pat_offset_y} \
				   {parameters: {M6 horizontal 1 0 2}}} >> "$LOG/create_pg_composite_pattern.log"

set_pg_strategy M6_STRATEGY_VDD \
    -core \
    -pattern {{name: M6_PATTERN} \
			  {nets: VDD} \
			  {parameters: {$M6_PITCH $M6_VDD_OFFSET_H $M6_VDD_OFFSET_V}}} >> "$LOG/set_pg_strategy.log"

compile_pg -strategies "M6_STRATEGY_VDD" -via_rule adjacent_only >> "$LOG/compile_pg.log"

set_pg_strategy M6_STRATEGY_GND \
    -core \
    -pattern {{name: M6_PATTERN} \
			  {nets: GND} \
			  {parameters: {$M6_PITCH $M6_GND_OFFSET_H $M6_GND_OFFSET_V}}} >> "$LOG/set_pg_strategy.log"

compile_pg -strategies "M6_STRATEGY_GND" -via_rule adjacent_only >> "$LOG/compile_pg.log"

#########_M5_##########
echo "################### M5 ###################" >> "$LOG/create_pg_composite_pattern.log"
echo "################### M5 ###################" >> "$LOG/set_pg_strategy.log"
echo "################### M5 ###################" >> "$LOG/compile_pg.log"

set M5_PITCH $MESH_H_PITCH
set M5_VDD_OFFSET_V [expr $M7_VDD_OFFSET_V + ($M7_LENGTH/2.0) - ($M7_WIDTH/2.0)]
set M5_VDD_OFFSET_H [expr $M7_VDD_OFFSET_H + $M7_WIDTH]

set M5_GND_OFFSET_V [expr $M7_GND_OFFSET_V + ($M7_LENGTH/2.0) - ($M7_WIDTH/2.0)]
set M5_GND_OFFSET_H [expr $M7_GND_OFFSET_H + $M7_WIDTH]

create_pg_composite_pattern M5_PATTERN \
	-parameters {pat_pitch pat_offset_x pat_offset_y} \
	-add_patterns {{name: SEGMENT} \
				   {pitch: @pat_pitch} \
				   {offset: @pat_offset_x @pat_offset_y} \
				   {parameters: {M5 vertical 1 0 2}}} >> "$LOG/create_pg_composite_pattern.log"

set_pg_strategy M5_STRATEGY_VDD \
    -core \
    -pattern {{name: M5_PATTERN} \
			  {nets: VDD} \
			  {parameters: {$M5_PITCH $M5_VDD_OFFSET_H $M5_VDD_OFFSET_V}}} >> "$LOG/set_pg_strategy.log"

compile_pg -strategies "M5_STRATEGY_VDD" -via_rule adjacent_only >> "$LOG/compile_pg.log"

set_pg_strategy M5_STRATEGY_GND \
    -core \
    -pattern {{name: M5_PATTERN} \
			  {nets: GND} \
			  {parameters: {$M5_PITCH $M5_GND_OFFSET_H $M5_GND_OFFSET_V}}} >> "$LOG/set_pg_strategy.log"

compile_pg -strategies "M5_STRATEGY_GND" -via_rule adjacent_only >> "$LOG/compile_pg.log"

#########_M4_##########
echo "################### M4 ###################" >> "$LOG/create_pg_composite_pattern.log"
echo "################### M4 ###################" >> "$LOG/set_pg_strategy.log"
echo "################### M4 ###################" >> "$LOG/compile_pg.log"

set M4_PITCH $MESH_H_PITCH
set M4_VDD_OFFSET_V [expr $M7_VDD_OFFSET_V + ($M7_LENGTH/2.0) + $M7_WIDTH]
set M4_VDD_OFFSET_H [expr $M7_VDD_OFFSET_H - ($M7_WIDTH/2.0)]

set M4_GND_OFFSET_V [expr $M7_GND_OFFSET_V + ($M7_LENGTH/2.0) + $M7_WIDTH]
set M4_GND_OFFSET_H [expr $M7_GND_OFFSET_H - ($M7_WIDTH/2.0)]

create_pg_composite_pattern M4_PATTERN \
	-parameters {pat_pitch pat_offset_x pat_offset_y} \
	-add_patterns {{name: SEGMENT} \
				   {pitch: @pat_pitch} \
				   {offset: @pat_offset_x @pat_offset_y} \
				   {parameters: {M4 horizontal 1 0 2}}} >> "$LOG/create_pg_composite_pattern.log"

set_pg_strategy M4_STRATEGY_VDD \
    -core \
    -pattern {{name: M4_PATTERN} \
			  {nets: VDD} \
			  {parameters: {$M4_PITCH $M4_VDD_OFFSET_H $M4_VDD_OFFSET_V}}} >> "$LOG/set_pg_strategy.log"

compile_pg -strategies "M4_STRATEGY_VDD" -via_rule adjacent_only >> "$LOG/compile_pg.log"

set_pg_strategy M4_STRATEGY_GND \
    -core \
    -pattern {{name: M4_PATTERN} \
			  {nets: GND} \
			  {parameters: {$M4_PITCH $M4_GND_OFFSET_H $M4_GND_OFFSET_V}}} >> "$LOG/set_pg_strategy.log"

compile_pg -strategies "M4_STRATEGY_GND" -via_rule adjacent_only >> "$LOG/compile_pg.log"


#########_M3_##########
echo "################### M3 ###################" >> "$LOG/create_pg_wire_pattern.log"
echo "################### M3 ###################" >> "$LOG/set_pg_strategy.log"
echo "################### M3 ###################" >> "$LOG/compile_pg.log"

set M3_WIDTH 2
set M3_PITCH $MESH_H_PITCH
set M3_VDD_CENTER [expr $M7_VDD_OFFSET_H - ($M7_WIDTH/2.0)]
set M3_GND_CENTER [expr $M7_GND_OFFSET_H - ($M7_WIDTH/2.0)]

create_pg_wire_pattern M3_VDD_SEGMENT \
    -layer M3 \
    -direction vertical \
    -width $M3_WIDTH \
    -pitch $M3_PITCH \
    -center $M3_VDD_CENTER > "$LOG/create_pg_wire_pattern.log"

set_pg_strategy M3_STRATEGY_VDD \
	-core \
	-pattern {{name: M3_VDD_SEGMENT} \
			  {nets: VDD} \
			  } >> "$LOG/set_pg_strategy.log"

compile_pg -strategies "M3_STRATEGY_VDD" -via_rule adjacent_only >> "$LOG/compile_pg.log"

create_pg_wire_pattern M3_GND_SEGMENT \
    -layer M3 \
    -direction vertical \
    -width $M3_WIDTH \
    -pitch $M3_PITCH \
    -center $M3_GND_CENTER > "$LOG/create_pg_wire_pattern.log"

set_pg_strategy M3_STRATEGY_GND \
	-core \
	-pattern {{name: M3_GND_SEGMENT} \
			  {nets: GND} \
			  } >> "$LOG/set_pg_strategy.log"

compile_pg -strategies "M3_STRATEGY_GND" -via_rule adjacent_only >> "$LOG/compile_pg.log"


#########_M2_##########
echo "################### M2 ###################" >> "$LOG/create_pg_composite_pattern.log"
echo "################### M2 ###################" >> "$LOG/set_pg_strategy.log"
echo "################### M2 ###################" >> "$LOG/compile_pg.log"

set_pg_strategy_via_rule M2_M3 \
     -via_rule { {via_master: VIA23SQ} {intersection: adjacent} } >> "$LOG/set_pg_strategy_via_rule.log"

set_pg_strategy_via_rule M2_M1 \
     -via_rule { {via_master: VIA12SQ} {intersection: adjacent} {between_parallel: true} }  >> "$LOG/set_pg_strategy_via_rule.log"

set M2_H_PITCH $MESH_H_PITCH
# 1.2 is CELL_HEIGHT
set M2_V_PITCH 1.2 

set M2_VDD_OFFSET_H [expr $M3_VDD_CENTER - ($M7_WIDTH/2.0)]
set M2_VDD_OFFSET_V 0.5

# a new pg region so the M2 stubs are able to cover the most rails at the bottom and top of the core area
# as the created rails have a width which expands outside the core area
create_pg_region M2_STUBS_REGION_VDD -core \
		-expand_by_edge "{{side: 1} {offset: 0.5}} {{side: 2} {offset: 0.5}} \
				 {{side: 3} {offset: 0.5}} {{side: 4} {offset: 0.5}}" >> "$LOG/create_pg_region.log"

create_pg_composite_pattern M2_PATTERN \
	-parameters {pat_pitch_x pat_pitch_y pat_offset_x pat_offset_y} \
	-add_patterns {{name: SEGMENT} \
				   {pitch: @pat_pitch_x @pat_pitch_y} \
				   {offset: @pat_offset_x @pat_offset_y} \
				   {parameters: {M2 horizontal 0.036 0 2}}} >> "$LOG/create_pg_composite_pattern.log"

set_pg_strategy M2_STRATEGY_VDD \
    -pg_regions M2_STUBS_REGION_VDD \
    -pattern {{name: M2_PATTERN} \
			  {nets: VDD} \
			  {parameters: {$M2_H_PITCH $M2_V_PITCH $M2_VDD_OFFSET_H $M2_VDD_OFFSET_V}}} >> "$LOG/set_pg_strategy.log"
                       
                            
compile_pg -strategies "M2_STRATEGY_VDD" -via_rule M2_M3 >> "$LOG/compile_pg.log"

compile_pg -strategies "M2_STRATEGY_VDD" -via_rule M2_M1 >> "$LOG/compile_pg.log"


set M2_GND_OFFSET_H [expr $M3_GND_CENTER - ($M7_WIDTH/2.0)]
set M2_GND_OFFSET_V 1.1

create_pg_region M2_STUBS_REGION_GND -core \
		-expand_by_edge "{{side: 1} {offset: 0.5}} {{side: 2} {offset: 0.5}} \
				 {{side: 3} {offset: 0.5}} {{side: 4} {offset: 0.5}}"   >> "$LOG/create_pg_region.log"

set_pg_strategy M2_STRATEGY_GND \
    -pg_regions M2_STUBS_REGION_GND \
    -pattern {{name: M2_PATTERN} \
			  {nets: GND} \
			  {parameters: {$M2_H_PITCH $M2_V_PITCH $M2_GND_OFFSET_H $M2_GND_OFFSET_V}}} >> "$LOG/set_pg_strategy.log"

compile_pg -strategies "M2_STRATEGY_GND" -via_rule M2_M3 >> "$LOG/compile_pg.log"

compile_pg -strategies "M2_STRATEGY_GND" -via_rule M2_M1 >> "$LOG/compile_pg.log"

set_svf -off >> "$LOG/svf.log"

##############################
		# CHECKS #
##############################

check_pg_drc > "$REPORT/check_pg_drc.rpt"

check_pg_connectivity > "$REPORT/check_pg_connectivity.rpt"

check_pg_missing_vias > "$REPORT/check_missing_vias.rpt"

##############################
		# SAVE #
##############################
save_block 

##############################
		# OUTPUTS #
##############################

write_verilog "$OUTPUT/ibex_wrapper_pp.v"

puts "############################"
puts "###  End of Power Plan  ####"
puts "############################"



