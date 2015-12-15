// $Id: $
// File name:   tb_horblur.sv
// Created:     12/15/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: test bench for horizontal blur

`timescale 1ns / 100ps

module tb_horblur
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
	
	reg wb_en;
	reg [2:0] wb_mode;
	reg [31:0] in;
	reg [31:0] out;

	integer i; // counter variable

	// DUT port mapping
	horblur horizontalBlurFilter
	(
		.clk		(clk),
		.n_rst		(n_rst),
		.wb_en		(wb_en),
		.mode_wb	(wb_mode),
		.data		(in),	// 31:0
		.blur		(out)	// 31:0
	);

	task clock(input integer noClocks);
		for(i = 0; i < noClocks; i=i+1)
		begin
			@(negedge clk);
		end
	endtask

	initial
	begin
		wb_mode = 3'b101;
		wb_en = 1'b0;
		in = '0;
		n_rst = 1'b1;
		clock(1);
		n_rst = 1'b0;
		clock(1);
		n_rst = 1'b1;
		assert(out == 32'hff000000) else $error("reset not working properly");
		clock(2);
		assert(out == 32'hff000000) else $error("reset not working properly");
		in = '1;
		#2
		assert(out == {8'hff, 8'd63, 8'd63, 8'd63}) else $error("output is %d", out);
		clock(1);
		assert(out == {8'hff, 8'd63, 8'd63, 8'd63}) else $error("output is %d", out);
		
		wb_en = 1'b1;
		clock(1);
		wb_en = 1'b0;
		assert(out == {8'hff, 8'd127, 8'd127, 8'd127}) else $error("output is %d", out);
		clock(1);

		wb_en = 1'b1;
		clock(1);
		wb_en = 1'b0;
		assert(out == {8'hff, 8'd191, 8'd191, 8'd191}) else $error("output is %d", out);
		clock(1);

		wb_en = 1'b1;
		clock(1);
		wb_en = 1'b0;
		assert(out == {8'hff, 8'hff, 8'hff, 8'hff}) else $error("output is %d", out);
		clock(2);
		$info("mudichaachu");


	end

endmodule

