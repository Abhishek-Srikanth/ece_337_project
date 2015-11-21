`timescale 1ns / 100ps

module tb_flex_counter
();
	localparam CLK_PERIOD = 2.5;
	reg tb_clk;
	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end
	reg tb_n_rst;
	reg tb_clear;
	reg tb_count_enable;
	reg [3:0] tb_rollover_val_4bit;
	reg [3:0] tb_count_out_4bit;
	reg tb_rollover_flag;

	// DUT port mapping
	flex_counter fourBit (.clk(tb_clk), .n_rst(tb_n_rst), .clear(tb_clear), .count_enable(tb_count_enable), 
				.rollover_val(tb_rollover_val_4bit), .count_out(tb_count_out_4bit), 
				.rollover_flag(tb_rollover_flag));

	initial
	begin
		tb_n_rst = 1'b1;
		tb_clear = 1'b0;
		tb_count_enable = 1'b1;
		tb_rollover_val_4bit = 4'b1111;

		// test 1
		
		@(negedge tb_clk);
		tb_n_rst = 1'b0;
		@(negedge tb_clk);
		tb_n_rst = 1'b1;
		tb_clear = 1'b0;
		tb_count_enable = 1'b1;
		tb_rollover_val_4bit = 4'b0100;
		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0001)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end

		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0010)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end


		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0011)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end
		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0000)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end
		assert(tb_rollover_flag == 1'b1)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end

		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0001)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end

		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0010)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end
		tb_count_enable = 1'b0; // stop counter
		
		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0010)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end
		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0010)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end
		tb_count_enable = 1'b1;

		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0011)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end
		tb_clear = 1'b1;

		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0000)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end
		tb_clear = 1'b0;
		

		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0001)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end


		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0010)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end
		tb_clear = 1'b1;

		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0000)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end
		tb_clear = 1'b0;


		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0001)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end


		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0010)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end


		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0011)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end


		@(negedge tb_clk);
		assert(tb_count_out_4bit == 4'b0000)
		begin
			$info("pass");
		end
		else
		begin
			$error("fail");
		end

		
		@(negedge tb_clk); // 0001
		@(negedge tb_clk); // 0010
		@(negedge tb_clk); // 0011
		@(negedge tb_clk); // 0000

	end


endmodule