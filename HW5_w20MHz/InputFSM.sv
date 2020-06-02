module inputFSM (
	input clk_50, //
	input reset_n,
	input byte_complete,
	input header_flag,
	output reg write_buffer
	);

	//States
  enum reg [2:0]{
    HEADER = 3'b000,
    READING_1 = 3'b001,   
    READING_2 = 3'b010,
    READING_3 = 3'b011,
    READING_4 = 3'b100,
		WRITE_OUT = 3'b101} byte_ns, byte_ps;

		//Next State and Present State
	always_ff @(posedge clk_50, negedge reset_n) begin
		if(!reset_n)  byte_ps <= HEADER;
		else byte_ps <= byte_ns;
	end

	//Keep track of which bits we finished writing
	always_comb begin
		case (byte_ps)
			HEADER: begin
				if(byte_complete) byte_ns = READING_1;
				else byte_ns = HEADER;
			end
			READING_1: begin
				if(byte_complete) byte_ns = READING_2;
				else byte_ns = READING_1;
			end
			READING_2: begin
				if(byte_complete) byte_ns = READING_3;
				else byte_ns = READING_2;
			end
			READING_3: begin
				if(byte_complete) byte_ns = READING_4;
				else byte_ns = READING_3;
			end
			READING_4: begin
				if(byte_complete) byte_ns = HEADER;
				else byte_ns = READING_4;
			end
		endcase
	end

	//Output conntrol
	always_comb begin
		write_buffer = 1'b0;
		if((byte_ps != HEADER) && (byte_complete)) begin
			write_buffer = 1'b1;
		end
	end

endmodule
