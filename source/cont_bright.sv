// $Id: $
// File name:   cont_bright.sv
// Created:     12/13/2015
// Author:      Nikhil Ghanta
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: contrast and brightness

module cont_bright
  (
   input wire [31:0] in,
   input wire alpha,
   input wire beta,
   output reg [31:0] result
   );

   reg [7:0] 	     pix_1;
   reg [7:0] 	     pix_2;
   reg [7:0] 	     pix_3;
   reg [7:0] 	     pix_4;
   reg [7:0] 	     pix1_1;
   reg [7:0] 	     pix2_1;
   reg [7:0] 	     pix3_1;
   reg [7:0] 	     pix4_1;
   
   always_comb
     begin
	pix_1 = in[31:24];
	pix1_1 = (alpha*pix_1) + beta;
	pix_2 = in[23:16];
	pix2_1 = (alpha*pix_2) + beta;
	pix_3 = in[15:8];
	pix3_1 = (alpha*pix_3) + beta;
	pix_4 = in[7:0];
	pix4_1 = (alpha*pix_4) + beta;

	result = {pix1_1, pix2_1, pix3_1, pix4_1};
	
	
     end // always_comb begin

endmodule // cont_bright
