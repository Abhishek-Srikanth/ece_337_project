// $Id: $
// File name:   tb_filterTopLevel.sv
// Created:     12/14/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: test bench for filter top level
`timescale 1ns/100ps

module tb_filterTopLevel
();

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
	reg n_rst;
	reg [1:0] mode;
	reg [31:0] in;
	reg [31:0] out;
	reg [7:0] beta;

// DUT port mapping
filterTopLevel theFilterTopLevel
(
	.clk			(clk),
	.n_rst			(n_rst),
	.in				(in),
	.filterMode		(mode),
	.brightnessCoeff(beta),
	.result			(out)
);

	task clock(input integer noClocks);
		for(i = 0; i < noClocks; i=i+1)
		begin
			@(negedge clk);
		end
	endtask

	initial
	begin
		beta = 8'h09;
		mode = 2'b00;
		in = 32'h21343612;
		#2
		assert(out == 32'hFF213512) else $error("debayer not working correctly");
		clock(2);
		in = 32'h34f9f0ff;
		#2
		assert(out == 32'hFF34f4ff) else $error("debayer not working correctly");
		clock(1);
		mode = 2'b01;
		clock(1);
		in = 32'h00000000;
		#2
		assert(out == 32'hFF090909) else $error("brightness not increasing");
		
		clock(1);
		in = 32'hfafa00fa;
		#2
		assert(out == 32'hffffffff) else $error("brightness not increasing");
		
		clock(2);
		$info("mudinkaachu");
	end

endmodule
