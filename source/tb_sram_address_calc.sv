// $Id: $
// File name:   tb_i_col_counter.sv
// Created:     11/27/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Test Bench Entry
// Description: Test Bench for SRAM address calculator
`timescale 1ns / 100ps

module tb_sram_address_calc
();
	// Note: This test bench changes values on negedge

	localparam CLK_PERIOD = 2.5;

	reg clk;
	always
	begin
		clk = 1'b0;
		#(CLK_PERIOD/2.0);
		clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end

	reg n_rst;
	reg mode;
	reg enable;
	reg clear;

	reg [12:0] image_width;
	reg [25:0] rowCacheStart;
	reg [25:0] outputAddrStart;

	reg [25:0] exp_rowCache;
	reg [25:0] exp_outputAddr;
	reg [25:0] sram_address;
	
	integer i,j; // counter variable

	// DUT port mapping
	sram_address_calc sramAddrCalc
	(
		.clk					(clk),
		.n_rst					(n_rst),
		.clear					(clear),
		.mode					(mode),
		.enable					(enable),

		.image_width			(image_width),
		.sram_rowCacheStart		(rowCacheStart),
		.sram_outputAddrStart	(outputAddrStart),

		.sram_addr				(sram_address)
	);

	task clock(input integer noClocks);
		for(i = 0; i < noClocks; i=i+1)
		begin
			@(negedge clk);
		end
	endtask

	task testBothModes();
		mode = 1'b0;
		clock(1);
		assert(sram_address == exp_outputAddr) else $error("on RESET and WRITE mode: sramAddr != finishAddr");
		mode = 1'b1;
		clock(1);
		assert(sram_address == exp_rowCache) else $error("on RESET and READ mode: sramAddr != startAddr");
	endtask

	task reset();
		exp_rowCache = rowCacheStart;
		exp_outputAddr = outputAddrStart;
		n_rst = 1'b0;	
		mode = 1'b1;
		clock(10);
		assert(sram_address == rowCacheStart) else $error("on RESET and READ mode: sramAddr != startAddr");
		mode = 1'b0;
		clock(4);
		assert(sram_address == outputAddrStart) else $error("on RESET and WRITE mode: sramAddr != finishAddr");
		n_rst = 1'b1;	
	endtask

	task clearPulse();
		exp_rowCache = rowCacheStart;
		exp_outputAddr = outputAddrStart;
		clear = 1'b1;	
		clock(1);
		clear = 1'b0;

		testBothModes();
	endtask



	initial
	begin
		n_rst = 1'b1;
		mode = 1'b1; // rowCache
		enable = 1'b0;
		clear = 1'b0;
		image_width = 31'd50;
		rowCacheStart = 26'd440;
		outputAddrStart = 26'd4400;
		clock(1);
		reset();

		mode = 1'b1;
		// SDRAM to SRAM writing operation
		for(j = 0; j < image_width; j+=1)
		begin
			enable = 1'b1;
			clock(1);
			enable = 1'b0;
			exp_rowCache += 1;
			if(j == image_width - 1)
			begin
				exp_rowCache = rowCacheStart;
			end
			testBothModes();
			clock(1);
		end
/*
		mode = 1'b0;		
		for(j = 0; j < 10; j+=1)
		begin
			enable = 1'b1;
			clock(1);
			enable = 1'b0;
			exp_outputAddr += 1;
			testBothModes;
			mode = 1'b0;
			clock(1);
		end

		clearPulse();

		for(j = 0; j < 10; j+=1)
		begin
			enable = 1'b1;
			clock(1);
			enable = 1'b0;
			exp_rowCache += 1;
			testBothModes;
			clock(1);
		end

		mode = 1'b0;		
		for(j = 0; j < 10; j+=1)
		begin
			enable = 1'b1;
			clock(1);
			enable = 1'b0;
			exp_outputAddr += 1;
			testBothModes;
			mode = 1'b0;
			clock(1);
		end
*/
		$info(" ^v^v^v^v^v^v^v^v^v^v Finished ^v^v^v^v^v^v^v^v^v^v^ ");
	end

endmodule
