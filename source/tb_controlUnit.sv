// $Id: $
// File name:   tb_controlUnit.sv
// Created:     12/5/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Test bench for the control Unit

module tb_controlUnit
();

	// Note: This test bench changes values on negedge

	localparam CLK_PERIOD = 2.5;
	localparam DISABLED = 1'b0;
	localparam MODE_WB_NOP	= 3'b000; // not really required, just for safety
	localparam MODE_WB_S1	= 3'd1;
	localparam MODE_WB_S2	= 3'd2;
	localparam MODE_WB_SD3	= 3'd3;
	localparam MODE_WB_SD4	= 3'd4;
	localparam MODE_WB_SHFT	= 3'b101;

	localparam MODE_SRAM_READ	= 1;
	localparam MODE_SRAM_WRITE	= 0;

	localparam MODE_ADDRCALC_SRAM_ROWCACHE	= 1;
	localparam MODE_ADDRCALC_SRAM_OUTPUTARR	= 0;
	localparam MODE_ADDRCALC_SDRAM_READ		= 1;
	localparam MODE_ADDRCALC_SDRAM_WRITE	= 0;


	reg clk;
	always
	begin
		clk = 1'b0;
		#(CLK_PERIOD/2.0);
		clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end
	
	integer i;

	// we give these values to DUT
	reg n_rst;
	reg start_flag, dataRead_sram, dataRead_sdram;
	reg rollover_i, rollover_j, rollover_i_wr;

	// we get these values from DUT
	reg enable_i, enable_j, enable_i_wr;
	reg enable_addr_calc_sram, enable_addr_calc_sdram;
	reg enable_WB, enable_sram, read_en_sdram, write_en_sdram;

	// we get these values from DUT
	reg mode_addr_calc_sram, mode_addr_calc_sdram, mode_sram;
	reg [2:0] mode_WB;
	reg finish_flag;

	
	// DUT port mapping
	controlUnit theBrain
	(
		.clk					(clk),
		.n_rst					(n_rst),

		.start_flag				(start_flag),
		.dataRead_sram			(dataRead_sram),
		.dataRead_sdram			(dataRead_sdram),
		.rollover_i				(rollover_i),
		.rollover_j				(rollover_j),
		.rollover_i_wr			(rollover_i_wr),
		
		.enable_i				(enable_i),
		.enable_j				(enable_j),
		.enable_i_wr			(enable_i_wr),
		.enable_addr_calc_sram	(enable_addr_calc_sram),
		.enable_addr_calc_sdram	(enable_addr_calc_sdram),
		.enable_WB				(enable_WB),
		.enable_sram			(enable_sram),
		.read_en_sdram			(read_en_sdram),
		.write_en_sdram			(write_en_sdram),
		
		.mode_addr_calc_sram	(mode_addr_calc_sram),
		.mode_addr_calc_sdram	(mode_addr_calc_sdram),
		.mode_WB				(mode_WB),
		.mode_sram				(mode_sram),
		
		.finish_flag			(finish_flag)
	);

	task clock(input integer noClocks);
		for(i = 0; i < noClocks; i=i+1)
		begin
			@(negedge clk);
		end
	endtask

	task initialize();
		n_rst 					= 1'b1;

		start_flag				= 1'b0;
		dataRead_sram			= 1'b0;
		dataRead_sdram			= 1'b0;
		rollover_i				= 1'b0;
		rollover_j				= 1'b0;
		rollover_i_wr			= 1'b0;
	endtask;

	task reset();
		n_rst = 1'b0;
		clock(1);
		assert(enable_i == DISABLED) else $error("enable_i is not disabled");
		assert(enable_j == DISABLED) else $error("enable_j is not disabled");
		assert(enable_i_wr == DISABLED) else $error("enable_i_wr is not disabled");
		assert(enable_addr_calc_sram == DISABLED) else $error("enable_addr_calc_sram is not disabled");
		assert(enable_addr_calc_sdram == DISABLED) else $error("enable_addr_calc_sdram is not disabled");
		assert(enable_WB == DISABLED) else $error("enable_WB is not disabled");
		assert(enable_sram == DISABLED) else $error("enable_sram is not disabled");
		assert(read_en_sdram == DISABLED) else $error("read_en_sdram is not disabled");
		assert(write_en_sdram == DISABLED) else $error("write_en_sdram is not disabled");
		
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_ROWCACHE) else $error("AddrModeSRAM not rowcache");
		assert(mode_addr_calc_sdram == MODE_ADDRCALC_SDRAM_READ) else $error("AddrModeSDRAM not read");
		assert(mode_WB == MODE_WB_NOP) else $error("mode WB not NOP");
		assert(mode_sram == MODE_SRAM_WRITE) else $error("mode SRAM not Write");
		
		assert(finish_flag == DISABLED) else $error("");
	
		n_rst = 1'b1;
		clock(1);
	endtask;

	initial
	begin
		initialize();
		clock(2);
		reset();
	end	

endmodule

/*
		assert(enable_i == ) else $error("");
		assert(enable_j == ) else $error("");
		assert(enable_i_wr == ) else $error("");
		assert(enable_addr_calc_sram == ) else $error("");
		assert(enable_addr_calc_sdram == ) else $error("");
		assert(enable_WB == ) else $error("");
		assert(enable_sram == ) else $error("");
		assert(read_en_sdram == ) else $error("");
		assert(write_en_sdram == ) else $error("");
		
		assert(mode_addr_calc_sram == ) else $error("");
		assert(mode_addr_calc_sdram == ) else $error("");
		assert(mode_WB == ) else $error("");
		assert(mode_sram == ) else $error("");
		
		assert(finish_flag == ) else $error("");
*/
