module FSM(reset, clk, i3, i4, i1, i2, out);
	input reset, clk, i3, i4, i1, i2;
	output reg[16:0] out;
	parameter s1 = 0, s2 = 200, s3 = 700, s4 = 900, s5 = 1300, s6 = 1800, s7 = 2300, s8 = 2800, s9 = 3100, s10 = 3400, s11 = 3600, s12 = 3800, s13 = 4100;
	reg[16:0] state, nextState;

	always @(*) begin
		if(reset) begin
			state <= s1;
		end
		else begin
			state <= nextState;
		end
	end

	always @(i3, i4, i1, i2, clk) begin
		case(state)
		s1 : begin
			out <= s1;
			if(i3 == 1) nextState <= s2;
			else nextState <= s1;
		end
		s2 : begin
			out <= s2;
			if(i1 == 1 && i4 == 1) nextState <= s3;
			else nextState <= s1;
		end
		s3 : begin
			out <= s3;
			if(i3 == 0) nextState <= s4;
			else nextState <= s1;
		end
		s4 : begin
			out <= s4;
			if(i1 == 0 && i3 == 1) nextState <= s5;
			else nextState <= s1;
		end
		s5 : begin
			out <= s5;
			if(i2 == 1 && i1 == 0 && i4 == 0) nextState <= s6;
			else nextState <= s1;
		end
		s6 : begin
			out <= s6;
			if(i1 == 1) nextState <= s7;
			else nextState <=s6;
		end
		s7 : begin
			out <= s7;
			if(i4 == 1) nextState <= s8;
			else nextState <= s1;
		end
		s8 : begin
			out <= s8;
			if(i4 == 0 && i3 == 0) nextState <= s9;
			else nextState <= s1;
		end
		s9 : begin
			out <= s9;
			if(i4 == 1 && i1 == 0) nextState <= s10;
			else nextState <= s1;
		end
		s10 : begin
			out <= s10;
			if(i2 == 0 && i3 == 1) nextState <= s11;
			else nextState <= s1;
		end
		s11 : begin
			out <= s11;
			if(i1 == 1 && i4 == 0) nextState <= s12;
			else nextState <= s1;
		end
		s12 : begin
			out <= s12;
			if(i3 == 0) nextState <= s13;
			else nextState <= s1;
		end
		s13 : begin
		end
		endcase
	end
endmodule