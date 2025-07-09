proc catchError {inputFile outputFile} {
    # Read entire file content
    set content [read [set in [open $inputFile r]]]
    close $in
    
    # Split into lines and process
    set errorCount 0
    set out [open $outputFile a]
    
    foreach line [split $content "\n"] {
	if {[string match "*Error: *" $line]} {
            puts $out "$line\n"
            incr errorCount
        }
    }
    
    close $out
    return $errorCount
}

################################################################

proc fixVER_927_ASSERT {inputFile macros defaultClk defaultRst} {
	# Read entire file content
	set content [read [set in [open $inputFile r]]]
	close $in

	# Split into lines and process
   	set fixCount 0
    
	set tempFile "$inputFile\_temp"
	set out [open $tempFile w]
	set allLines [split $content "\n"]
	set lineCount [llength $allLines]
    	set i 0

	while {$i < $lineCount} {
		# Capture another line
		set line [lindex $allLines $i]
			
		set macroFound 0
		foreach macroName $macros {
			if {[string match "*`$macroName\(*" $line]} {
				set macroFound 1
				break
			}
		}

		# If line contains a macro
		if {$macroFound == 1} {
            		# Count the braces
			set leftBraces [regexp -all -- {\(} $line]
			set rightBraces [regexp -all -- {\)} $line]
			
			# Loop till balanced braces (for multilines cases)
			while {$leftBraces > $rightBraces} {
				#puts "$i : Braces are NOT balanced!"
				puts $out "$line"
				incr i
				set line [lindex $allLines $i]
				set leftBraces [expr $leftBraces + [regexp -all -- {\(} $line]]
				set rightBraces [expr $rightBraces + [regexp -all -- {\)} $line]]
			}
	
			# Braces are balanced
			puts "$i : Braces are balanced. >> $line"
			
			# What is missing?
			set pattern ".*,\\s*$defaultRst\\s*\\)\\s*"
			if {[regexp $pattern $line]} {
				#puts "$i : No changes are required!"
				puts $out "$line"
			} else {
				set pattern ".*,\\s*$defaultClk\\s*\\)\\s*"
				if {[regexp $pattern $line]} {
				#puts "$i : 1 change is required!"
				set pos [string last ")" $line]
				set newLine [string replace $line $pos $pos ", $defaultRst)"]
				puts "$newLine\n"
				puts $out "$newLine"
				incr fixCount
				
				} else {
					#puts "$i : 2 changes are required!"
					set pos [string last ")" $line]
					set newLine [string replace $line $pos $pos ", $defaultClk, $defaultRst)"]
					puts "$newLine\n"
					puts $out "$newLine"	
					incr fixCount	
				}
			}
	
		} else {

			puts $out "$line"
		}

		incr i
	}

    close $out

    file rename -force $tempFile $inputFile

    return $fixCount
}





# Usage
set errorsFound [catchError $inputFile $outputFile]

# Usage
set macros "ASSERT_AT_RESET ASSERT_AT_RESET_AND_FINAL ASSERT ASSERT_NEVER ASSERT_KNOWN COVER ASSUME ASSERT_IF ASSERT_KNOWN_IF"

fixVER_927_ASSERT "./RTL/ibex_compressed_decoder.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/ibex_fetch_fifo.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/prim_lfsr.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/ibex_branch_predict.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/ibex_decoder.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/ibex_controller.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/ibex_multdiv_fast.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/ibex_wb_stage.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/ibex_csr.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/prim_onehot_check.sv" $macros "clk_i" "rst_ni"

fixVER_927_ASSERT "./RTL/ibex_icache.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/ibex_cs_registers.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/ibex_id_stage.sv" $macros "clk_i" "rst_ni"

fixVER_927_ASSERT "./RTL/ibex_if_stage.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/ibex_load_store_unit.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/prim_onehot_mux.sv" $macros "clk_i" "rst_ni"
fixVER_927_ASSERT "./RTL/prim_ram_1p_adv.sv" $macros "clk_i" "rst_ni"

fixVER_927_ASSERT "./RTL/ibex_core.sv" $macros "clk_i" "rst_ni"

fixVER_927_ASSERT "./RTL/ibex_top.sv" $macros "clk_i" "rst_ni"








