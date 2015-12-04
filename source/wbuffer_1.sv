module wbuffer
  (
   input wire 	    clk,
   input wire 	    nrst,
   input wire 	    enable_CU,
   input wire 	    mode,
   input wire [7:0] data_read,
   input wire [7:0] data,
   output reg [7:0] w_1,
   output reg [7:0] w_2,
   output reg [7:0] w_3,
   output reg [7:0] w_4
   );
   //opcode 001 : read from SRAM to wb_1
   //opcode 010 : read from SRAM to wb_2
   //opcode 011 : read from SDRAM to wb_3
   //opcode 100 : read from SDRAM to wb_4
   //opcode 101 : shift from 2->1 and 4->3

   
   reg [7:0] 	    wb_1_curr;
   reg [7:0] 	    wb_1_nxt;
   reg [7:0] 	    wb_2_curr;
   reg [7:0] 	    wb_2_nxt;
   reg [7:0] 	    wb_3_curr;
   reg [7:0] 	    wb_3_nxt;
   reg [7:0] 	    wb_4_curr;
   reg [7:0] 	    wb_4_nxt;
   //reg 		    move_chk;
   
   always_ff @ (posedge clk, negedge nrst)
     begin
	if(nrst == 0)
	  begin
	     wb_1_curr <= 8'b00000000;
	     wb_2_curr <= 8'b00000000;
	     wb_3_curr <= 8'b00000000;
	     wb_4_curr <= 8'b00000000;
	     
	  end
	else
	  begin
	     wb_1_curr <= wb_1_nxt;
	     wb_2_curr <= wb_2_nxt;
	     wb_3_curr <= wb_3_nxt;
	     wb_4_curr <= wb_4_nxt;
	  end
	
     end // always_ff @
   
   
   always_comb
     begin
	wb_1_nxt = wb_1_curr;
	wb_2_nxt = wb_2_curr;
	wb_3_nxt = wb_3_curr;
	wb_4_nxt = wb_4_curr;
	move_chk = 0;
	

	if(enable_CU == 1 && mode == 001)
	  begin
	     wb_1_nxt = data; // checking if opcode is 001 and reading into wb_1 from SRAM
	  end
	else if(enable_CU == 1 && mode == 010)
	  begin
	     wb_2_nxt = data; // checking if opcode is 010 and reading into wb_2 from SRAM
	  end
	else if(enable_CU == 1 && mode == 011)
	  begin
	     wb_3_nxt = data_read; // checking if opcode is 011 and reading into wb_3 from SDRAM
	  end
	else if(enable_CU == 1 && mode == 100)
	  begin
	     wb_4_nxt = data_read; // checking if opcode is 100 and reading into wb_4 from SDRAM
	  end
	else if(enable_CU == 1 && mode == 101)
	  begin
	     wb_1_nxt = wb_2_nxt; // 2->1
	     wb_3_nxt = wb_4_nxt; // 4->3
	     
	  end
	

	
     end // always_comb
   assign w_1 = wb_1_curr;
   assign w_2 = wb_2_curr;
   assign w_3 = wb_3_curr;
   assign w_4 = wb_4_curr;
   
endmodule // wbuffer
