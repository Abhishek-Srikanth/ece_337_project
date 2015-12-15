// $Id: $
// File name:   customLogicTLD.sv
// Created:     12/14/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Top level module for custom logic

module customLogicTLD
(
	input wire clk,
	input wire n_rst,
	// control register values
	input wire startControlRegister,
	input wire [12:0] imageWidth,
	input wire [12:0] imageHeight,
	input wire [25:0] start_addr_sdram,
	input wire [25:0] finish_addr_sdram,
	input wire [1:0] filterMode,
	input wire [7:0] betaValue,
	input wire sdram_datareadvalid,
	
	input wire [31:0] data_sdram,
	output wire sdram_read_en,
	output wire sdram_write_en,
	output wire [25:0] address_sdram,
	output wire [31:0] writeData_sdram,
	output wire finish_flag
);

localparam rowCacheStartAddr  = {13'd0, 13'd0};
localparam outputArrStartAddr = {13'd1, 13'd0};

wire start_flag;
wire rollover_i, rollover_i_wr, rollover_j;					// rollover wires
wire [7:0] wb1;
wire [7:0] wb2;  		// windowBuffer connecting wires
wire [7:0] wb3;
wire [7:0] wb4;	
wire [31:0] reorderedWire;									// reOrdered wire to filter top level
wire [31:0] postFilterData;									// output of filter block
wire [12:0] i_value;										// value of counter i
wire [12:0] j_value;										// value of counter j
wire i_wr_en, i_en, j_en;  									// enable wires
wire addrCalc_sram_en, addrCalc_sdram_en, sram_en, WB_en;	// enable wires
wire sram_datareadvalid;
wire addrCalc_sram_mode, addrCalc_sdram_mode;				// addrCalc mode
wire [25:0] address_sram;									// address to query sram
wire [2:0] mode_WB;											// WB mode
wire mode_sram;												// sram modes
wire [31:0] delayedData_sdram;
wire [31:0] delayedData_sram;
wire [31:0] data_sram;

assign writeData_sdram = delayedData_sram;

// rising edge detector
risingEdgeDetector edgeDetector
(
	.clk					(clk),
	.startData				(startControlRegister),

	.start_flag				(start_flag)
);

// delay data that was read from the SRAM
delaySingleClock dataFromSRAM
(
	.clk					(clk),
	.n_rst					(n_rst),
	.in						(data_sram),		// 31:0

	.out					(delayedData_sram)	// 31:0
);

// delay data that was read from SDRAM
delaySingleClock dataFromSDRAM
(
	.clk					(clk),
	.n_rst					(n_rst),
	.in						(data_sdram),		// 31:0

	.out					(delayedData_sdram)	// 31:0
);

// i_wr port mapping
i_wr_counter outputColCounter
(
	.clk					(clk),
	.clear					(start_flag),
	.rollover_val			(imageWidth),	// 12:0
	.count_enable			(i_wr_en),
	
	.rollover_flag			(rollover_i_wr)
	//.value				()				// 12:0	// not used
);

// i port mapping
i_col_counter colCounter
(
	.clk					(clk), 
	.clear					(start_flag),
	.rollover_val			(imageWidth),	// 12:0
	.count_enable			(i_en),

	.rollover_flag			(rollover_i),
	.value					(i_value)		// 12:0	
);

// j port mapping
j_row_counter rowCounter
(
	.clk					(clk), 
	.clear					(start_flag),
	.rollover_val			(imageHeight),	// 12:0
	.count_enable			(j_en),

	.rollover_flag			(rollover_j),
	.value					(j_value)		// 12:0	
);

// addrCalc module
address_calc	addressCalculator
(
	.clk					(clk),
	.n_rst					(n_rst),
	.sram_mode				(addrCalc_sram_mode),
	.sdram_mode				(addrCalc_sdram_mode),
	.sram_update			(addrCalc_sram_en),
	.sdram_update			(addrCalc_sdram_en),
	.start_flag				(start_flag),
	.image_width			(imageWidth), // [12:0] 
	.start_address_sdram	(start_addr_sdram),	// 25:0
	.finish_address_sdram	(finish_addr_sdram),	// 25:0
	.rowCache_address_sram	(rowCacheStartAddr),	// 25:0	// both values are local params
	.output_address_sram	(outputArrStartAddr),	// 25:0	// both values are local params

	.sdram_address			(address_sdram),	// 25:0
	.sram_address			(address_sram)		// 25:0
);

// control unit module
controlUnit thalai
(
	.clk					(clk),
	.n_rst					(n_rst),
	.start_flag				(start_flag),
	.dataRead_sram			(sram_datareadvalid),
	.dataRead_sdram			(sdram_datareadvalid),
	.rollover_i				(rollover_i),
	.rollover_j				(rollover_j),
	.rollover_i_wr			(rollover_i_wr),
	
	.enable_i				(i_en),
	.enable_j				(j_en),
	.enable_i_wr			(i_wr_en),
	.enable_addr_calc_sram	(addrCalc_sram_en),
	.enable_addr_calc_sdram	(addrCalc_sdram_en),
	.enable_WB				(WB_en),
	.enable_sram			(sram_en),
	.read_en_sdram			(sdram_read_en),
	.write_en_sdram			(sdram_write_en),
	// modes below
	.mode_addr_calc_sram	(addrCalc_sram_mode),
	.mode_addr_calc_sdram	(addrCalc_sdram_mode),
	.mode_WB				(mode_WB),	// 2:0
	.mode_sram				(mode_sram),
	.finish_flag			(finish_flag)
);

// Window buffer module
wbuffer windowBuffer
(
	.clk					(clk),
   	.nrst					(n_rst),
   	.enable_CU				(WB_en),
   	.mode					(mode_WB),	// 2:0
   	.data_read				(delayedData_sdram[7:0]),	// 7:0	// data_read is from sdram	// want 8 bits only
   	.data					(delayedData_sram[7:0]),	// 7:0	// data is from sram		// want 8 bits only

   	.w_1					(wb1),	// 7:0
   	.w_2					(wb2),	// 7:0
   	.w_3					(wb3),	// 7:0
   	.w_4					(wb4)	// 7:0
);

// RGGB re-ordering module
rggb reorderingModule
(
	.wb_1					(wb1),	// 7:0
   	.wb_2					(wb2),	// 7:0
   	.wb_3					(wb3),	// 7:0
   	.wb_4					(wb4),	// 7:0
   	.row					(j_value[0]),
   	.col					(i_value[0]),

	.out					(reorderedWire)	// 31:0
);

// filter Top Level module
filterTopLevel topLevelFilterBlock
(
	.clk					(clk),
	.n_rst					(n_rst),
	.in						(reorderedWire),	// 31:0
	.filterMode				(filterMode),		// 1:0 	// from PCIe status registers
	.brightnessCoeff		(betaValue),		// 7:0
	
	.result					(postFilterData)	// 31:0
);

sram_simulation ennodaSRAM_simulation
(
	.clk					(clk),
	.sdram_data				(delayedData_sdram),	// 31:0
	.wb_data				(postFilterData),		// 31:0
	.address				(address_sram),			// 25:0	
	.mode					(mode_sram),			// read/write
	.addrCalcMode			(addrCalc_sram_mode),
	.enable					(sram_en),

	.out_data				(data_sram),			// 31:0
	.dataReadValid			(sram_datareadvalid)
);

endmodule
