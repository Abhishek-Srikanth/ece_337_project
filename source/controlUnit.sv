// $Id: $
// File name:   controlUnit.sv
// Created:     12/3/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Control Unit of the custom logic chip

module controlUnit
(
	input wire clk,
	input wire n_rst,

	input wire start_flag,
	input wire dataRead_sram,
	input wire dataRead_sdram,
	input wire rollover_i,
	input wire rollover_j,
	input wire rollover_i_wr,
	
	output reg enable_i,
	output reg enable_j,
	output reg enable_i_wr,
	output reg enable_addr_calc_sram,
	output reg enable_addr_calc_sdram,
	output reg enable_WB,
	output reg enable_sram,
	output reg read_en_sdram,
	output reg write_en_sdram,

	output reg mode_addr_calc_sram,
	output reg mode_addr_calc_sdram,
	output reg [2:0] mode_WB,
	output reg mode_sram,

	output reg finish_flag
);

/*
  Window Buffer index:
		| 1 | 2 |
		| 3 | 4 |
*/

typedef enum {
				idle, 						// idle state: waiting for start flag
				firstRow_readSDRAM, 		// sets addr_calc mode ; pulse read_en
				firstRow_writeSRAM, 		// sets addr_calc mode ; pulse read_en ; set SRAM_mode
				firstRow_updateCounters, 	// pulse i_enable ; pulse addr_calc_en
				updateCounter_j,			// pulse j_en (links to finish state)
				firstCol_readSDRAM_1, 		// read for WB_3: set addr_calc mode ; pulse read_en
				firstCol_writeWB_1, 		// write to WB_3: set WB mode ; pulse WB_en
				firstCol_readSDRAM_2, 		// read for WB_1: set addr_calc mode ; set SRAM_mode ; pulse SRAM_en
				firstCol_writeWB_2,			// write to WB_1: set WB mode ; pulse WB_en
				anyCol_readSDRAM, 			// read for WB_4: set addr_col mode ; pulse read_en
				anyCol_writeWB_fromSDRAM, 	// write to WB_4: set WB mode ; pulse WB_en
				anyCol_readSRAM, 			// read for WB_2: set addr_calc mdoe ; set SRAM_mode ; pulse SRAM_en
				anyCol_writeWB_fromSRAM, 	// write to WB_2: set WB mode ; pulse read_en
				writeSRAM_WB3, 				// set addr_calc mode ; set SRAM mode ; pulse SRAM_en
				writeSRAM_outputImg,		// set addr_calc mode ; set SRAM mode ; pulse SRAM_en
				WBShift_updateCounters, 	// set WB_mode ; pulse WB_en ; pulse i_en ; pulse addr_calc_en
				outputImg_readSRAM, 		// set addr_calc mode ; set SRAM mode ; pulse SRAM_en
				outputImg_writeSDRAM,		// set addr_calc mode ; pulse SDRAM write_en
				outputImg_updateCounters,	// pulse i_wr_en ; pulse addr_calc_en
				finish						// set finish_flag
			} States; // not declaring width

States state, nextState;

