module loopFSM(reset, sda, scl, out);
	input reset, sda, scl;
	output reg[64:0] out;
	parameter s1 = "s1", s2 = "s2", s3 = "s3", s4 = "s4", s5 = "s5", s6 = "s6", s7 = "s7", s8 = "s8", s9 = "s9", s10 = "s10", s11 = "s11", s12 = "s12", s13 = "s13", s14 = "s14", s15 = "s15", s16 = "s16", s17 = "s17", s18 = "s18", s19 = "s19", s20 = "s20", s21 = "s21", s22 = "s22", s23 = "s23", s24 = "s24", s25 = "s25", s26 = "s26", s27 = "s27", s28 = "s28", s29 = "s29", s30 = "s30", s31 = "s31", s32 = "s32", s33 = "s33", s34 = "s34", s35 = "s35", s36 = "s36", s37 = "s37", s38 = "s38", s39 = "s39";
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
			if(scl == 1) nextState <= s2;
			else nextState <= s1;
		end
		s2 : begin
			out <= s2;
			if(sda == 0 && scl == 0) nextState <= s3;
			else nextState <= s1;
		end
		s3 : begin
			out <= s3;
			if(scl == 1) nextState <= s4;
			else nextState <= s1;
		end
		s4 : begin
			out <= s4;
			if(sda == 1 && scl == 0) nextState <= s5;
			else nextState <= s1;
		end
		s5 : begin
			out <= s5;
			if(scl == 1) nextState <= s6;
			else nextState <= s1;
		end
		s6 : begin
			out <= s6;
			if(scl == 0) nextState <= s7;
			else nextState <= s1;
		end
		s7 : begin
			out <= s7;
			if(scl == 1) nextState <= s8;
			else nextState <= s1;
		end
		s8 : begin
			out <= s8;
			if(sda == 0 && scl == 0) nextState <= s9;
			else nextState <= s1;
		end
		s9 : begin
			out <= s9;
			if(scl == 1) nextState <= s10;
			else nextState <= s1;
		end
		s10 : begin
			out <= s10;
			if(sda == 1 && scl == 0) nextState <= s11;
			else nextState <= s1;
		end
		s11 : begin
			out <= s11;
			if(scl == 1) nextState <= s12;
			else nextState <= s1;
		end
		s12 : begin
			out <= s12;
			if(scl == 0) nextState <= s13;
			else nextState <= s1;
		end
		s13 : begin
			out <= s13;
			if(scl == 1) nextState <= s14;
			else nextState <= s1;
		end
		s14 : begin
			out <= s14;
			if(scl == 0) nextState <= s15;
			else nextState <= s1;
		end
		s15 : begin
			out <= s15;
			if(scl == 1) nextState <= s16;
			else nextState <= s1;
		end
		s16 : begin
			out <= s16;
			if(sda == 0 && scl == 0) nextState <= s17;
			else nextState <= s1;
		end
		s17 : begin
			out <= s17;
			if(scl == 1) nextState <= s18;
			else nextState <= s1;
		end
		s18 : begin
			out <= s18;
			if(scl == 0) nextState <= s19;
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
			if(scl == 1) nextState <= s22;
			else nextState <= s1;
		end
		s22 : begin
			out <= s22;
			if(sda == 0 && scl == 0) nextState <= s23;
			else nextState <= s1;
		end
		s23 : begin
			out <= s23;
			if(scl == 1) nextState <= s24;
			else nextState <= s1;
		end
		s24 : begin
			out <= s24;
			if(scl == 0) nextState <= s25;
			else nextState <= s1;
		end
		s25 : begin
			out <= s25;
			if(scl == 1) nextState <= s26;
			else nextState <= s1;
		end
		s26 : begin
			out <= s26;
			if(sda == 1 && scl == 0) nextState <= s27;
			else nextState <= s1;
		end
		s27 : begin
			out <= s27;
			if(scl == 1) nextState <= s28;
			else nextState <= s1;
		end
		s28 : begin
			out <= s28;
			if(scl == 0) nextState <= s29;
			else nextState <= s1;
		end
		s29 : begin
			out <= s29;
			if(scl == 1) nextState <= s30;
			else nextState <= s1;
		end
		s30 : begin
			out <= s30;
			if(sda == 0 && scl == 0) nextState <= s31;
			else nextState <= s1;
		end
		s31 : begin
			out <= s31;
			if(scl == 1) nextState <= s32;
			else nextState <= s1;
		end
		s32 : begin
			out <= s32;
			if(sda == 1 && scl == 0) nextState <= s33;
			else nextState <= s1;
		end
		s33 : begin
			out <= s33;
			if(scl == 1) nextState <= s34;
			else nextState <= s1;
		end
		s34 : begin
			out <= s34;
			if(sda == 1 || sda == 0 || sda === 1'bx) nextState <= s35;
			else nextState <= s1;
		end
		s35 : begin
			out <= s35;
			if(scl == 1) nextState <= s36;
			else nextState <= s1;
		end
		s36 : begin
			out <= s36;
			if(scl == 0) nextState <= s37;
			else nextState <= s1;
		end
		s37 : begin
			out <= s37;
			if(scl == 1) nextState <= s38;
			else nextState <= s1;
		end
		s38 : begin
			out <= s38;
			if(scl == 0) nextState <= s39;
			else nextState <= s1;
		end
		s39 : begin
		end
		endcase
	end
endmodule