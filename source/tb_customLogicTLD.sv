// $Id: $
// File name:   tb_customLogicTLD.sv
// Created:     12/14/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: test bench for top level design

`timescale 1ns/100ps

module tb_customLogicTLD
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
	
integer i;
reg n_rst; 
reg startControlRegister;
reg sdram_datareadvalid;
reg [12:0] imageWidth;
reg [12:0] imageHeight;
reg [25:0] start_addr_sdram;
reg [25:0] finish_addr_sdram;
reg [1:0] filterMode;
reg [7:0] betaValue;
reg [31:0] data_sdram;

// output of logic to be verified:
reg sdram_read_en;
reg sdram_write_en;
reg finish_flag;
reg [25:0] address_sdram;
reg [31:0] writeData_sdram;

// DUT port mapping
customLogicTLD ennodaCustomLogic
(
	.clk						(clk),
	.n_rst						(n_rst),
	.startControlRegister		(startControlRegister),
	.imageWidth					(imageWidth),		// 12:0
	.imageHeight				(imageHeight),		// 12:0
	.start_addr_sdram			(start_addr_sdram),	// 25:0
	.finish_addr_sdram			(finish_addr_sdram),// 25:0
	.filterMode					(filterMode),		// 1:0
	.betaValue					(betaValue),		// 7:0
	.data_sdram					(data_sdram),		// 31:0
	.sdram_datareadvalid		(sdram_datareadvalid),

	.sdram_read_en				(sdram_read_en),
	.sdram_write_en				(sdram_write_en),
	.address_sdram				(address_sdram), 	// 25:0
	.writeData_sdram			(writeData_sdram),	// 31:0
	.finish_flag				(finish_flag)
);

task clock(input integer noClocks);
	for(i = 0; i < noClocks; i=i+1)
	begin
		@(negedge clk);
	end
endtask

task initialize();
	n_rst = 1'b1;
	startControlRegister = 1'b0;
	sdram_datareadvalid = 1'b0;
	start_addr_sdram = '0;	// read and write address
	finish_addr_sdram = '0;	// of the image is the same
	filterMode = 2'b00;		// general bayer filter (nothing special)
	betaValue = 8'd20;		// Not used because of betaValue
	data_sdram = '0;		// doesnt matter right now
endtask

initial
begin
	initialize();
	clock(1);

end

endmodule
