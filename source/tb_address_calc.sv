// $Id: $
// File name:   tb_address_calc.sv
// Created:     11/27/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Test Bench Entry
// Description: Test Bench for top level address calculator
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
	reg sram_mode;
	reg sdram_mode;
	reg update;
	reg start_flag;
	reg [12:0] image_width;

	reg [25:0] sdram_startAddr;
	reg [25:0] sdram_finishAddr;
	reg [25:0] rowCacheStart;
	reg [25:0] outputAddrStart;
	
	reg [25:0] exp_sdram_read;
	reg [25:0] exp_sdram_write;
	reg [25:0] exp_sram_rowCache;
	reg [25:0] exp_sram_output;

	reg [25:0] sram_address;
	reg [25:0] sdram_address;
	
	integer i,j; // counter variable

	// DUT port mapping
	address_calc addrCalc
	(
		.clk					(clk),
		.n_rst					(n_rst),
	
		.sram_mode				(sram_mode),
		.sdram_mode				(sdram_mode),

		.update					(update),
		.start_flag				(start_flag),
		.image_width			(image_width),

		.start_address_sdram	(sdram_startAddr),
		.finish_address_sdram	(sdram_finishAddr),
		.rowCache_address_sram	(rowCacheStart),
		.output_address_sram	(outputAddrStart),

		.sdram_address			(sdram_address),
		.sram_address			(sram_address)

	);

	task clock(input integer noClocks);
		for(i = 0; i < noClocks; i=i+1)
		begin
			@(negedge clk);
		end
	endtask

	task initialize();
		n_rst = 1'b1;
		sram_mode = 1'b1;	// 1 -> rowCache ; 0 -> output
		sdram_mode = 1'b0;	// 1 -> read mode; 0 -> write mode

		update = 1'b0;
		start_flag = 1'b0;
		image_width = 31'd30;

		rowCacheStart = 26'd0;
		outputAddrStart = 26'd42;
		sdram_startAddr = 16'd300;
		sdram_finishAddr = 16'd3000;
		
		clock(1);
	endtask;		

	task testBothModes();
		mode = 1'b0;
		clock(1);
		assert(sram_address == exp_outputAddr) else $error("on WRITE mode: sramAddr != finishAddr");
		mode = 1'b1;
		clock(1);
		assert(sram_address == exp_rowCache) else $error("on READ mode: sramAddr != startAddr");
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
		initialize();
		reset();

		mode = 1'b1;
		// SDRAM to SRAM writing operation (All elements in row cache accessed)
		// SRAM to WB reading operation (All elements in row cache accessed)
		$info("Accessing addresses in SRAM's ROW_CACHE");
		for(j = 0; j < image_width + 5; j+=1)
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


		mode = 1'b0;		
		// For WB to SRAM writing operation    (image_width - 1 elements to be accessed)
		// For SRAM to SDRAM reading operation (image_width - 1 elements to be accessed)
		$info("Accessing addresses in SRAM's OUTPUT_ADDR");
		for(j = 0; j < image_width - 1 + 5; j+=1)
		begin
			enable = 1'b1;
			clock(1);
			enable = 1'b0;
			exp_outputAddr += 1;
			if(j == image_width - 2)
			begin
				exp_outputAddr = outputAddrStart;
			end
			testBothModes();
			mode = 1'b0;
			clock(1);
		end


		clearPulse();

		$info(" ^v^v^v^v^v^v^v^v^v^v Finished ^v^v^v^v^v^v^v^v^v^v^ ");
	end

endmodule
