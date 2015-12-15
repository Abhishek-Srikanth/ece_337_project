module rggb
  (
   input wire [7:0] wb_1,
   input wire [7:0] wb_2,
   input wire [7:0] wb_3,
   input wire [7:0] wb_4,
   input wire row,
   input wire col,
   output reg [31:0] out
   );

   reg [7:0] R;
   reg [7:0] G1;
   reg [7:0] G2;
   reg [7:0] B;
   
   assign out = {R, G1, G2, B};
   
   always_comb
    begin: MUX
	{R, G1, G2, B} = '0;
	
	if(!row == 1'b0 && col == 1'b0)
	     {R, G1, G2, B} = {wb_1, wb_2, wb_3, wb_4};
	if(!row == 1'b0 && col == 1'b1)
	     {G1, R, B, G2} = {wb_1, wb_2, wb_3, wb_4};
	if(!row == 1'b1 && col == 1'b0)
	     {G1, B, R, G2} = {wb_1, wb_2, wb_3, wb_4};
	if(!row == 1'b1 && col == 1'b1)
	     {B, G1, G2, R} = {wb_1, wb_2, wb_3, wb_4};
    end // block: MUX

endmodule // rggb
