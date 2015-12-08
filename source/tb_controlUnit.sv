// $Id: $
// File name:   tb_controlUnit.sv
// Created:     12/5/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Test bench for the control Unit

`timescale 1ns/100ps

module tb_controlUnit
();

	// Note: This test bench changes values on negedge

	localparam CLK_PERIOD = 20;
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

	task firstRow_updateCounters();
		assert(enable_sram == 1'b0) else $error("sram write enable not pulsing, very long");
		assert(enable_i == 1'b1) else $error("expected i_enable to pulse");
		assert(enable_addr_calc_sdram == 1'b1) else $error("expected sdram addr Calc enable to pulse");
		assert(enable_addr_calc_sram == 1'b1) else $error("expected sram addr Calc enable to pulse");
		assert(mode_addr_calc_sdram == MODE_ADDRCALC_SDRAM_READ) else $error("read address not being updated in sdram");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_ROWCACHE) else $error("rowcache not being updated in sram");
	endtask

	task firstColOperations();
		// start in read firstCol sdram mode
		$info("start firstCol operations");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_ROWCACHE) else $error("not in SRAM addr mode rowCache");
		assert(enable_sram == 1'b1) else $error("sram not enabled");	
		assert(mode_sram == MODE_SRAM_READ) else $error("sram not in read mode");
		clock(1);
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_ROWCACHE) else $error("not in SRAM addr mode rowCache");
		assert(enable_sram == 1'b0) else $error("sram enable not de-asserted, must be a pulse");
		
		dataRead_sram = 1'b1;
		clock(1);
		dataRead_sram = 1'b0;
		assert(enable_WB == 1'b1) else $error("WB is not enabled for write to WB_1");
		assert(mode_WB == MODE_WB_S1) else $error("WB is not being provided with correct mode of operation");	
		
		clock(1);
		assert(mode_addr_calc_sdram == MODE_ADDRCALC_SDRAM_READ) else $error("not in SDRAM read addr mode");
		assert(read_en_sdram == 1'b1) else $error("read_en of SDRAM not enabled");
		clock(1);
		assert(mode_addr_calc_sdram == MODE_ADDRCALC_SDRAM_READ) else $error("not in SDRAM read addr mode");
		assert(read_en_sdram == 1'b0) else $error("read_en of SDRAM has not pulsed, still high after 1 clock");
		
		dataRead_sdram = 1'b1;
		clock(1);
		dataRead_sdram = 1'b0;
		assert(enable_WB == 1'b1) else $error("WB not enabled");
		assert(mode_WB == MODE_WB_SD3) else $error("WB not on mode SD3 _write to bottom left from sdram_");
		assert(enable_sram == 1'b1) else $error("sram not enabled for write operation");
		assert(mode_sram == MODE_SRAM_WRITE) else $error("sram not in write mode");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_ROWCACHE) else $error("sram addr mode not correct");
		
		clock(1);
		assert(enable_WB == 1'b0) else $error("WB enable still high, must pulse");
		assert(enable_sram == 1'b0) else $error("sram enable still high, must pulse");
		assert(enable_i == 1'b1) else $error("enable for i is not being pulsed");
		assert(enable_addr_calc_sram == 1'b1) else $error("enable for addrCalc SRAM not high");
		assert(enable_addr_calc_sdram == 1'b1) else $error("enable for addrCalc SDRAM not high");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_ROWCACHE) else $error("addrCalc SRAM mode not correct");
		assert(mode_addr_calc_sdram == MODE_ADDRCALC_SDRAM_READ) else $error("addrCalc SDRAM mode not correct");

		clock(1);
	endtask

	task anyColOperations();
		$info("Starting any Col operation");
		assert(enable_i == 1'b0) else $error("Do not expect i to be updated here");
		assert(enable_addr_calc_sram == 1'b0) else $error("sram addrCalc not expected to be enabled here");

		assert(mode_sram == MODE_SRAM_READ) else $error("sram not in read mode");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_ROWCACHE) else $error("addrCalc not pointing to rowCache");
		assert(enable_sram == 1'b1) else $error("sram not been enabled for read operation");
		
		clock(1);
		assert(mode_sram == MODE_SRAM_READ) else $error("sram not in read mode");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_ROWCACHE) else $error("addrCalc not pointing to rowCache");
		assert(enable_sram == 1'b0) else $error("sram enable to be pulsed, it is still high though");
		
		dataRead_sram = 1'b1;
		clock(1);
		dataRead_sram = 1'b0;
		assert(mode_WB == MODE_WB_S2) else $error("mode of WB is not WB_2");
		assert(enable_WB == 1'b1) else $error("WB has not been enabled");
		
		clock(1);
		assert(enable_WB == 1'b0) else $error("WB enable still high, should be 1 clock pulse");
		assert(read_en_sdram == 1'b1) else $error("sdram read_en not high");
		assert(mode_addr_calc_sdram == MODE_ADDRCALC_SDRAM_READ) else $error("SDRAM addrCalc mode is not on READ");
		clock(1);
		assert(read_en_sdram == 1'b0) else $error("sdram read_en still high, must be 1 clock pulse only");
		assert(mode_addr_calc_sdram == MODE_ADDRCALC_SDRAM_READ) else $error("SDRAM addrCalc mode is not on READ");
		
		dataRead_sdram = 1'b1;
		clock(1);
		dataRead_sdram = 1'b0;
		assert(mode_WB == MODE_WB_SD4) else $error("WB not on WB_4 mode");
		assert(enable_WB == 1'b1) else $error("WB enable not high");
		assert(mode_sram == MODE_SRAM_WRITE) else $error("sram mode not on write");
		assert(enable_sram == 1'b1) else $error("SRAM enable not high");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_ROWCACHE) else $error("addrCalc addr not on rowCache");
		
		clock(1);
		assert(enable_WB == 1'b0) else $error("WB enable not high");
		assert(mode_sram == MODE_SRAM_WRITE) else $error("sram mode not on write");
		assert(enable_sram == 1'b1) else $error("SRAM enable not high");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_OUTPUTARR) else $error("addrCalc addr not on outputArr");

		clock(1);
		assert(enable_sram == 1'b0) else $error("SRAM enable not low yet, must only be 1 clock pulse");
		assert(enable_addr_calc_sram == 1'b1) else $error("sram addrCalc not enabled");
		assert(enable_addr_calc_sdram == 1'b1) else $error("sdram addrCalc not enabled");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_OUTPUTARR) else $error("SRAM wrong addr being updated");
		assert(mode_addr_calc_sdram == MODE_ADDRCALC_SDRAM_READ) else $error("SDRAM wrong addr being updated");
		
		clock(1);
		assert(enable_i == 1'b1) else $error("i counter not being enabled");
		assert(enable_addr_calc_sram == 1'b1) else $error("sram addrCalc not enabled");
		assert(enable_addr_calc_sdram == 1'b0) else $error("sdram addrCalc not disabled, must be 1 clock pulse");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_ROWCACHE) else $error("SRAM wrong addr being updated");

		// rollover_values must be set on clock, hence not in here itself

	endtask

	task outputImgOperations();
		$info("Start to ouptut row");
		assert(enable_i == 1'b0) else $error("Do not expect i to be updated here");
		assert(enable_i_wr == 1'b0) else $error("i_wr to be low here since it is a pulsed value");
		assert(enable_addr_calc_sram == 1'b0) else $error("sram addrCalc not expected to be enabled here");

		assert(enable_sram == 1'b1) else $error("sram is not enabled");
		assert(mode_sram == MODE_SRAM_READ) else $error("sram not in read mode");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_OUTPUTARR) else $error("addrCalc not point to outputArr");
		clock(1);
		assert(enable_sram == 1'b0) else $error("sram is not disabled, must be 1 clock pulse");
		assert(mode_sram == MODE_SRAM_READ) else $error("sram not in read mode");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_OUTPUTARR) else $error("addrCalc not point to outputArr");

		dataRead_sram = 1'b1;
		clock(1);
		dataRead_sram = 1'b0;
		assert(write_en_sdram == 1'b1) else $error("write enable to sdram not high");
		
		clock(1);
		assert(enable_i_wr == 1'b1) else $error("i_wr not enabled for update");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_OUTPUTARR) else $error("addrCalc not on outputArr mode");
		assert(mode_addr_calc_sdram == MODE_ADDRCALC_SDRAM_WRITE) else $error("sdram addrCalc not on write mode");
		assert(enable_addr_calc_sram == 1'b1) else $error("sram addr not being updated");
		assert(enable_addr_calc_sdram == 1'b1) else $error("sdram addr not being updated");
	
		// rollover_values must be set on clock, hence not in here itself
		
	endtask

	initial
	begin
		initialize();
		clock(2);
		reset();
		
		// following test for specifically a 2x2 image since this covers all imp cases that need to be tested
		// start of a flow of operations
		start_flag = 1'b1;
		clock(1);
		start_flag = 1'b0;
		assert(read_en_sdram == 1'b1) else $error("Read_en to SDRAM not provided");
		assert(mode_addr_calc_sdram == MODE_ADDRCALC_SDRAM_READ) else $error("Addr calc not in READ mode");
		
		clock(1);
		assert(read_en_sdram == 1'b0) else $error("Read_en should pulse for only 1 clock");
		clock(3);
		
		dataRead_sdram = 1'b1;
		clock(1); // firstRow sram write operation
		dataRead_sdram = 1'b0;
		assert(enable_sram == 1'b1) else $error("sram write enable not provided");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_ROWCACHE) else $error("sram addr mode not on rowCache");
		assert(mode_sram == MODE_SRAM_WRITE) else $error("sram not on write mode");

		clock(1); // firstRow update counters
		firstRow_updateCounters();
		
		rollover_i = 1'b0;
		clock(1);
		assert(read_en_sdram == 1'b1) else $error("Read_en should pulse for only 1 clock");
		assert(mode_addr_calc_sdram == MODE_ADDRCALC_SDRAM_READ) else $error("Addr calc not in READ mode");

		dataRead_sdram = 1'b1;
		clock(1); // directly to firstRow_sram_write, doesn't usually happen but this time datareadvalid comes quickly
		dataRead_sdram = 1'b0;
		assert(read_en_sdram == 1'b0) else $error("read_en should pulse for only 1 clock, not de-asserted correctly");
		assert(enable_sram == 1'b1) else $error("sram write enable not provided");
		assert(mode_addr_calc_sram == MODE_ADDRCALC_SRAM_ROWCACHE) else $error("sram addr mode not on rowCache");
		assert(mode_sram == MODE_SRAM_WRITE) else $error("sram not on write mode");

		clock(1); // firstRow update counters
		firstRow_updateCounters();

		rollover_i = 1'b1;
		clock(1);
		rollover_i = 1'b0;
		assert(enable_j == 1'b1) else $error("j counter has not been enabled");
		
		// first row
		rollover_j = 1'b0;
		clock(1);
		assert(enable_j == 1'b0) else $error("j counter has not been disabled, is to be a pulse");
	
		firstColOperations(); // final clock into next read operation already included in the task

		anyColOperations();

		rollover_i = 1'b0;
		clock(1);
		anyColOperations();

		rollover_i = 1'b1;
		clock(1);
		rollover_i = 1'b0;
		outputImgOperations();

		rollover_i_wr = 1'b0;
		clock(1);
		outputImgOperations();
	
		rollover_i_wr = 1'b1;
		clock(1);
		rollover_i_wr = 1'b0;
	
		// operation on a row repeats
		rollover_j = 1'b0;
		clock(1);
		assert(enable_j == 1'b0) else $error("j counter has not been disabled, is to be a pulse");
	
		firstColOperations(); // final clock into next read operation already included in the task

		anyColOperations();

		rollover_i = 1'b0;
		clock(1);
		anyColOperations();

		rollover_i = 1'b1;
		clock(1);
		rollover_i = 1'b0;
		outputImgOperations();

		rollover_i_wr = 1'b0;
		clock(1);
		outputImgOperations();

		rollover_i_wr = 1'b1;
		clock(1);
		rollover_i_wr = 1'b0;
		assert(enable_j == 1'b1) else $error("j row counter not getting updated");

		rollover_j = 1'b1;
		clock(1);
		rollover_j = 1'b0;
		assert(finish_flag == 1'b1) else $error("finish flag not asserted");
		
		clock(1);
		// following is a check for idle state
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


		$info("mudichaachu");
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
