module debayer
  (
   input wire [7:0] R,
   input wire [7:0] G1,
   input wire [7:0] G2,
   input wire [7:0] B,
   output reg [31:0] ARGB
   );

   reg [8:0] G_sum;
   reg [7:0] G_average;
   
   always_comb
   begin: DEBAYER
    G_sum = G1 + G2;
    G_average = G_sum[8:1];
    ARGB = {8'd255, R, G_average, B};
   end 

endmodule 
