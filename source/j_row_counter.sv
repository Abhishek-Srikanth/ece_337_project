// $Id: $
// File name:   j_row_counter.sv
// Created:     11/21/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Row Counter for image indexing

module j_row_counter
(
	input wire clk, 
	input wire clear,
	input wire [12:0] rollover_val,
	input wire count_enable,

	output wire rollover_flag,
	output wire [12:0] value
);

flex_counter #(.NUM_CNT_BITS(13)) rowCounter
(
	.clk			(clk),
	// n_rst to be removed from flex_counter
	.clear			(clear),
	.count_enable	(count_enable),
	.rollover_val	(rollover_val - 13'd1),

	.count_out		(value),
	.rollover_flag	(rollover_flag)
);

endmodule
