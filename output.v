module FSM(reset, clk, i2, i4, i3, i1, out);
	input reset, clk, i2, i4, i3, i1;
	output reg[16:0] out;
	parameter s1 = 0, s2 = 200, s3 = 700, s4 = 900, s5 = 1300, s6 = 1800, s7 = 2300, s8 = 2800, s9 = 3100, s10 = 3400, s11 = 3600, s12 = 3800, s13 = 4100;
	reg[16:0] state, nextState;
	reg[128:0] label;

	always @(*) begin
		if(reset) begin
			state <= s1;
		end
		else begin
			state <= nextState;
		end
	end

	always @(i2, i4, i3, i1, clk) begin
		case(state)
		s1 : begin
			out <= s1;
			label <= 1'bx;
			if(i3 == 1) nextState <= s2;
			else nextState <= s1;
		end
		s2 : begin
			out <= s2;
			label <= "repeat";
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
			label <= 1'bx;
			if(i4 == 0 && i2 == 1 && i1 == 0) nextState <= s5;
			else nextState <=s4;
		end
		s5 : begin
			out <= s5;
			if(i4 == 1 && i2 == 1 && i1 == 1 && i3 == 1) nextState <= s6;
			else nextState <= s1;
		end
		s6 : begin
			out <= s6;
			if(i3 == 1) nextState <= s7;
			else nextState <= s1;
		end
		s7 : begin
			out <= s7;
			label <= "repeat";
			if(i1 == 1 && i4 == 1) nextState <= s8;
			else nextState <= s1;
		end
		s8 : begin
			out <= s8;
			if(i4 == 0 && i3 == 0) nextState <= s9;
			else nextState <=s8;
		end
		s9 : begin
			out <= s9;
			label <= 1'bx;
			if(i3 == 1) nextState <= s10;
			else nextState <= s1;
		end
		s10 : begin
			out <= s10;
			label <= "repeat";
			if(i2 == 0 && i3 == 1) nextState <= s11;
			else nextState <= s1;
		end
		s11 : begin
			out <= s11;
			if(i1 == 1 && i4 == 1) nextState <= s12;
			else nextState <= s1;
		end
		s12 : begin
			out <= s12;
			label <= 1'bx;
			if(i3 == 0) nextState <= s13;
			else nextState <= s1;
		end
		s13 : begin
		end
		endcase
	end
endmodule