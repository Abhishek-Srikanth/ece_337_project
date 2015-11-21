// $Id: $
// File name:   tb_j_row_counter.sv
// Created:     11/21/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Test Bench Entry
// Description: Test Bench for Row Counter for image indexing
`timescale 1ns / 100ps

module tb_j_row_counter
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

//	reg tb_n_rst;
	reg clear;
	reg count_enable;
	reg [12:0] img_height;
	reg [12:0] value;
	reg [12:0] exp_value;
	reg rollover_flag;
	integer i; // counter variable

	// DUT port mapping
	j_row_counter colCounter 
	(
		.clk(clk),
		.clear(clear),
		.rollover_val(img_height),
		.count_enable(count_enable),
		
		.rollover_flag(rollover_flag),
		.value(value)
	);

	task clock(input integer noClocks);
		for(i = 0; i < noClocks; i=i+1)
		begin
			@(negedge clk);
		end
	endtask

	task forWidth(input bit [12:0] imageWidth);
		clear = 1'b0;
		count_enable = 1'b0;
		img_height = imageWidth;
		exp_value = '0;
		$info("Initializing system. img_height defined as %d", img_height);
		clock(1);

		clear = 1'b1;
		clock(1);
		clear = 1'b0;
		assert(value == exp_value) else $error("Clear did not reset value");
		assert(rollover_flag == 1'b0) else $error("Clear did not reset ro_flag");
		
		for(exp_value = '0; exp_value < img_height - 2;) 
		begin
			clock(3);
			count_enable = 1'b1; 
			clock(1);
			count_enable = 1'b0;
			exp_value = exp_value + 1;	// increment here since count_enable just pulsed
			assert(value == exp_value) else $error("value(%d) != %d", value, exp_value);
			assert(rollover_flag == 1'b0) else $error("rollover_flag != 0");
		end

		// when exp_value == img_height
		clock(3);
		count_enable = 1'b1; 
		clock(1);
		count_enable = 1'b0;
		exp_value = '0;
		assert(value == exp_value) else $error("value(%d) != %d", value, exp_value);
		assert(rollover_flag == 1'b1) else $error("rollover_flag != 1");
		exp_value += 1;

		clock(3);
		count_enable = 1'b1; 
		clock(1);
		count_enable = 1'b0;
		assert(value == exp_value) else $error("value(%d) != %d", value, exp_value);
		assert(rollover_flag == 1'b0) else $error("rollover_flag != 0");
		exp_value += 1;
	endtask	

	initial
	begin
		forWidth(13'd10);	
		$info("Finished Round 1");
		forWidth(13'd100);	
		$info("Finished Round 2");
		forWidth('1);	
		$info("Finished Round 3");
	end

endmodule
