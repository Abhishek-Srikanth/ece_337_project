// $Id: $
// File name:   delaySingleClock.sv
// Created:     12/14/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: module to delay by a single clock

module delaySingleClock
(
	input wire clk,
	input wire n_rst,
	input wire [31:0] in,

	output reg [31:0] out
);

always_ff @(posedge clk, negedge n_rst)
begin
	if(n_rst == 1'b0)
	begin
		out <= '0;
	end
	else
	begin
		out <= in;
	end
end

endmodule
