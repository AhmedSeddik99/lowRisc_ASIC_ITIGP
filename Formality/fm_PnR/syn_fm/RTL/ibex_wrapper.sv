// Copyright lowRISC contributors.
// Copyright 2018 ETH Zurich and University of Bologna, see also CREDITS.md.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`ifdef RISCV_FORMAL
  `define RVFI
`endif

//`include "prim_assert.sv"


/**
 * Top level module of the ibex RISC-V core
 */
module ibex_wrapper import ibex_pkg::*; (
  // Clock and Reset
  input  logic                         clk_i,
  input  logic                         rst_ni,
  input  logic                         test_en_i,     // enable all clock gates for testing
  input  logic                         ram_cfg_en,
  input  logic [3:0]                   ram_cfg,
  input  logic                         rf_cfg_en,
  input  logic [3:0]                   rf_cfg,
  input  logic [31:0]                  hart_id_i,
  input  logic [31:0]                  boot_addr_i,
  output logic                         instr_req_o,
  input  logic                         instr_gnt_i,
  input  logic                         instr_rvalid_i,
  output logic [31:0]                  instr_addr_o,
  input  logic [31:0]                  instr_rdata_i,
  input  logic [6:0]                   instr_rdata_intg_i,
  input  logic                         instr_err_i,
  output logic                         data_req_o,
  input  logic                         data_gnt_i,
  input  logic                         data_rvalid_i,
  output logic                         data_we_o,
  output logic [3:0]                   data_be_o,
  output logic [31:0]                  data_addr_o,
  output logic [31:0]                  data_wdata_o,
  output logic [6:0]                   data_wdata_intg_o,
  input  logic [31:0]                  data_rdata_i,
  input  logic [6:0]                   data_rdata_intg_i,
  input  logic                         data_err_i,
  input  logic                         irq_software_i,
  input  logic                         irq_timer_i,
  input  logic                         irq_external_i,
  input  logic [14:0]                  irq_fast_i,
  input  logic                         irq_nm_i,
  input  logic                         scramble_key_valid_i,
  input  logic [SCRAMBLE_KEY_W-1:0]    scramble_key_i,
  input  logic [SCRAMBLE_NONCE_W-1:0]  scramble_nonce_i,
  output logic                         scramble_req_o,
  input  logic                         debug_req_i,
  output logic [31:0]                  current_pc,
  output logic [31:0]                  next_pc,
  output logic [31:0]                  last_data_addr,
  output logic [31:0]                  exception_pc,
  output logic [31:0]                  exception_addr,
  output logic                         double_fault_seen_o,

	`ifdef RVFI
	  output logic                         rvfi_valid,
	  output logic [63:0]                  rvfi_order,
	  output logic [31:0]                  rvfi_insn,
	  output logic                         rvfi_trap,
	  output logic                         rvfi_halt,
	  output logic                         rvfi_intr,
	  output logic [ 1:0]                  rvfi_mode,
	  output logic [ 1:0]                  rvfi_ixl,
	  output logic [ 4:0]                  rvfi_rs1_addr,
	  output logic [ 4:0]                  rvfi_rs2_addr,
	  output logic [ 4:0]                  rvfi_rs3_addr,
	  output logic [31:0]                  rvfi_rs1_rdata,
	  output logic [31:0]                  rvfi_rs2_rdata,
	  output logic [31:0]                  rvfi_rs3_rdata,
	  output logic [ 4:0]                  rvfi_rd_addr,
	  output logic [31:0]                  rvfi_rd_wdata,
	  output logic [31:0]                  rvfi_pc_rdata,
	  output logic [31:0]                  rvfi_pc_wdata,
	  output logic [31:0]                  rvfi_mem_addr,
	  output logic [ 3:0]                  rvfi_mem_rmask,
	  output logic [ 3:0]                  rvfi_mem_wmask,
	  output logic [31:0]                  rvfi_mem_rdata,
	  output logic [31:0]                  rvfi_mem_wdata,
	  output logic [31:0]                  rvfi_ext_pre_mip,
	  output logic [31:0]                  rvfi_ext_post_mip,
	  output logic                         rvfi_ext_nmi,
	  output logic                         rvfi_ext_nmi_int,
	  output logic                         rvfi_ext_debug_req,
	  output logic                         rvfi_ext_debug_mode,
	  output logic                         rvfi_ext_rf_wr_suppress,
	  output logic [63:0]                  rvfi_ext_mcycle,
	  output logic [31:0]                  rvfi_ext_mhpmcounters [10],
	  output logic [31:0]                  rvfi_ext_mhpmcountersh [10],
	  output logic                         rvfi_ext_ic_scr_key_valid,
	  output logic                         rvfi_ext_irq_valid,
	`endif

  input  ibex_mubi_t                   fetch_enable_i,
  output logic                         alert_minor_o,
  output logic                         alert_major_internal_o,
  output logic                         alert_major_bus_o,
  output logic                         core_sleep_o,
  input  logic                         scan_rst_ni
);

	prim_ram_1p_pkg::ram_1p_cfg_t ram_cfg_i;
	prim_ram_1p_pkg::cfg_t ram_cfg_struct;
	prim_ram_1p_pkg::cfg_t rf_cfg_struct;

	assign ram_cfg_struct.cfg_en = ram_cfg_en;
	assign ram_cfg_struct.cfg = ram_cfg;

	assign rf_cfg_struct.cfg_en = rf_cfg_en;
	assign rf_cfg_struct.cfg = rf_cfg;

	assign ram_cfg_i.ram_cfg = ram_cfg_struct;
	assign ram_cfg_i.rf_cfg = rf_cfg_struct;


	crash_dump_t    crash_dump_o;

	assign next_pc        = crash_dump_o.next_pc;
	assign current_pc     = crash_dump_o.current_pc;
	assign exception_pc   = crash_dump_o.exception_pc;
	assign exception_addr = crash_dump_o.exception_addr;
	assign last_data_addr = crash_dump_o.last_data_addr;


	ibex_top ibex_top_inst (
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.test_en_i(test_en_i),     
		.hart_id_i(hart_id_i),
		.boot_addr_i(boot_addr_i),
		.instr_req_o(instr_req_o),
		.instr_gnt_i(instr_gnt_i),
		.instr_rvalid_i(instr_rvalid_i),
		.instr_addr_o(instr_addr_o),
		.instr_rdata_i(instr_rdata_i),
		.instr_rdata_intg_i(instr_rdata_intg_i),
		.instr_err_i(instr_err_i),
		.data_req_o(data_req_o),
		.data_gnt_i(data_gnt_i),
		.data_rvalid_i(data_rvalid_i),
		.data_we_o(data_we_o),
		.data_be_o(data_be_o),
		.data_addr_o(data_addr_o),
		.data_wdata_o(data_wdata_o),
		.data_wdata_intg_o(data_wdata_intg_o),
		.data_rdata_i(data_rdata_i),
		.data_rdata_intg_i(data_rdata_intg_i),
		.data_err_i(data_err_i),
		.irq_software_i(irq_software_i),
		.irq_timer_i(irq_timer_i),
		.irq_external_i(irq_external_i),
		.irq_fast_i(irq_fast_i),
		.irq_nm_i(irq_nm_i),
		.scramble_key_valid_i(scramble_key_valid_i),
		.scramble_key_i(scramble_key_i),
		.scramble_nonce_i(scramble_nonce_i),
		.scramble_req_o(scramble_req_o),
		.debug_req_i(debug_req_i),
		.crash_dump_o(crash_dump_o),
		.double_fault_seen_o(double_fault_seen_o),

		`ifdef RVFI
			.rvfi_valid(rvfi_valid),
			.rvfi_order(rvfi_order),
			.rvfi_insn(rvfi_insn),
			.rvfi_trap(rvfi_trap),
			.rvfi_halt(rvfi_halt),
			.rvfi_intr(rvfi_intr),
			.rvfi_mode(rvfi_mode),
			.rvfi_ixl(rvfi_ixl),
			.rvfi_rs1_addr(rvfi_rs1_addr),
			.rvfi_rs2_addr(rvfi_rs2_addr),
			.rvfi_rs3_addr(rvfi_rs3_addr),
			.rvfi_rs1_rdata(rvfi_rs1_rdata),
			.rvfi_rs2_rdata(rvfi_rs2_rdata),
			.rvfi_rs3_rdata(rvfi_rs3_rdata),
			.rvfi_rd_addr(rvfi_rd_addr),
			.rvfi_rd_wdata(rvfi_rd_wdata),
			.rvfi_pc_rdata(rvfi_pc_rdata),
			.rvfi_pc_wdata(rvfi_pc_wdata),
			.rvfi_mem_addr(rvfi_mem_addr),
			.rvfi_mem_rmask(rvfi_mem_rmask),
			.rvfi_mem_wmask(rvfi_mem_wmask),
			.rvfi_mem_rdata(rvfi_mem_rdata),
			.rvfi_mem_wdata(rvfi_mem_wdata),
			.rvfi_ext_pre_mip(rvfi_ext_pre_mip),
			.rvfi_ext_post_mip(rvfi_ext_post_mip),
			.rvfi_ext_nmi(rvfi_ext_nmi),
			.rvfi_ext_nmi_int(rvfi_ext_nmi_int),
			.rvfi_ext_debug_req(rvfi_ext_debug_req),
			.rvfi_ext_debug_mode(rvfi_ext_debug_mode),
			.rvfi_ext_rf_wr_suppress(rvfi_ext_rf_wr_suppress),
			.rvfi_ext_mcycle(rvfi_ext_mcycle),
			.rvfi_ext_mhpmcounters(rvfi_ext_mhpmcounters),
			.rvfi_ext_mhpmcountersh(rvfi_ext_mhpmcountersh),
			.rvfi_ext_ic_scr_key_valid(rvfi_ext_ic_scr_key_valid),
			.rvfi_ext_irq_valid(rvfi_ext_irq_valid),
		`endif

		.fetch_enable_i(fetch_enable_i),
		.alert_minor_o(alert_minor_o),
		.alert_major_internal_o(alert_major_internal_o),
		.alert_major_bus_o(alert_major_bus_o),
		.core_sleep_o(core_sleep_o),
		.ram_cfg_i(ram_cfg_i),
		.scan_rst_ni(scan_rst_ni)
	);




endmodule


