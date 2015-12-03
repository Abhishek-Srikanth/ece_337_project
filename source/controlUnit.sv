// $Id: $
// File name:   controlUnit.sv
// Created:     12/3/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Control Unit of the custom logic chip

module controlUnit
(
	
);

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

endmodule

/*
  Window Buffer index:
		| 1 | 2 |
		| 3 | 4 |
*/

