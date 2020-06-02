module averager_SM (
	input reset_n,
	input clk_50,
	input buffer_full,
	output reg find_average
	);

	enum reg{
		HOLD = 1'b0, //state where we hold calculation
		CALC = 1'b1 //where we want to flag to begin calculation
	}avrgr_ps, avrgr_ns;

	//next state and present state
	always_ff @(posedge clk_50, negedge reset_n)begin
		if(!reset_n) avrgr_ps <= HOLD;
		else avrgr_ps <= avrgr_ns;
	end

	//state combinational logic
	always_comb begin
		case (buffer_full)
			HOLD: begin
				if(buffer_full) avrgr_ns = CALC;
				else avrgr_ns = HOLD;
			end

			CALC: begin
				if(buffer_full) avrgr_ns = CALC;
				else avrgr_ns = HOLD;
			end
		endcase
	end

	//logic for ram_flag
	always_comb begin
		if(avrgr_ps == CALC) find_average=1;
		else find_average = 0;
	end
endmodule
