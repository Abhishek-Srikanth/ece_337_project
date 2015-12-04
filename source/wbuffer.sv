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

   reg [7:0] 	    wb_1;
   reg [7:0] 	    wb_2;
   reg [7:0] 	    wb_3;
   reg [7:0] 	    wb_4;
   reg 		    move_chk;
   

   typedef enum     logic [2:0] {CHECK, SRAM1, SRAM2, SDRAM3, SDRAM4, MOVE} states;
   states currstate, nextstate;

   always_ff @ (posedge clk, negedge nrst)
     begin
	if(nrst == 0)
	  begin
	     currstate <= CHECK;
	  end
	else
	  begin
	     currstate <= nextstate;
	  end

     end // always_ff @
   
   
   always_comb
     begin
	wb_1 = 8'b00000000;
	wb_2 = 8'b00000000;
	wb_3 = 8'b00000000;
	wb_4 = 8'b00000000;
	nextstate = currstate;
	move_chk = 0;
	
	case(currstate)
	  CHECK : begin
	     if(enable_CU == 1 && mode == 001)
	       begin
		  nextstate = SRAM1;
	       end
	     else if(enable_CU == 1 && mode == 010)
	       begin
		  nextstate = SRAM2;
	       end
	     else if(enable_CU == 1 && mode == 011)
	       begin
		  nextstate = SDRAM3;
	       end
	     else if(enable_CU == 1 && mode == 100)
	       begin
		  nextstate = SDRAM4;
	       end
	     else if(enable_CU == 1 && mode == 101 && move_chk == 1)
	       begin
		  nextstate = MOVE;
	       end
	     else
	       begin
		  nextstate = CHECK;
	       end
	     
	  end // case: CHECK
	  
	  SRAM1 : begin
	     wb_1 = data;
	     nextstate = CHECK;
	     
	  end

	  SRAM2 : begin
	     wb_2 = data;
	     nextstate = CHECK;

	  end

	  SDRAM3 : begin
	     wb_3 = data_read;
	     nextstate = CHECK;

	  end

	  SDRAM4 : begin
	     wb_4 = data_read;
	     nextstate = CHECK;
	     move_chk = 1; //makes sure that all the registers in the window buffer are filled (i'm assuming that 4th register is the last to get filled so checking here)
	     
	  end

	  MOVE : begin
	     wb_1 = wb_2;
	     wb_3 = wb_4;
	     nextstate = CHECK;

	  end

	endcase // case (currstate)

     end // always_comb

endmodule // wbuffer
