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
	input wire [2:0] wb_mode,
	input wire wb_en,
	input wire [31:0] white,

	output reg [31:0] result
);

reg [31:0] brightnessResult;
reg [31:0] debayerResult;
reg [31:0] horBlurResult;
reg [31:0] whiteBalanceResult;

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
		result = horBlurResult;
	end
	else if(filterMode == 2'b11)
	begin
		result = whiteBalanceResult;
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

horblur horizontalBlur
(
   	.clk		(clk),
   	.n_rst		(n_rst),
  	.wb_en		(wb_en),
	.mode_wb	(wb_mode), // 2:0
	.data		(debayerResult),	// 31:0

   	.blur		(horBlurResult)	// 31:0
);

whiteBalance ennodaWhiteBalance
(
	.in(debayerResult),
	.white(white),

	.out(whiteBalanceResult)
);

endmodule
