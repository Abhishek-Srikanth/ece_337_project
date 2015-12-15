module horblur
#(parameter N_POWER = 3)
  (
   input wire 	    clk,
   input wire 	    nrst,
   
   input wire [31:0] data,
   output reg [31:0] blur
   );
  
   reg [7:0] R_1;
   reg [7:0] R_2;
   reg [7:0] R_3;
   reg [7:0] R_4;
   reg [7:0] G1_1;
   reg [7:0] G1_2;
   reg [7:0] G1_3;
   reg [7:0] G1_4;
   reg [7:0] G2_1;
   reg [7:0] G2_2;
   reg [7:0] G2_3;
   reg [7:0] G2_4;
   reg [7:0] B_1;
   reg [7:0] B_2;
   reg [7:0] B_3;
   reg [7:0] B_4;

   always_ff @ (posedge clk) begin
    if (!nrst) begin
        R_1
        R_2
        R_3
        R_4
        G1_1;
        G1_2;
        G1_3;
        G1_4;
        G2_1;
        G2_2;
        G2_3;
        G2_4;
        B_1;
        B_2;
        B_3;
        B_4;
    end 
    else begin
    
    end
   end 
   
endmodule 
