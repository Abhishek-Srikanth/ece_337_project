// $Id: $
// File name:   tb_i_wr_counter.sv
// Created:     11/25/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Test Bench Entry
// Description: Test Bench for Column Counter for image writing from SRAM
`timescale 1ns / 100ps

module tb_i_wr_counter
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

//	reg tb_n_rst;
	reg clear;
	reg count_enable;
	reg [12:0] img_width;
	reg [12:0] value;
	reg [12:0] exp_value;
	reg rollover_flag;
	integer i; // counter variable

	// DUT port mapping
	i_wr_counter iWrCounter 
	(
		.clk(clk),
		.clear(clear),
		.rollover_val(img_width),
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
		img_width = imageWidth;
		exp_value = '0;
		$info("Initializing system. img_width defined as %d", img_width);
		clock(1);

		clear = 1'b1;
		clock(1);
		clear = 1'b0;
		assert(value == exp_value) else $error("Clear did not reset value");
		assert(rollover_flag == 1'b0) else $error("Clear did not reset ro_flag");
		
		for(exp_value = '0; exp_value < img_width - 1;) 
		begin
			clock(3);
			count_enable = 1'b1; 
			clock(1);
			count_enable = 1'b0;
			exp_value = exp_value + 1;	// increment here since count_enable just pulsed
			assert(value == exp_value) else $error("value(%d) != %d", value, exp_value);
			assert(rollover_flag == 1'b0) else $error("rollover_flag != 0");
		end

		// when exp_value == img_width
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
