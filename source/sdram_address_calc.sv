// $Id: $
// File name:   sdram_address_calc.sv
// Created:     11/25/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Address calculator for just the SDRAM for both read and write operations

module sdram_address_calc
(
	input wire clk,
	input wire n_rst,
	input wire mode, // 1 -> read from SDRAM _&_ 0 -> write to SDRAM
	input wire enable,
	input wire load,
	input wire [25:0] start_address,
	input wire [25:0] finish_address,
	output wire [25:0] sdram_address
);

reg [25:0] start_address_reg;
reg [25:0] finish_address_reg;
reg [25:0] start_address_nextState;
reg [25:0] finish_address_nextState;

// output logic
assign sdram_address = (mode == 1'b1) ? start_address_reg : finish_address_reg;

always_ff @(posedge clk, negedge n_rst)
begin
	if(n_rst == 1'b0)
	begin
		start_address_reg <= start_address;
		finish_address_reg <= finish_address;
	end
	else
	begin
		if(load == 1'b1)
		begin
			start_address_reg <= start_address;
			finish_address_reg <= finish_address;
		end
		else
		begin
			start_address_reg <= start_address_nextState;
			finish_address_reg <= finish_address_nextState;
		end
	end
end

always_comb
begin : nextStateLogic
	if(enable == 1)
	begin
		if(mode == 1'b0)
		begin
			start_address_nextState = start_address_reg;
			finish_address_nextState = finish_address_reg + 1;
		end
		else
		begin
			start_address_nextState = start_address_reg + 1;
			finish_address_nextState = finish_address_reg;
		end
	end
	else
	begin
		start_address_nextState = start_address_reg;
		finish_address_nextState = finish_address_reg;
	end
end

endmodule
