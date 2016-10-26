module unidFSM(reset, scl, sda, out);
	input reset, scl, sda;
	output reg[64:0] out;
	parameter s1 = "s1", s2 = "s2", s3 = "s3", s4 = "s4", s5 = "s5", s6 = "s6", s7 = "s7", s8 = "s8", s9 = "s9";
	reg[64:0] state, nextState;
	reg[128:0] label;

	always @(*) begin
		if(reset) begin
			state <= s1;
		end
		else begin
			state <= nextState;
		end
	end

	always @(scl, sda) begin
		case(state)
		s1 : begin
			out <= s1;
			label <= 1'bx;
			if(sda == 0) nextState <= s2;
			else nextState <= s1;
		end
		s2 : begin
			out <= s2;
			if(scl == 0) nextState <= s3;
			else if(sda == 0) nextState <= s2;
			else nextState <= s1;
		end
		s3 : begin
			out <= s3;
			if(sda === 1'bx) nextState <= s4;
			else if(scl == 0) nextState <= s3;
			else nextState <= s1;
		end
		s4 : begin
			out <= s4;
			if(scl === 1'bx) nextState <= s5;
			else if(sda === 1'bx) nextState <= s4;
			else nextState <= s1;
		end
		s5 : begin
			out <= s5;
			if(scl == 0) nextState <= s6;
			else if(scl === 1'bx) nextState <= s5;
			else nextState <= s1;
		end
		s6 : begin
			out <= s6;
			if(sda == 0) nextState <= s7;
			else if(scl == 0) nextState <= s6;
			else nextState <= s1;
		end
		s7 : begin
			out <= s7;
			if(scl == 1) nextState <= s8;
			else if(sda == 0) nextState <= s7;
			else nextState <= s1;
		end
		s8 : begin
			out <= s8;
			if(sda == 1) nextState <= s9;
			else if(scl == 1) nextState <= s8;
			else nextState <= s1;
		end
		s9 : begin
		end
		endcase
	end
endmodule