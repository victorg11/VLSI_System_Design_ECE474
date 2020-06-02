module averager (
	input reset_n,
	input clk_2,
	input find_average,
	input full_buffer_flag,
	input [31:0] buffer_data,
	output reg [7:0] average_result,
	output reg average_done
	);

	reg [7:0] Temp1, Temp2, Temp3, Temp4;
	reg [8:0] temp_result;

	enum reg {
		IDLE = 1'b0,
		CALC = 1'b1
	} calc_ps, calc_ns;

	//Next State and Present State
  always_ff @(posedge clk_2, negedge reset_n) begin
    if(!reset_n)  calc_ps <= IDLE;
    else calc_ps <= calc_ns;
  end

	//State operatinons
	always_comb begin
		case (calc_ps)
			IDLE: begin
				if(find_average) calc_ns = CALC;
				else calc_ns = IDLE;
			end
			CALC: begin
				if(!find_average) calc_ns = IDLE;
				else calc_ns = CALC;
			end
		endcase
	end

	//Mathematical Calculations
	always_comb begin
		case (calc_ps)
			IDLE: begin
				average_done = 0;
				temp_result = 0;
			end
			CALC: begin
				if(full_buffer_flag == 1)begin
					//assign our temporary registers to temporary registers
					//NOTE: these also shift them by leaving out the first two bits!
					Temp1 = buffer_data[7:0];
					Temp2 = buffer_data[15:8];
					Temp3 = buffer_data[23:16];
					Temp4 = buffer_data[31:24];

					//Take their sum
					temp_result = (Temp1 + Temp2 + Temp3 + Temp4);

					//Set Flag we are DONE
					average_done = 1;
				end
				else average_done = 0;

			end
		endcase
	end

	assign average_result = temp_result[8:2];
endmodule
