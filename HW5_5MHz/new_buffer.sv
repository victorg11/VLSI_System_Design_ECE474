//Buffer arrangement [31:0]
//+--------+--------+--------+--------+
//|  temp4 |  temp2 |  temp3 | temp4  |
//+--------+--------+--------+--------+

module new_buffer (
	input reset_n,
	input clk_50,
	input clk_2,
	input header_flag,
	input [7:0] packet_in,
	input write_en,
	output reg [7:0] buff_out,
	output reg buffer_full
	);
	reg [31:0] all_data;
	reg [1:0] read_from;

	reg [2:0] cnt;
	reg full_buffer_clk2;
	//used for shifting and values in register
	//Note: clk is 50 MHz because that's what we use for reading
	always_ff @(posedge clk_50, negedge reset_n) begin
		if(!reset_n)begin
			all_data <= 'b0;
		end

		else if(write_en)begin
			all_data <= {packet_in, (all_data[31:8])};
		end
	end

	//use to keep track of shifts
	always_ff @(posedge clk_50, negedge reset_n) begin
		if(!reset_n) cnt <= 0;
		else if(write_en) cnt <= cnt+1;
		if(cnt == 4) cnt <= 0; //after shifting four times, reset count
	end

	//flag combinational logic
	always_comb begin
		if(cnt == 4) begin
			buffer_full = 1;
		end
		else if (header_flag == 1) buffer_full = 0;
	end

	//Read out logic_range
		always_ff @(posedge clk_2, negedge reset_n) begin
			if(!reset_n) begin
				read_from <= 0; //if reset, read from bottom
			end
			else if(!header_flag) begin
				read_from <= read_from - 1;
			end
			else read_from <= read_from;
		end

		always_comb begin
			if(read_from == 0) begin
					buffer_out = all_data[]
			end
		end



endmodule
