// $Id: $
// File name:   customLogicTLD.sv
// Created:     12/14/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Top level module for custom logic

module customLogicTLD
(

);

// rising edge detector
risingEdgeDetector edgeDetector
(
	.clk					(),
	.startData				(),

	.start_flag				()
);


// i_wr port mapping
i_wr_counter outputColCounter
(
	.clk					(),
	.clear					(),
	.rollover_val			(),	// 12:0
	.count_enable			(),
	
	.rollover_flag			(),
	.value					()	// 12:0
);

// i port mapping
i_col_counter colCounter
(
	.clk					(), 
	.clear					(),
	.rollover_val			(),	// 12:0
	.count_enable			(),

	.rollover_flag			(),
	.value					()	// 12:0
);

// j port mapping
j_row_counter rowCounter
(
	.clk					(), 
	.clear					(),
	.rollover_val			(),	// 12:0
	.count_enable			(),

	.rollover_flag			(),
	.value					()	// 12:0
);

// addrCalc module
address_calc	addressCalculator
(
	.clk					(),
	.n_rst					(),
	.sram_mode				(),
	.sdram_mode				(),
	.sram_update			(),
	.sdram_update			(),
	.start_flag				(),
	.image_width			(), // [12:0] 
	.start_address_sdram	(),	// 25:0
	.finish_address_sdram	(),	// 25:0
	.rowCache_address_sram	(),	// 25:0
	.output_address_sram	(),	// 25:0

	.sdram_address			(),	// 25:0
	.sram_address			()	// 25:0
);

// control unit module
controlUnit thalai
(
	.clk					(),
	.n_rst					(),
	.start_flag				(),
	.dataRead_sram			(),
	.dataRead_sdram			(),
	.rollover_i				(),
	.rollover_j				(),
	.rollover_i_wr			(),
	
	.enable_i				(),
	.enable_j				(),
	.enable_i_wr			(),
	.enable_addr_calc_sram	(),
	.enable_addr_calc_sdram	(),
	.enable_WB				(),
	.enable_sram			(),
	.read_en_sdram			(),
	.write_en_sdram			(),
	// output modes below
	.mode_addr_calc_sram	(),
	.mode_addr_calc_sdram	(),
	.mode_WB				(),	// 2:0
	.mode_sram				(),
	// finish flag below
	.finish_flag			()
);

// Window buffer module
wbuffer windowBuffer
(
	.clk					(),
   	.nrst					(),
   	.enable_CU				(),
   	.mode					(),	// 2:0
   	.data_read				(),	// 7:0
   	.data					(),	// 7:0

   	.w_1					(),	// 7:0
   	.w_2					(),	// 7:0
   	.w_3					(),	// 7:0
   	.w_4					()	// 7:0
);

// RGGB re-ordering module
rggb reorderingModule
(
	.wb_1					(),	// 7:0
   	.wb_2					(),	// 7:0
   	.wb_3					(),	// 7:0
   	.wb_4					(),	// 7:0
   	.row					(),
   	.col					(),

	.out					()	// 31:0
);

// filter Top Level module
filterTopLevel
(
	.clk					(),
	.n_rst					(),
	.[31:0] in				(),		// 31:0
	.[1:0] filterMode		(),		// 1:0 	// from PCIe status registers
	.[7:0] brightnessCoeff	(),		// 7:0
	
	.[31:0] result			()		// 31:0
);

module sram_simulation
(
	.clk					(),
	.sdram_data				(),	// 31:0
	.wb_data				(),	// 31:0
	.address				(),	// 25:0	
	.mode					(),	// read/write
	.addrCalcMode			(),
	.enable					(),

	.out_data				(),	// 31:0
	.dataReadValid			()
);

endmodule
