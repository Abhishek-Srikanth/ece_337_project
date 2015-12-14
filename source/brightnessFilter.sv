// $Id: $
// File name:   brightnessFilter.sv
// Created:     12/13/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     2.0 Major code change
// Description: brightness only

/*
* To check if clock in b/w is required
* Alpha value < 1 ; must see if this multiplication can do 
* @Nikhil @Tiger please check above
*
* Decided to remove alpha (contrast feature) since alpha <= 1
* Floating point multiplication is a complication we don't need right now
*/

module brightnessFilter
(
	input wire [31:0] in,
   	//input wire alpha,
   	input wire [7:0] beta,
   	output wire [31:0] result
);

   	wire [8:0]	red;
   	wire [8:0]	green;
   	wire [8:0]	blue;
	assign red 		= in[31:24] + beta;  
 	assign green	= in[23:16] + beta; // only one of 2 greens is used
										// their values usually very close
	assign blue		= in[7:0] + beta;
	//assign result = {8'hFF, red, green, blue};
	// NOTE: switch to above if timing is an issue
	assign result = { 8'hFF,( red[8] == 1'b1 ? 8'hFF : red[7:0] ) ,  
							( green[8] == 1'b1 ? 8'hFF : green[7:0] ) ,  
							( blue[8] == 1'b1 ? 8'hFF : blue[7:0] ) 
					};

endmodule
