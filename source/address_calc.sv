// $Id: $
// File name:   address_calc
// Created:     11/25/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Module to calculate address for SRAM and SDRAM

module address_calc
(
	input wire clk,
	input wire n_rst,

	input wire sram_mode,
	input wire sdram_mode,
	input wire sram_update,
	input wire sdram_update,

	input wire start_flag,
	input wire [12:0] image_width,

	input wire [25:0] start_address_sdram,
	input wire [25:0] finish_address_sdram,
	input wire [25:0] rowCache_address_sram,
	input wire [25:0] output_address_sram,

	output reg [25:0] sdram_address,
	output reg [25:0] sram_address
);

sdram_address_calc sdramAddrCalc
(
	.clk					(clk),
	.n_rst					(n_rst),
	.mode					(sdram_mode),
	.enable					(sdram_update),
	.load					(start_flag),
	.start_address			(start_address_sdram),
	.finish_address			(finish_address_sdram),
	.sdram_address			(sdram_address)
);

sram_address_calc sramAddrCalc
(
	.clk					(clk),
	.n_rst					(n_rst),
	.mode					(sram_mode),
	.enable					(sram_update),
	.clear					(start_flag),
	.image_width			(image_width),
	.sram_rowCacheStart		(rowCache_address_sram),
	.sram_outputAddrStart	(output_address_sram),
	.sram_addr				(sram_address)
);

endmodule
