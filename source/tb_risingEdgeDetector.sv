// $Id: $
// File name:   tb_risingEdgeDetector.sv
// Created:     12/13/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Test bench for rising edge detector


`timescale 1ns/100ps

module tb_risingEdgeDetector
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
	
	integer i;
	reg startData, start_flag;

	// DUT port mapping
	risingEdgeDetector startsTheChip
	(
		.clk 		(clk),
		.startData 	(startData),
		.start_flag	(start_flag)
	);

	initial
	begin
		startData = 1'b0;
		@(negedge clk);
		@(negedge clk);
		startData = 1'b1;
		@(negedge clk);
		assert(start_flag == 1'b1) else $error("Expected start_flag to pulse high here");
		@(negedge clk);
		assert(start_flag == 1'b0) else $error("Expected start_flag's pulse to go low here");
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		$info("mudinjaachu");

	end

endmodule
