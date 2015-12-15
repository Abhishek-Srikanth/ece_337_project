// $Id: $
// File name:   filterTopLevel.sv
// Created:     12/14/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Top level for all filters.

module filterTopLevel
(
	input wire clk,
	input wire n_rst,
	input wire [31:0] in,
	input wire [1:0] filterMode,		// from PCIe status registers
	input wire [7:0] brightnessCoeff,
	output reg [31:0] result
);

reg [31:0] brightnessResult;
reg [31:0] debayerResult;

always_comb
begin
	if(filterMode == 2'b00)
	begin
		result = debayerResult;
	end
	else if(filterMode == 2'b01)
	begin
		result = brightnessResult;
	end
	else if(filterMode == 2'b10)
	begin
		result = '0;
	end
	else if(filterMode == 2'b11)
	begin
		result = '0;
	end
	else
		result = '1;
end

// port mapping to brightness Filter
brightnessFilter brighter
(
	.in		( {debayerResult[23:16], debayerResult[15:8], debayerResult[15:8], debayerResult[7:0]} ),
	.beta	(brightnessCoeff),
	.result	(brightnessResult)
);

// port mapping to debayer Filter
debayer debayerModule
(
	.in		(in),
	.out	(debayerResult)
);

endmodule
