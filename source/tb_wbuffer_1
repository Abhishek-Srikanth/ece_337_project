`timescale 1ns / 100ps

module tb_wbuffer
  ();

   localparam CLK_PERIOD = 10;

   reg clk;

   always
     begin
	clk = 1'b0;
	#(CLK_PERIOD/2.0);
	clk = 1'b1;
	#(CLK_PERIOD/2.0);
     end

   reg tb_nrst;
   reg [2:0] tb_mode;
   reg tb_enable_CU;
   reg [7:0] tb_data;
   reg [7:0] tb_data_read;
   reg [7:0] tb_1;
   reg [7:0] tb_2;
   reg [7:0] tb_3;
   reg [7:0] tb_4;

   integer   i;
   
   //DUT port mapping
   wbuffer WINDOW(.clk(clk), .nrst(tb_nrst), .enable_CU(tb_enable_CU), .mode(tb_mode), .data_read(tb_data_read), .data(tb_data), .w_1(tb_1), .w_2(tb_2), .w_3(tb_3), .w_4(tb_4));

   task clock(input integer noClocks);
		for(i = 0; i < noClocks; i=i+1)
		begin
			@(negedge clk);
		end
	endtask
   
   initial
     begin
	tb_nrst = 1'b1;
	tb_data = 8'd1;
	tb_enable_CU = 1'b1;
	tb_mode = 3'b001;
	clock(1);
	assert(tb_1 == tb_data) else $error("Wb_1 incorrectly asserted from SRAM");
	tb_enable_CU = 1'b0;
	clock(5);
	tb_data = 8'd2;
	tb_enable_CU = 1'b1;
	tb_mode = 3'b010;
	clock(1);
	assert(tb_2 == tb_data) else $error("Wb_2 incorrectly asserted from SRAM");
	tb_enable_CU = 1'b0;
	clock(5);
	tb_data_read = 8'd3;
	tb_enable_CU = 1'b1;
	tb_mode = 3'b011;
	clock(1);
	
	assert(tb_3 == tb_data_read) else $error("Wb_3 incorrectly asserted from SDRAM");
	tb_enable_CU = 1'b0;
	clock(5);
	tb_data_read = 8'd4;
	tb_enable_CU = 1'b1;
	tb_mode = 3'b100;
	clock(1);
	
	assert(tb_4 == tb_data_read) else $error("Wb_4 incorrectly asserted from SDRAM");
	tb_enable_CU = 1'b0;
	clock(5);
	tb_enable_CU = 1'b1;
	tb_mode = 3'b101;
	clock(1);
	assert(tb_1 == tb_2) else $error("Move from Wb_2 to Wb_1 not executed");
	assert(tb_3 == tb_4) else $error("Move from Wb_4 to Wb_3 not executed");
	tb_enable_CU = 1'b0;
	tb_mode = 3'b000;
        $stop;
	
     end // initial begin

endmodule // tb_wbuffer
