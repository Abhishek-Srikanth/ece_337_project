// $Id: $
// File name:   flex_counter.sv
// Created:     9/15/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Flexible and Scalable counter with controlled roll-over

module flex_counter
#(
	parameter NUM_CNT_BITS = 4
)
(
	input wire clk,
	input wire n_rst,
	input wire clear,
	input wire count_enable,
	input wire [NUM_CNT_BITS - 1 : 0] rollover_val,
	output reg [NUM_CNT_BITS - 1 : 0] count_out,
	output reg rollover_flag
);

reg [NUM_CNT_BITS - 1 : 0] count_plus_one;
reg rollover_flag_buffer;

always_ff @(posedge clk, negedge n_rst)
begin
	if(n_rst == 1'b0)
	begin
		count_out <= '0;
		rollover_flag <= '0;
	end
	else
	begin
		if(clear == 1'b1)
		begin
			count_out <= '0;
			rollover_flag <= '0;
		end
		else
		begin
			if(count_enable == 1'b1)
			begin
				count_out <= count_plus_one;
				rollover_flag <= rollover_flag_buffer;
			end
			else
				count_out <= count_out;
			// rollover_flag <= rollover_flag_buffer;
		end
	end
end

always_comb
begin
	count_plus_one = count_out + 1;
	rollover_flag_buffer = 1'b0;
	if(count_plus_one == rollover_val)
	begin
		count_plus_one = '0;
		if(clear == 1'b0)
		begin
			rollover_flag_buffer = 1'b1;
		end
	end
end

endmodule
