// $Id: $
// File name:   debayer.sv
// Created:     12/13/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Module to give RGB pixel output from intensity values

module debayer
(
	input wire [31:0] in,
	output wire [31:0] out
);

wire [8:0] green_sum;
wire [8:0] green_a;
wire [8:0] green_b;
assign green_a = {1'b0, in[23:16]};
assign green_b = {1'b0, in[15:8]};
assign green_sum = green_a + green_b;

// green_sum[8:1] is used since this is an average function and warrants
// a divide by 2. A divide by 2 can be done by shifting right once.
// Taking 8:1 simulates a right shift by 1
assign out = { 8'hFF, in[31:24], green_sum[8:1] , in[7:0] };
// out is ARGB. Change if needed
// change testBench if change made here

endmodule
