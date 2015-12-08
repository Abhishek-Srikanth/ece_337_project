// $Id: $
// File name:   tb_i_col_counter.sv
// Created:     11/25/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Test Bench Entry
// Description: Test Bench for SDRAM address calculator
`timescale 1ns / 100ps

module tb_sdram_address_calc
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
	reg load;
	reg mode;
	reg enable;

	reg [25:0] start_address;
	reg [25:0] finish_address;
	reg [25:0] exp_read;
	reg [25:0] exp_write;
	reg [25:0] sdram_address;
	
	integer i,j; // counter variable

	// DUT port mapping
	sdram_address_calc SdramAddrCalc
	(
		.clk			(clk),
		.n_rst			(n_rst),
		.mode			(mode),
		.enable			(enable),
		.load			(load),
		.start_address	(start_address),
		.finish_address	(finish_address),
		.sdram_address	(sdram_address)
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
		assert(sdram_address == exp_write) else $error("on RESET and WRITE mode: sdramAddr != finishAddr");
		mode = 1'b1;
		clock(1);
		assert(sdram_address == exp_read) else $error("on RESET and READ mode: sdramAddr != startAddr");
	endtask

	task reset();
		exp_read = start_address;
		exp_write = finish_address;
		n_rst = 1'b0;	
		clock(10);
		assert(sdram_address == start_address) else $error("on RESET and READ mode: sdramAddr != startAddr");
		mode = 1'b0;
		clock(4);
		assert(sdram_address == finish_address) else $error("on RESET and WRITE mode: sdramAddr != finishAddr");
		n_rst = 1'b1;

		testBothModes();
	endtask

	task loadPulse();
		exp_read = start_address;
		exp_write = finish_address;
		load = 1'b1;	
		clock(1);
		load = 1'b0;

		testBothModes();
	endtask



	initial
	begin
		n_rst = 1'b1;
		mode = 1'b1; // read
		enable = 1'b0;
		load = 1'b0;
		start_address = 26'd300;
		finish_address = 26'd3000;

		reset();

		for(j = 0; j < 10; j+=1)
		begin
			enable = 1'b1;
			clock(1);
			enable = 1'b0;
			exp_read += 1;
			testBothModes;
			clock(1);
		end

		mode = 1'b0;		
		for(j = 0; j < 10; j+=1)
		begin
			enable = 1'b1;
			clock(1);
			enable = 1'b0;
			exp_write += 1;
			testBothModes;
			mode = 1'b0;
			clock(1);
		end

		loadPulse();

		for(j = 0; j < 10; j+=1)
		begin
			enable = 1'b1;
			clock(1);
			enable = 1'b0;
			exp_read += 1;
			testBothModes;
			clock(1);
		end

		mode = 1'b0;		
		for(j = 0; j < 10; j+=1)
		begin
			enable = 1'b1;
			clock(1);
			enable = 1'b0;
			exp_write += 1;
			testBothModes;
			mode = 1'b0;
			clock(1);
		end

		$info(" ^v^v^v^v^v^v^v^v^v^v Finished ^v^v^v^v^v^v^v^v^v^v^ ");
	end

endmodule
