// $Id: $
// fin name:   tb_customLogicTLD.sv
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
	
integer m, i,j;
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

reg [25:0] exp_address_sdram;
reg [25:0] exp_write_address_sdram;

integer fin;
integer fout;
integer magicNo, maxVal;


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
	for(m = 0; m < noClocks; m=m+1)
	begin
		@(negedge clk);
	end
endtask

task initialize();
	/*
		To note that file being read is to have a vrey very specific file format
		It cannot have any excess spaces or carriage returns
		Format goes as follows:
		-------------------------------------
		| P6\n								|
		| width height\n					|
		| maxVal\n							|
		| 32BitData( x Width x Height)EOF	|
		-------------------------------------
	*/
	fin = $fopen("lena_out_fpga.ppm", "r");
	fout = $fopen("lena_postChip.ppm", "w");

	//fin = $fopen("colorSet_out_fpga.ppm", "r");
	//fout = $fopen("colorSet_postChip.ppm", "w");
	// read magic number and write same
	magicNo = $fgetc(fin);
	assert( magicNo == "P" ) else $error("magic number P not matching");
	$fwrite(fout, "%c", magicNo);
	magicNo = $fgetc(fin);
	assert( magicNo == "6" ) else $error("magic number 6 not matching");
	$fwrite(fout, "%c\n", magicNo);
	magicNo = $fgetc(fin); // for \n to be read
	
	$fscanf(fin, "%d %d", imageWidth, imageHeight);
	imageWidth = imageWidth - 13'd1;
	imageHeight = imageHeight - 13'd1;
	$fwrite(fout,"%3d %3d\n", imageWidth, imageHeight);
	$fscanf(fin, "%3d", maxVal);
	magicNo = $fgetc(fin);
	$fwrite(fout,"%3d\n", maxVal);	
	
	n_rst = 1'b1;
	startControlRegister = 1'b0;
	start_addr_sdram = '0;	// read and write address
	finish_addr_sdram = '0;	// of the image is the same
//	filterMode = 2'b00;		// general bayer filter (nothing special)
//	filterMode = 2'b01;		// brightness filter
	filterMode = 2'b10;		// horizontal blur filter

	betaValue = 8'd20;		// Not used because of betaValue
	data_sdram = '0;		// doesnt matter right now
	sdram_datareadvalid = 1'b0;
	
		exp_address_sdram = '0;
		exp_write_address_sdram = '0;
endtask

task readFile();
	magicNo = $fgetc(fin);
	data_sdram[31:24] = magicNo;
	//$fwrite(fout, "%c", magicNo);
	magicNo = $fgetc(fin);
	data_sdram[23:16] = magicNo;
	//$fwrite(fout, "%c", magicNo);
	magicNo = $fgetc(fin);
	data_sdram[15:8] = magicNo;
	//$fwrite(fout, "%c", magicNo);
	magicNo = $fgetc(fin);
	data_sdram[7:0] = magicNo;
endtask

task writeToFile();
	//$fwrite(fout, "%c", writeData_sdram[31:24]);	// don't want to save alpha value to file
	$fwrite(fout, "%c", writeData_sdram[23:16]);
	$fwrite(fout, "%c", writeData_sdram[15:8]);
	$fwrite(fout, "%c", writeData_sdram[7:0]);
	$info("writing %h", writeData_sdram);
endtask

initial
begin
	initialize();
	clock(2);
	n_rst = 1'b0;
	clock(1);
	n_rst = 1'b1;
	clock(2);

	startControlRegister = 1'b1;
	$info("chip operations have been intiated");
	// program starts running from this clock onwards
	clock(1);
	i = 0;
	for(j = 0; j < imageWidth; j=j+1)
	begin
		clock(1);
		assert(sdram_read_en == 1'b1) else $error("expecting a read _en");
		assert(address_sdram == exp_address_sdram) else $error("wrong address read from");
		readFile();
		//$fscanf(fin, "%c%c%c%c", data_sdram[31:24], data_sdram[23:16], data_sdram[15:8], data_sdram[7:0]);
		//$info("%d", data_sdram); 
		clock(1);
		assert(sdram_read_en == 1'b0) else $error("expecting read_en to pulse, not stay high forever");
		assert(address_sdram == exp_address_sdram) else $error("wrong address read from");
		sdram_datareadvalid = 1'b1;
		clock(1);
		// value is being written into sram
		sdram_datareadvalid = 1'b0;
		clock(1);
		// counters are being updated
		exp_address_sdram = exp_address_sdram + 1;
	end

	clock(1);
	// j counter is being updated
	//$info("first row operations complete");

//	for(i = 1; i < 3; i=i+1)
	for(i = 1; i < imageHeight; i=i+1)
	begin

		while(sdram_read_en == 1'b0)	// for read SRAM operation
		begin							// for writing read value into
			clock(1);					// WindowBuffer Location 1 (top left)
		end
		
		assert(sdram_read_en == 1'b1) else $error("expecting a read_en"); // guaranteed to pass
		assert(address_sdram == exp_address_sdram) else $error("wrong address read from");
		readFile(); //$fscanf(fin, "%d", data_sdram);

		clock(1);
		assert(sdram_read_en == 1'b0) else $error("expecting read_en to pulse, not stay high forever");
		assert(address_sdram == exp_address_sdram) else $error("wrong address read from");

		sdram_datareadvalid = 1'b1;
		clock(1);
		// write value read from SDRAM into WB_3 and SRAM

		sdram_datareadvalid = 1'b0;
		exp_address_sdram = exp_address_sdram + 1;
		clock(1);
		// update counters
		
		//$info("start of anyCol operation");
		for(j = 1; j < imageWidth; j=j+1)		// TODO check why if not working
		begin
			while(sdram_read_en == 1'b0)	// for read SRAM operation
			begin							// for writing read value into
				clock(1);					// WindowBuffer Location 1 (top left)
			end

			assert(sdram_read_en == 1'b1) else $error("expecting a read_en"); // guaranteed to pass
			assert(address_sdram == exp_address_sdram) else $error("wrong address read from");
			readFile(); //$fscanf(fin, "%d", data_sdram);

			clock(1);
			assert(sdram_read_en == 1'b0) else $error("expecting read_en to pulse, not stay high forever");
			assert(address_sdram == exp_address_sdram) else $error("wrong address read from");

			sdram_datareadvalid = 1'b1;
			clock(1);
			// write value read from SDRAM into WB_3 and SRAM

			sdram_datareadvalid = 1'b0;
			exp_address_sdram = exp_address_sdram + 1;
			clock(1);
			// writeSRAM_outputImg
			clock(1);
			// WBShift_updateCounters
			clock(1);
			// update other counters
		end
		//$info("start of writing image");
		for(j = 0; j < imageWidth - 1; j=j+1)
		begin
			while(sdram_write_en == 1'b0)	// for read SRAM operation
			begin							// Value read to be written
				clock(1);					// into the SDRAM
			end
		
			assert(sdram_write_en == 1'b1) else $error("expecting a write_en");	// guaranteed to pass
			assert(address_sdram == exp_write_address_sdram) else $error("wrong address read from");
			writeToFile(); //$fwrite(fout, "%d", writeData_sdram);
			clock(1);
			exp_write_address_sdram = exp_write_address_sdram + 1;
			// update counters
		end
		clock(1);
		// update j counter
	end

	$fclose(fin);
	$fclose(fout);
	$stop;
	$info("mudinjaachu");
end

endmodule
