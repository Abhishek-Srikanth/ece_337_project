// $Id: $
// File name:   cont_bright.sv
// Created:     12/13/2015
// Author:      Nikhil Ghanta
// Lab Section: 337-04
// Version:     1.1 Style change
// Description: contrast and brightness

/*
* To check if clock in b/w is required
* Alpha value < 1 ; must see if this multiplication can do 
* @Nikhil @Tiger please check above
*
* Decided to remove alpha (contrast feature) since alpha <= 1
* Floating point multiplication is a complication we don't need right now
*/

module cont_bright
(
	input wire [31:0] in,
   	//input wire alpha,
   	input wire beta,
   	output wire [31:0] result
);

   	wire [7:0] 	     pix_1;
   	wire [7:0] 	     pix_2;
   	wire [7:0] 	     pix_3;
   	wire [7:0] 	     pix_4;
   	assign pix_1 = in[31:24];
   	assign pix_2 = in[23:16];
   	assign pix_3 = in[15:8];
   	assign pix_4 = in[7:0];

   	wire [7:0] 	     pix1_1;
   	wire [7:0] 	     pix2_1;
   	wire [7:0] 	     pix3_1;
   	wire [7:0] 	     pix4_1;
	assign pix1_1 = /*alpha */ pix_1 + beta;  
 	assign pix2_1 = /*alpha */ pix_2 + beta;  
	assign pix3_1 = /*alpha */ pix_3 + beta;  
	assign pix4_1 = /*alpha */ pix_4 + beta;  
	assign result = {pix1_1, pix2_1, pix3_1, pix4_1};

endmodule // cont_bright
