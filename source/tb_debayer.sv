// $Id: $
// File name:   tb_debayer.sv
// Created:     12/13/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: debayer module test bench
`timescale 1ns/100ps

module tb_debayer
();

reg [31:0] in;
reg [31:0] out;

// DUT port mapping 
debayer ennodaDebayer
(
	.in		(in),
	.out	(out)
);

initial
begin
	in = {8'h00, 8'h00, 8'h00, 8'h00};
	#2
	assert(out == {8'hFF, 8'h00, 8'h00, 8'h00} ) else $error("output is not correct");
	#10

	in = {8'h38, 8'h21, 8'h21, 8'hab};
	#2
	assert(out == {8'hFF, 8'h38, 8'h21, 8'hab} ) else $error("output is not correct");
	#10

	in = {8'hfa, 8'd210, 8'd220, 8'haf};
	#2
	assert(out == {8'hFF, 8'hfa, 8'd215, 8'haf} ) else $error("output is not correct");
	#10

	in = {8'h12, 8'h00, 8'd255, 8'h31};
	#2
	assert(out == {8'hFF, 8'h12, 8'd127, 8'h31} ) else $error("output is not correct");
	$info("mudichaachu");	
end

endmodule
