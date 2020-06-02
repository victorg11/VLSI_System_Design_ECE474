module shiftreg (
				input serial_data, //for serial data I am reading
				input clk_50, //data is sent at this speed
				input data_en,
				input reset_n,
				output reg [7:0] full_byte,
				output reg byte_complete,
				output reg [2:0] byte_bit_cnt
				);

				reg [7:0] out, temp; //assigned output
				reg [3:0] cnt; //used to count shifts

				//used for shifting and values in register
				always_ff @(posedge clk_50, negedge reset_n) begin
					if(!reset_n)begin
						out <= 'b0;
						cnt <= 0;
					end

					else if(data_en)begin
						out <= {serial_data, (out[7:1])}; //shift and concatenate "new" bit
					end
				end

			  //used to keep track of bits shifted
				always_ff @(posedge clk_50, negedge reset_n) begin
					if(!reset_n)begin
						cnt <= 0;
					end
					else if(data_en)begin
						cnt <= 1 + cnt;
					end
					else
						cnt <= 0;
				end

				//flag logic
				always_comb begin
					if(cnt == 8) begin
						byte_complete = 1;
						//cnt = 0; //causes errors
					end
					else byte_complete = 0;

				end

				assign full_byte = out;
				assign byte_bit_cnt = cnt;
endmodule
