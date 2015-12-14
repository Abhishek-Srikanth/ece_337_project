// $Id: $
// File name:   tb_delaySingleClock.sv
// Created:     12/14/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: test bench for delay single clock

`timescale 1ns/100ps

module tb_delaySingleClock
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

	// we give these values to DUT
	reg n_rst;
	reg [31:0] in;
	reg [31:0] out;


	// DUT port mapping
	delaySingleClock singleClockDelay
	(
		.clk	(clk),
		.n_rst	(n_rst),
		.in		(in),
		.out	(out)
	);

	task clock(input integer noClocks);
		for(i = 0; i < noClocks; i=i+1)
		begin
			@(negedge clk);
		end
	endtask

	initial
	begin
		n_rst = 1'b1;
		in = 32'd10034;
		clock(1);	
		n_rst = 1'b0;
		clock(1);
		n_rst = 1'b1;
		assert(out == '0) else $error("n_reset did not work");
		clock(1);	
		assert(out == in) else $error("delay too slow");
		clock(4);

		assert(out == in) else $error("delay too slow");
		in = 32'd99009900;
		clock(1);
		assert(out == in) else $error("delay too slow");
		clock(3);
		$info("mudichaachu");
	end

endmodule