always_comb
begin : nextStateLogic

	nextState = state;

	case(state)
		idle: 						// idle state: waiting for start flag
		begin

		end
		firstRow_readSDRAM: 		// sets addr_calc mode ; pulse read_en
		begin

		end 
		firstRow_writeSRAM: 		// sets addr_calc mode ; pulse read_en ; set SRAM_mode
		begin

		end 
		firstRow_updateCounters: 	// pulse i_enable ; pulse addr_calc_en
		begin

		end		
		updateCounter_j:			// pulse j_en (links to finish state)
		begin

		end		
		firstCol_readSDRAM_1: 		// read for WB_3: set addr_calc mode ; pulse read_en
		begin

		end		
		firstCol_writeWB_1: 		// write to WB_3: set WB mode ; pulse WB_en
		begin

		end		
		firstCol_readSDRAM_2: 		// read for WB_1: set addr_calc mode ; set SRAM_mode ; pulse SRAM_en
		begin

		end		
		rirstCol_writeWB_2:			// write to WB_1: set WB mode ; pulse WB_en
		begin

		end		
		anyCol_readSDRAM: 			// read for WB_4: set addr_col mode ; pulse read_en
		begin

		end		
		anyCol_writeWB_fromSDRAM: 	// write to WB_4: set WB mode ; pulse WB_en
		begin

		end		
		anyCol_readSRAM: 			// read for WB_2: set addr_calc mdoe ; set SRAM_mode ; pulse SRAM_en
		begin

		end		
		anyCol_writeWB_fromSRAM: 	// write to WB_2: set WB mode ; pulse read_en
		begin

		end		
		writeSRAM_WB3: 				// set addr_calc mode ; set SRAM mode ; pulse SRAM_en
		begin

		end		
		writeSRAM_outputImg:		// set addr_calc mode ; set SRAM mode ; pulse SRAM_en
		begin

		end		
		WBShift_updateCounters: 	// set WB_mode ; pulse WB_en ; pulse i_en ; pulse addr_calc_en
		begin

		end		
		outputImg_readSRAM: 		// set addr_calc mode ; set SRAM mode ; pulse SRAM_en
		begin

		end		
		outputImg_writeSDRAM:		// set addr_calc mode ; pulse SDRAM write_en
		begin

		end		
		outputImg_updateCounters:	// pulse i_wr_en ; pulse addr_calc_en
		begin

		end		
		finish:						// set finish_flag
		begin

		end		
	endcase
end

always_ff @(posedge clk, negedge n_rst)
begin
	if(n_rst == 1'b0)
	begin
		state <= idle;
	end
	else
	begin
		state <= nextState;
	end
end

always_comb
begin : outputLogic

	nextState = state;

	case(state)
		idle: 						// idle state: waiting for start flag
		begin

		end
		firstRow_readSDRAM: 		// sets addr_calc mode ; pulse read_en
		begin

		end 
		firstRow_writeSRAM: 		// sets addr_calc mode ; pulse read_en ; set SRAM_mode
		begin

		end 
		firstRow_updateCounters: 	// pulse i_enable ; pulse addr_calc_en
		begin

		end		
		updateCounter_j:			// pulse j_en (links to finish state)
		begin

		end		
		firstCol_readSDRAM_1: 		// read for WB_3: set addr_calc mode ; pulse read_en
		begin

		end		
		firstCol_writeWB_1: 		// write to WB_3: set WB mode ; pulse WB_en
		begin

		end		
		firstCol_readSDRAM_2: 		// read for WB_1: set addr_calc mode ; set SRAM_mode ; pulse SRAM_en
		begin

		end		
		rirstCol_writeWB_2:			// write to WB_1: set WB mode ; pulse WB_en
		begin

		end		
		anyCol_readSDRAM: 			// read for WB_4: set addr_col mode ; pulse read_en
		begin

		end		
		anyCol_writeWB_fromSDRAM: 	// write to WB_4: set WB mode ; pulse WB_en
		begin

		end		
		anyCol_readSRAM: 			// read for WB_2: set addr_calc mdoe ; set SRAM_mode ; pulse SRAM_en
		begin

		end		
		anyCol_writeWB_fromSRAM: 	// write to WB_2: set WB mode ; pulse read_en
		begin

		end		
		writeSRAM_WB3: 				// set addr_calc mode ; set SRAM mode ; pulse SRAM_en
		begin

		end		
		writeSRAM_outputImg:		// set addr_calc mode ; set SRAM mode ; pulse SRAM_en
		begin

		end		
		WBShift_updateCounters: 	// set WB_mode ; pulse WB_en ; pulse i_en ; pulse addr_calc_en
		begin

		end		
		outputImg_readSRAM: 		// set addr_calc mode ; set SRAM mode ; pulse SRAM_en
		begin

		end		
		outputImg_writeSDRAM:		// set addr_calc mode ; pulse SDRAM write_en
		begin

		end		
		outputImg_updateCounters:	// pulse i_wr_en ; pulse addr_calc_en
		begin

		end		
		finish:						// set finish_flag
		begin

		end		
	endcase
end

endmodule


