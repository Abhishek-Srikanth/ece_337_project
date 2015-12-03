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

   always_comb
     begin: MUX
	out = 'x;
	
	if(row == 1'b0 && col == 1'b0)
	  begin
	     out = {wb_1, wb_2, wb_4, wb_3};
	  end
	if(row == 1'b0 && col == 1'b1)
	  begin
	     out = {wb_2, wb_1, wb_3, wb_4};
	  end
	if(row == 1'b1 && col == 1'b0)
	  begin
	     out = {wb_2, wb_4, wb_3, wb_1};
	  end
	if(row == 1'b1 && col == 1'b1)
	  begin
	     out = {wb_1, wb_3, wb_4, wb_2};
	  end
     end // block: MUX

endmodule // rggb
