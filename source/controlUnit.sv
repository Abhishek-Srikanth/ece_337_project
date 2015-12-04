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
				firstRow_readSDRAM_dummy,	//     -- for pulsing read_en
				firstRow_writeSRAM, 		// sets addr_calc mode ; set SRAM_mode ; pulse SRAM_en
				firstRow_updateCounters, 	// pulse i_enable ; pulse addr_calc_en
				updateCounter_j,			// pulse j_en (links to finish state)

				firstCol_readSDRAM, 		// read for WB_3: set addr_calc mode ; pulse read_en
				firstCol_readSDRAM_dummy, 	//     -- for pulsing read_en
				firstCol_writeWB_1, 		// write to WB_3: set WB mode ; pulse WB_en
				firstCol_readSRAM, 			// read for WB_1: set addr_calc mode ; set SRAM_mode ; pulse SRAM_en
				firstCol_readSRAM_dummy,  	//     -- for pulsing read_en of SRAM
				firstCol_writeWB_2_updateCounters,	// write to WB_1: set WB mode ; pulse WB_en, i_en, addr_calc_en

				anyCol_readSDRAM, 			// read for WB_4: set addr_col mode ; pulse read_en
				anyCol_readSDRAM_dummy,		//     -- for pulsing read_en
				anyCol_writeWB_fromSDRAM, 	// write to WB_4: set WB mode ; pulse WB_en
				anyCol_readSRAM, 			// read for WB_2: set addr_calc mdoe ; set SRAM_mode ; pulse SRAM_en
				anyCol_readSRAM_dummy,		//     -- for pulsing read_en of SRAM
				anyCol_writeWB_fromSRAM, 	// write to WB_2: set WB mode ; pulse read_en
				writeSRAM_WB3, 				// set addr_calc mode ; set SRAM mode ; pulse SRAM_en
				writeSRAM_outputImg,		// set addr_calc mode ; set SRAM mode ; pulse SRAM_en
				WBShift_updateCounters, 	// set WB_mode ; pulse WB_en ; pulse i_en ; pulse addr_calc_en

				outputImg_readSRAM, 		// set addr_calc mode ; set SRAM mode ; pulse SRAM_en
				outputImg_readSRAM_dummy,	//     -- for pulsing read_en of SRAM
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
			if(start_flag == 1'b1)
			begin
				nextState = firstRow_readSDRAM;
			end
		end

		firstRow_readSDRAM: 		// read from SDRAM the first row data
		begin
			if(dataRead_sdram == 1'b1)
			begin
				nextState = firstRow_writeSRAM;
			end
			else
			begin
				nextState = firstRow_readSDRAM_dummy;
			end
		end 
		firstRow_readSDRAM_dummy: 		// buffer state while waiting for dataReadValid
		begin
			if(dataRead_sdram == 1'b1)
			begin
				nextState = firstRow_writeSRAM;
			end
		end 

		firstRow_writeSRAM: 		// write value read from SDRAM into the SRAM
		begin
			nextState = firstRow_updateCounters;
		end 

		firstRow_updateCounters: 	// update counters in addr_calc and in i_column_counter
		begin
			if(rollover_i == 1'b0)
			begin
				nextState = firstRow_readSDRAM;
			end
			else
			begin
				nextState = updateCounter_j;
			end
		end

		updateCounter_j:			// updates row counter j
		begin
			if(rollover_j == 1'b0)
			begin
				nextState = firstCol_readSDRAM;
			end
			else
			begin
				nextState = finish;
			end
		end	
	
		firstCol_readSDRAM: 		// read from SDRAM into the Window Buffer element 3
		begin
			if(dataRead_sdram == 1'b1)
			begin
				nextState = firstCol_writeWB_1;
			end	
			else
			begin
				nextState = firstCol_readSDRAM_dummy;
			end
		end	
		firstCol_readSDRAM_dummy: // dummy for pulsing read_en
		begin
			if(dataRead_sdram == 1'b1)
			begin
				nextState = firstCol_writeWB_1;
			end
		end
	
		firstCol_writeWB_1: 		// write to WB_3 (bottom left) the value read from SDRAM
		begin
			nextState = firstCol_readSRAM;
		end	

		firstCol_readSRAM: 		// read from SRAM into Window Buffer element 1
		begin
			if(dataRead_sram == 1'b1)
			begin
				nextState = firstCol_writeWB_2_updateCounters;
			end	
			else
			begin
				nextState = firstCol_readSRAM_dummy;
			end	
		end
		firstCol_readSRAM_dummy: // dummy for pulsing read_en
		begin
			if(dataRead_sram == 1'b1)
			begin
				nextState = firstCol_writeWB_2_updateCounters;
			end
		end
		
		firstCol_writeWB_2_updateCounters:	// write to WB_1 (top left) the value read from SRAM
		begin								// also used to update counter
			nextState = anyCol_readSDRAM;
		end	
			
		anyCol_readSDRAM: 			// read for WB_4: set addr_col mode ; pulse read_en
		begin
			if(dataRead_sdram == 1'b1)
			begin
				nextState = anyCol_writeWB_fromSDRAM;
			end	
			else
			begin
				nextState = anyCol_readSDRAM_dummy;
			end
		end
		anyCol_readSDRAM_dummy:
		begin
			if(dataRead_sdram == 1'b1)
			begin
				nextState = anyCol_writeWB_fromSDRAM;
			end
		end	
			
		anyCol_writeWB_fromSDRAM: 	// write to WB_4 where data from SDRAM
		begin
			nextState = anyCol_readSRAM;
		end		

		anyCol_readSRAM: 			// read for WB_2 data from SRAM
		begin
			if(dataRead_sram == 1'b1)
			begin
				nextState = anyCol_writeWB_fromSRAM;
			end
			else
			begin
				nextState = anyCol_readSRAM_dummy;
			end
		end		
		anyCol_readSRAM_dummy:
		begin
			if(dataRead_sram == 1'b1)
			begin
				nextState = anyCol_writeWB_fromSRAM;
			end
		end

		anyCol_writeWB_fromSRAM: 	// write to WB_2 where data from SRAM
		begin
			nextState = writeSRAM_WB3;
		end

		writeSRAM_WB3: 				// save value from WB_3 to the SRAM in rowCache
		begin
			nextState = writeSRAM_outputImg;
		end	

		writeSRAM_outputImg:		// save processed image into SRAM output Array
		begin
			nextState = WBShift_updateCounters;
		end		

		WBShift_updateCounters: 	// Shift WB_2 -> WB_1 and WB_4 -> WB_3. Simultaneously, update counters
		begin
			if(rollover_i == 1'b0)
			begin
				nextState = anyCol_readSDRAM;
			end
			else
			begin
				nextState = outputImg_readSRAM;
			end
		end		

		outputImg_readSRAM: 		// read output Array image from SRAM
		begin
			if(dataRead_sram == 1'b1)
			begin
				nextState = outputImg_readSRAM;
			end	
			else
			begin
				nextState = outputImg_readSRAM_dummy;
			end		
		end		
		outputImg_readSRAM_dummy:
		begin
			if(dataRead_sram == 1'b1)
			begin
				nextState = outputImg_readSRAM;
			end
		end

		outputImg_writeSDRAM:		// write output image into SDRAM
		begin
			nextState = outputImg_udpateCounters;
		end		

		outputImg_updateCounters:	// update i_wr and check rollover
		begin
			if(rollover_i_wr == 1'b0)
			begin
				nextState = outputImg_readSRAM;
			end
			else
			begin
				nextState = updateCounter_j;
			end
		end		

		finish:		// set finish_flag
		begin
			nextState = idle;
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
begin: outputLogic
	case(state)
		idle: 						// idle state: waiting for start flag
		begin

		end

		firstRow_readSDRAM: 		// sets addr_calc mode ; pulse read_en
		begin

		end

		firstRow_readSDRAM_dummy:	//     -- for pulsing read_en
		begin

		end

		firstRow_writeSRAM: 		// sets addr_calc mode ; set SRAM_mode ; pulse SRAM_en
		begin

		end

		firstRow_updateCounters: 	// pulse i_enable ; pulse addr_calc_en
		begin

		end

		updateCounter_j:			// pulse j_en (links to finish state)
		begin

		end
			
		firstCol_readSDRAM: 		// read for WB_3: set addr_calc mode ; pulse read_en
		begin

		end

		firstCol_readSDRAM_dummy: 	//     -- for pulsing read_en
		begin

		end

		firstCol_writeWB_1: 		// write to WB_3: set WB mode ; pulse WB_en
		begin

		end

		firstCol_readSRAM: 			// read for WB_1: set addr_calc mode ; set SRAM_mode ; pulse SRAM_en
		begin

		end

		firstCol_readSRAM_dummy:  	//     -- for pulsing read_en of SRAM
		begin

		end

		firstCol_writeWB_2_updateCounters:	// write to WB_1: set WB mode ; pulse WB_en, i_en, addr_calc_en
		begin

		end

		anyCol_readSDRAM: 			// read for WB_4: set addr_col mode ; pulse read_en
		begin

		end

		anyCol_readSDRAM_dummy:		//     -- for pulsing read_en
		begin

		end

		anyCol_writeWB_fromSDRAM: 	// write to WB_4: set WB mode ; pulse WB_en
		begin

		end

		anyCol_readSRAM: 			// read for WB_2: set addr_calc mdoe ; set SRAM_mode ; pulse SRAM_en
		begin

		end

		anyCol_readSRAM_dummy:		//     -- for pulsing read_en of SRAM
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

		outputImg_readSRAM_dummy:	//     -- for pulsing read_en of SRAM
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


