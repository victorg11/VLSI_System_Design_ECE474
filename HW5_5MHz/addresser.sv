module addresser (
	input clk_2,
	input average_done,
	input find_average,
	input [2:0] byte_cnt,
	input reset_n,
	output reg ram_wr,
	output reg [10:0] addr //output of address
	);

	reg [10:0] out_addr;
	reg ram_flag;
	//State Machine would also work, but I chose not to implement it
	// enum reg {
	// 	IDLE = 1'b0,
	// 	CALC= 1'b1} RAM_ns, RAM_ps;

	//Remember: we need to perform operations at 2 MHz clock frequency
	always_ff @(posedge clk_2, negedge reset_n) begin
		//upon reset, let's set the new starting address and change disable the flag for now
		if(!reset_n) begin
			out_addr <= 11'h7FF; //Using my method means that I have to use this value.
													//Worry not, it will never write here, but rate 0x7FF
			ram_flag <= 0;
 		end

		//once we have our average data set the output address
		else if((average_done == 1) && (find_average == 1)) begin
			ram_flag <= 1;

		end

		else if(byte_cnt == 4) begin
			out_addr <= out_addr - 1;
		end

		else if(out_addr == 11'h000)begin
			out_addr <= 11'h7FF;
		end

		else ram_flag <= 0;

		//This is to check that the RAM addressing stays in its bounds
		// if(out_addr == 11'h000)begin
		// 	out_addr <= 11'h7FF;
		// end
  end

	//assign outputs
	assign addr = out_addr;
	assign ram_wr = ram_flag;

	// always_ff @(posedge clk_2, negedge reset_n) begin
	// 	if(!reset_n) begin
	// 		out_addr <= 11'h7ff;
	// 		ram_flag <= 0;
	// 	end
	//
	// 	else if (find_average == average_done) begin
	// 		 out_addr <= out_addr;
	// 		 ram_flag <= 1;
	// 	end
	//
	// 	else begin
	// 		out_addr <= out_addr - 1;
	// 		ram_flag <= 0;
	// 	end
	//
	// 	if(out_addr == 11'h000) begin
	// 		out_addr <= 11'h7ff;
	// 	end
	// end
endmodule


//Do-file testing:
// -> condition looping from 0x000 to 0x7FF happens at 351239002 ns
