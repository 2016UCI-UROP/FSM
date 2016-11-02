module dontcareFSM(reset, sda, scl, out);
	input reset, sda, scl;
	output reg[64:0] out;
	parameter s1 = "s1", s2 = "s2", s18 = "s18", s19 = "s19", s20 = "s20", s21 = "s21", s41 = "s41", s42 = "s42";
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

	always @(sda, scl) begin
		case(state)
		s1 : begin
			out <= s1;
			label <= 1'bx;
			if(sda == 0) nextState <= s2;
			else nextState <= s1;
		end
		s2 : begin
			out <= s2;
			if(sda == 1 || sda == 0 || sda === 1'bx) nextState <= s18;
			else nextState <= s1;
		end
		s18 : begin
			out <= s18;
			if(sda == 0 && scl == 0) nextState <= s19;
			else nextState <= s1;
		end
		s19 : begin
			out <= s19;
			if(scl == 1) nextState <= s20;
			else nextState <= s1;
		end
		s20 : begin
			out <= s20;
			if(sda == 1 && scl == 0) nextState <= s21;
			else nextState <= s1;
		end
		s21 : begin
			out <= s21;
			if(sda == 1 || sda == 0 || sda === 1'bx) nextState <= s41;
			else nextState <= s1;
		end
		s41 : begin
			out <= s41;
			if(sda == 1) nextState <= s42;
			else nextState <= s1;
		end
		s42 : begin
		end
		endcase
	end
endmodule