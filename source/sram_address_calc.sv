// $Id: $
// File name:   sram_address_calc.sv
// Created:     11/26/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Address Calc module for SRAM operations

module sram_address_calc
(
	input wire clk,	
	input wire n_rst,
	input wire clear,
	input wire mode, // 1 -> rowCache   is selected
					 // 0 -> outputAddr is selected
	input wire enable,

	input wire [12:0] image_width,
	input wire [25:0] sram_rowCacheStart,
	input wire [25:0] sram_outputAddrStart,
	
	output wire [25:0] sram_addr
);

reg [12:0] rowCacheNum;
reg [12:0] outputAddrNum;

assign sram_addr = (mode == 1) ? (rowCacheNum + sram_rowCacheStart) 
							   : (outputAddrNum + sram_outputAddrStart);

flex_counter #(.NUM_CNT_BITS(13)) rowCache
(
	.clk			(clk),
	.n_rst			(n_rst), // consider removing n_rst from flex counter
	.clear			(clear),
	.count_enable	(enable & mode),
	.rollover_val	(image_width),

	.count_out		(rowCacheNum)
	//.rollover_flag	()
);

flex_counter #(.NUM_CNT_BITS(13)) outputAddr
(
	.clk			(clk),
	.n_rst			(n_rst), // consider removing n_rst from flex counter
	.clear			(clear),
	.count_enable	(enable & !mode),
	.rollover_val	(image_width - 13'd1),

	.count_out		(outputAddrNum)
	//.rollover_flag	()
);

endmodule
