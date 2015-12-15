// $Id: $
// File name:   horblur.sv
// Created:     12/15/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Horizontal Blur Filter


module horblur
(
   	input wire 	    	clk,
   	input wire 	    	n_rst,
  	input wire 			wb_en,
	input wire [2:0]	mode_wb,
	input wire [31:0] 	data,

   	output reg [31:0] 	blur
);
  
reg [7:0] R_1;
reg [7:0] R_2;
reg [7:0] R_3;
reg [7:0] R_4;
reg [7:0] R_5;
reg [7:0] R_6;
reg [7:0] R_7;


reg [7:0] G_1;
reg [7:0] G_2;
reg [7:0] G_3;
reg [7:0] G_4;
reg [7:0] G_5;
reg [7:0] G_6;
reg [7:0] G_7;

reg [7:0] B_1;
reg [7:0] B_2;
reg [7:0] B_3;
reg [7:0] B_4;
reg [7:0] B_5;
reg [7:0] B_6;
reg [7:0] B_7;

wire [10:0] R_sum = R_1 + R_2 + R_3 + R_4 + R_5 + R_6 + R_7 + data[23:16];
wire [10:0] G_sum = G_1 + G_2 + G_3 + G_4 + G_5 + G_6 + G_7 + data[15:8];
wire [10:0] B_sum = B_1 + B_2 + B_3 + B_4 + B_5 + B_6 + B_7 + data[7:0];

assign blur = { 8'hFF, R_sum[10:3], G_sum[10:3], B_sum[10:3] };

always_ff @ (posedge clk) 
begin
	if (n_rst == 1'b0)
	begin
        R_1 <= '0;
        R_2	<= '0;
        R_3 <= '0;
        R_4 <= '0;
        R_5	<= '0;
        R_6 <= '0;
        R_7 <= '0;


        G_1 <= '0;
        G_2 <= '0;
        G_3 <= '0;
        G_4 <= '0;
        G_5	<= '0;
        G_6 <= '0;
        G_7 <= '0;


	    B_1 <= '0;
        B_2 <= '0;
        B_3 <= '0;
        B_4 <= '0;
        B_5	<= '0;
        B_6 <= '0;
        B_7 <= '0;


    end 
    else
	begin
    	if(wb_en == 1'b1 && mode_wb == 3'b101)
		begin
			R_1 <= data[23:16];
	        R_2	<= R_1;
	        R_3 <= R_2;
    	    R_4 <= R_3;
	        R_5	<= R_4;
	        R_6 <= R_5;
    	    R_7 <= R_6;

        	G_1 <= data[15:8];
	        G_2 <= G_1;
    	    G_3 <= G_2;
        	G_4 <= G_3;
	        G_5	<= G_4;
	        G_6 <= G_5;
    	    G_7 <= G_6;


		    B_1 <= data[7:0];
    	    B_2 <= B_1;
        	B_3 <= B_2;
	        B_4 <= B_3;
	        B_5	<= B_4;
	        B_6 <= B_5;
    	    B_7 <= B_6;
		end
		else
		begin
	        R_1 <= R_1;
    	    R_2	<= R_2;
        	R_3 <= R_3;
	        R_4 <= R_4;
	        R_5	<= R_5;
	        R_6 <= R_6;
    	    R_7 <= R_7;

    	    G_1 <= G_1;
        	G_2 <= G_2;
	        G_3 <= G_3;
    	    G_4 <= G_4;
        	G_5 <= G_5;
	        G_6 <= G_6;
    	    G_7 <= G_7;

	    	B_1 <= B_1;
	        B_2 <= B_2;
    	    B_3 <= B_3;
        	B_4 <= B_4;
	        B_5 <= B_5;
    	    B_6 <= B_6;
        	B_7 <= B_7;
		end
	end
end 
   
endmodule 
