// $Id: $
// File name:   tb_brightnessFilter.sv
// Created:     12/14/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Test bench for the brightness filter

`timescale 1ns/100ps

module tb_brightnessFilter
();
reg [31:0] in;
reg [31:0] out;
reg [7:0] beta;

// DUT port mapping
brightnessFilter veliccham
(
	.in(in),
	.beta(beta),
	.result(out)
);

initial
begin

	in = {8'h00, 8'h00, 8'h00, 8'h00};
	beta = 8'h10;
	#2
	assert(out == {8'hFF, 8'h10, 8'h10, 8'h10}) else $error("brightnesss not set as expected");
	#5

	in = {8'hfa, 8'h21, 8'h00, 8'ha4};
	beta = 8'h10;
	#2
	assert(out == {8'hFF, 8'hff, 8'h31, 8'hb4}) else $error("brightnesss not set as expected");
	#5

	$info("mudichaachu");
end

endmodule
