// $Id: $
// File name:   tb_address_calc.sv
// Created:     11/27/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Test Bench Entry
// Description: Test Bench for top level address calculator
`timescale 1ns / 100ps

module tb_address_calc
();
	// Note: This test bench changes values on negedge

	localparam CLK_PERIOD = 20;

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
	reg sram_update;
	reg sdram_update;
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

		.sdram_update			(sdram_update),
		.sram_update			(sram_update),

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
		sdram_mode = 1'b1;	// 1 -> read mode; 0 -> write mode

		sram_update = 1'b0;
		sdram_update = 1'b0;
		start_flag = 1'b0;
		image_width = 31'd30;

		// inputs to DUT port mapping
		rowCacheStart = 26'd0;
		outputAddrStart = 26'd42;
		sdram_startAddr = 26'd300;
		sdram_finishAddr = 26'd3000;

		exp_sram_rowCache = rowCacheStart;
		exp_sram_output = outputAddrStart;
		exp_sdram_read = sdram_startAddr;
		exp_sdram_write = sdram_finishAddr;
			
		clock(1);
	endtask

	task testBothModes();
		sram_mode = 1'b0;
		sdram_mode = 1'b0;
		clock(1);
		assert( sram_address == exp_sram_output) else $error("on OUTPUT_ADDR mode: sramAddr not as exp");
		assert(sdram_address == exp_sdram_write) else $error("on WRITE mode: sdramAddr not as exp");
		sram_mode = 1'b1;
		sdram_mode = 1'b1;
		clock(1);
		assert( sram_address == exp_sram_rowCache) else $error("on ROW_CACHE mode: sramAddr not as exp");
		assert(sdram_address == exp_sdram_read) else $error("on READ mode: sdramAddr not as exp");
	endtask

	task reset();
		exp_sram_rowCache = rowCacheStart;
		exp_sram_output = outputAddrStart;
		exp_sdram_read = sdram_startAddr;
		exp_sdram_write = sdram_finishAddr;
		n_rst = 1'b0;	
		testBothModes();
		n_rst = 1'b1;	
		clock(1);
	endtask

	task start_flag_pulse();
		exp_sram_rowCache = rowCacheStart;
		exp_sram_output = outputAddrStart;
		exp_sdram_read = sdram_startAddr;
		exp_sdram_write = sdram_finishAddr;
		start_flag = 1'b1;	
		clock(1);
		start_flag = 1'b0;

		testBothModes();
	endtask



	initial
	begin
		initialize();
		clock(4);
		reset();

		$info("to simulate operation of SDRAM being read and SRAM being written into");
		$info("it also simulates operation of SDRAM being read to WB and SRAM being read to WB");
		sdram_mode = 1'b1; // read mode
		sram_mode = 1'b1;  // row cache mode
		for(j = 0; j < image_width; j+=1)
		begin
			sdram_update = 1'b1;
			clock(1);
			sdram_update = 1'b0;
			exp_sdram_read += 1;
			
			testBothModes();			
			sram_update = 1'b1;
			clock(1);
			sram_update = 1'b0;
			exp_sram_rowCache += 1;
			
			if(j == image_width - 1)
				exp_sram_rowCache = rowCacheStart;

			testBothModes();
			clock(1);						
		end		

		$info("To simulate operation of writing into output addr of sram (no-op to sdram)");
		sdram_mode = 1'b1; // read mode
		sram_mode = 1'b0;  // output address mode
		for(j = 0; j < image_width - 1; j+=1)
		begin
			sram_update = 1'b1;
			clock(1);
			sram_update = 1'b0;
			exp_sram_output += 1;
			
			if(j == image_width - 2)
				exp_sram_output = outputAddrStart;

			testBothModes();
			sram_mode = 1'b0;
			sdram_mode = 1'b1;
			clock(1);						
		end		

		$info("to simulate operation of SDRAM being written into and SRAM's output being read from");
		sdram_mode = 1'b0; // write mode
		sram_mode = 1'b0;  // output mode
		for(j = 0; j < image_width; j+=1)
		begin
			sram_update = 1'b1;
			clock(1);
			sram_update = 1'b0;
			exp_sram_output += 1;
			
			if(j == image_width - 2)
				exp_sram_output = outputAddrStart;

			testBothModes();
			sram_mode = 1'b0;
			sdram_mode = 1'b0;
			
			sdram_update = 1'b1;
			clock(1);
			sdram_update = 1'b0;
			exp_sdram_write += 1;
			
			testBothModes();			
			sram_mode = 1'b0;
			sdram_mode = 1'b0;				
		end	


		$info(" ^v^v^v^v^v^v^v^v^v^v Finished ^v^v^v^v^v^v^v^v^v^v^ ");
	end

endmodule
