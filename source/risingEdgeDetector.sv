// $Id: $
// File name:   risingEdgeDetector.sv
// Created:     12/13/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Detects rising edge of start flag

module risingEdgeDetector
(
	input wire clk,
	input wire startData,
	output wire start_flag
);

reg v1,v2;

always_ff @(posedge clk)
begin
	v2 <= v1;
	v1 <= startData;
end

// start_flag high when v2 = 0 and v1 = 1
// This is similar to the rising edge
assign start_flag = !v2 & v1;

endmodule
