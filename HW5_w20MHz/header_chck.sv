module detect_header (
	input [7:0] packet_in,
	input byte_complete,
	output reg is_header
	);

	//combinational logic to detect header
	always_comb begin
		// check to see if a full byte was assembled
		case (byte_complete)
			1'b0: is_header = 0; //byte isn't done packing yet, so don't check yet
			1'b1: begin //if we have a full byte, we can check now
				if(packet_in == 8'hA5) is_header = 1;
				else if(packet_in == 8'hC3) is_header = 1;
				else is_header = 0;
			end
			default: is_header = 0;
		endcase
	end
endmodule
