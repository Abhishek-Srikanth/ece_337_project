// $Id: $
// File name:   sram_simulation.sv
// Created:     12/13/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: A simulation of the sram for testing working of chip
// Note: this sram will not be run on the FPGA

module sram_simulation
(
	input wire clk,
	// input wire n_rst,		// what would sram need to reset? nothing
	input wire [31:0] sdram_data,
	input wire [31:0] wb_data,
	input wire [25:0] address,	// @Tiger to check size
	input wire mode, 			// read/write
	input wire addrCalcMode,
	input wire enable,
	output reg [31:0] out_data,
	output reg dataReadValid

);
/*
* In this sram simulation, we are using one, very large sram to cache both rows of data
* Logically, each row contains 12:0 elements max, but we are addressing until 25:0 [[ @Tiger: check and change ]]
* The mode tells if it is a read or a write operation on sram (read is 1 ; write is 0)
* The addrCalcMode tells which data line to write into from (1 is sdram_data ; 0 is wb_data)
* out_data contains data of last read value
* All actions take place only on an enable
*/
reg [31:0] memory [0:1<<26]; // creates 2^26 blocks, each 32 bits large

always @(posedge clk)
begin
	if(enable == 1'b1)
	begin
		if(mode == 1'b0)	// write operation
		begin
			if(addrCalcMode == 1'b1)	// rowCache (from SDRAM buffer)
			begin
				memory[address] = sdram_data;
			end
			else						// outputArr (from Window buffer)
			begin
				memory[address] = wb_data;
			end
		end
		else				// read operation
		begin
			out_data = memory[address];
			dataReadValid = 1'b1;
		end
	end
	else
	begin
		dataReadValid = 1'b0;
	end
end

endmodule
