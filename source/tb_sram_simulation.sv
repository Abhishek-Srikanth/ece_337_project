// $Id: $
// File name:   tb_sram_simulation.sv
// Created:     12/13/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Test bench to check if sram simulation is working properly.
`timescale 1ns / 100ps

module tb_sram_simulation
();

	localparam CLK_PERIOD = 20;

	reg clk;
	always
	begin
		clk = 1'b0;
		#(CLK_PERIOD/2.0);
		clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end

	reg [31:0] sdram_data;
	reg [31:0] wb_data;
	reg [25:0] address;
	reg mode, enable, addrCalcMode;
	reg [31:0] out_data;
	reg dataReadValid;
	integer i;

	// DUT port mapping
	sram_simulation ennodaSRAM
	(
		.clk		(clk),
		.sdram_data	(sdram_data),
		.wb_data	(wb_data),
		.address	(address),
		.mode		(mode),
		.addrCalcMode	(addrCalcMode),
		.enable		(enable),
		.out_data	(out_data),
		.dataReadValid	(dataReadValid)
	);

	task clock(input integer noClocks);
		for(i = 0; i < noClocks; i=i+1)
		begin
			@(negedge clk);
		end
	endtask


	initial
	begin
		sdram_data = {24'd0,8'd99};
		wb_data = {24'd0,8'd99};
		address = 26'd0; 	// rowCache  at 0
							// outputArr at 9000
		addrCalcMode = 1'b1;	// 1 -> rowCache ; 0 -> outputArr
		mode = 1'b0;			// 1 -> read ; 0 -> write
		enable = 1'b0;
		clock(3);	

		enable = 1'b1;
		clock(1);
		enable = 1'b0;
		
		clock(5);
		address = 26'd1;
		sdram_data = 32'd100;
		enable = 1'b1;
		clock(1);
		enable = 1'b0;
		
		clock(5);
		
		address = 26'd9000;
		addrCalcMode = 1'b0;
		enable = 1'b1;
		clock(1);
		enable = 1'b0;

		clock(5);

		address = 26'd9001;
		addrCalcMode = 1'b0;
		wb_data = 32'd100;
		enable = 1'b1;
		clock(1);
		enable = 1'b0;

		clock(5);

		mode = 1'b1;	// read from here on
		address = 26'd0;// rowCache first
		addrCalcMode = 1'b1;// rowCache mode
		enable = 1'b1;
		clock(1);
		enable = 1'b0;
		assert(dataReadValid == 1'b1) else $error("data read valid not high");
		assert(out_data == 32'd99) else $error("expected value of 99 not read");
		clock(1);
		assert(dataReadValid == 1'b0) else $error("data read valid should pulse low by now");
		clock(5);

		address = 26'd1;// rowCache
		enable = 1'b1;
		clock(1);
		enable = 1'b0;
		assert(dataReadValid == 1'b1) else $error("data read valid not high");
		assert(out_data == 32'd100) else $error("expected value of 99 not read");
		clock(1);
		assert(dataReadValid == 1'b0) else $error("data read valid should pulse low by now");
		clock(5);

		mode = 1'b1;	// read from here on
		address = 26'd9000;// outputArr
		addrCalcMode = 1'b0;// outputArr mode
		enable = 1'b1;
		clock(1);
		enable = 1'b0;
		assert(dataReadValid == 1'b1) else $error("data read valid not high");
		assert(out_data == 32'd99) else $error("expected value of 99 not read");
		clock(1);
		assert(dataReadValid == 1'b0) else $error("data read valid should pulse low by now");
		clock(5);

		address = 26'd9001;// rowCache
		enable = 1'b1;
		clock(1);
		enable = 1'b0;
		assert(dataReadValid == 1'b1) else $error("data read valid not high");
		assert(out_data == 32'd100) else $error("expected value of 99 not read");
		clock(1);
		assert(dataReadValid == 1'b0) else $error("data read valid should pulse low by now");
		clock(5);

		$info("mudichaachu");
		$stop();
	end

endmodule
