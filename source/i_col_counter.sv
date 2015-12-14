// $Id: $
// File name:   i_col_counter.sv
// Created:     11/21/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Column Counter for image indexing

module i_col_counter
(
	input wire clk, 
	input wire clear,
	input wire [12:0] rollover_val,
	input wire count_enable,

	output wire rollover_flag,
	output wire [12:0] value
);

flex_counter #(.NUM_CNT_BITS(13)) colCounter
(
	.clk			(clk),
	//.n_rst			(), // consider removing n_rst from flex counter
	.clear			(clear),
	.count_enable	(count_enable),
	.rollover_val	(rollover_val - 13'd1),

	.count_out		(value),
	.rollover_flag	(rollover_flag)
);

endmodule
