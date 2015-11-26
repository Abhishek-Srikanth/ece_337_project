// $Id: $
// File name:   address_calc
// Created:     11/25/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Module to calculate address for SRAM and SDRAM

module address_calc
(
	input wire [12:0] width,
	input wire [12:0] height,
	input wire [25:0] start_address_sdram,
	input wire [25:0] finish_address_sdram,
	input wire [2:0] mode,
	output reg [25:0] sdram_address,
	output reg [25:0] sram_address
);



endmodule
