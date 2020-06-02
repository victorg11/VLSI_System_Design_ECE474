//Buffer arrangement [31:0]
//+--------+--------+--------+--------+
//|  temp4 |  temp2 |  temp3 | temp4  |
//+--------+--------+--------+--------+

module buffer (
	input reset_n,
	input clk_50,
	input clk_2,
	input header_flag,
	input [7:0] packet_in,
	input write_en,
	output reg [31:0] all_data,
	output reg buffer_full,
	output reg [2:0] byte_cnt
	);

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
		else if(cnt == 4) cnt <= 0; //after shifting four times, reset count
		else if(write_en) cnt <= cnt+1;
		//if(cnt == 4) cnt <= 0; //after shifting four times, reset count
	end

	//flag combinational logic
	always_comb begin
		if(cnt == 4) begin
			buffer_full = 1;
		end
		else if (header_flag == 1) buffer_full = 0;
	end

	assign byte_cnt = cnt;
endmodule
