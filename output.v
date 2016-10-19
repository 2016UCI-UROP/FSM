module unidFSM(reset, sda, scl, out);
	input reset, sda, scl;
	output reg[64:0] out;
	parameter s1 = "s1", s2 = "s2", s3 = "s3", s4 = "s4", s5 = "s5", s6 = "s6", s7 = "s7", s8 = "s8", s9 = "s9", s10 = "s10", s11 = "s11", s12 = "s12", s13 = "s13", s14 = "s14", s15 = "s15", s16 = "s16", s17 = "s17", s18 = "s18", s19 = "s19", s20 = "s20", s21 = "s21", s22 = "s22", s23 = "s23", s24 = "s24", s25 = "s25", s26 = "s26", s27 = "s27", s28 = "s28", s29 = "s29", s30 = "s30", s31 = "s31", s32 = "s32", s33 = "s33", s34 = "s34", s35 = "s35", s36 = "s36", s37 = "s37", s38 = "s38", s39 = "s39", s40 = "s40", s41 = "s41", s42 = "s42", s43 = "s43", s44 = "s44", s45 = "s45", s46 = "s46", s47 = "s47", s48 = "s48", s49 = "s49";
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
			if(sda == 0) nextState <= s3;
			else if(scl == 1) nextState <= s2;
			else nextState <= s1;
		end
		s3 : begin
			out <= s3;
			if(sda == 1 && scl == 0) nextState <= s4;
			else if(sda == 0) nextState <= s3;
			else nextState <= s1;
		end
		s4 : begin
			out <= s4;
			if(scl == 1) nextState <= s5;
			else if(sda == 1 && scl == 0) nextState <= s4;
			else nextState <= s1;
		end
		s5 : begin
			out <= s5;
			if(sda == 0 && scl == 0) nextState <= s6;
			else if(scl == 1) nextState <= s5;
			else nextState <= s1;
		end
		s6 : begin
			out <= s6;
			if(scl == 1) nextState <= s7;
			else if(sda == 0 && scl == 0) nextState <= s6;
			else nextState <= s1;
		end
		s7 : begin
			out <= s7;
			if(scl == 0) nextState <= s8;
			else if(scl == 1) nextState <= s7;
			else nextState <= s1;
		end
		s8 : begin
			out <= s8;
			if(scl == 1) nextState <= s9;
			else if(scl == 0) nextState <= s8;
			else nextState <= s1;
		end
		s9 : begin
			out <= s9;
			if(sda == 1 && scl == 0) nextState <= s10;
			else if(scl == 1) nextState <= s9;
			else nextState <= s1;
		end
		s10 : begin
			out <= s10;
			if(scl == 1) nextState <= s11;
			else if(sda == 1 && scl == 0) nextState <= s10;
			else nextState <= s1;
		end
		s11 : begin
			out <= s11;
			if(sda === 1'bx && scl === 1'bx) nextState <= s12;
			else if(scl == 1) nextState <= s11;
			else nextState <= s1;
		end
		s12 : begin
			out <= s12;
			if(sda == 1 && scl == 0) nextState <= s13;
			else if(sda === 1'bx && scl === 1'bx) nextState <= s12;
			else nextState <= s12;
		end
		s13 : begin
			out <= s13;
			if(scl == 1) nextState <= s14;
			else if(sda == 1 && scl == 0) nextState <= s13;
			else nextState <= s1;
		end
		s14 : begin
			out <= s14;
			if(scl == 0) nextState <= s15;
			else if(scl == 1) nextState <= s14;
			else nextState <= s1;
		end
		s15 : begin
			out <= s15;
			if(scl == 1) nextState <= s16;
			else if(scl == 0) nextState <= s15;
			else nextState <= s1;
		end
		s16 : begin
			out <= s16;
			if(sda == 0 && scl == 0) nextState <= s17;
			else if(scl == 1) nextState <= s16;
			else nextState <= s1;
		end
		s17 : begin
			out <= s17;
			if(scl == 1) nextState <= s18;
			else if(sda == 0 && scl == 0) nextState <= s17;
			else nextState <= s1;
		end
		s18 : begin
			out <= s18;
			if(sda === 1'bx && scl === 1'bx) nextState <= s19;
			else if(scl == 1) nextState <= s18;
			else nextState <= s1;
		end
		s19 : begin
			out <= s19;
			if(sda == 1 && scl == 0) nextState <= s20;
			else if(sda === 1'bx && scl === 1'bx) nextState <= s19;
			else nextState <= s19;
		end
		s20 : begin
			out <= s20;
			if(scl == 1) nextState <= s21;
			else if(sda == 1 && scl == 0) nextState <= s20;
			else nextState <= s1;
		end
		s21 : begin
			out <= s21;
			if(scl == 0) nextState <= s22;
			else if(scl == 1) nextState <= s21;
			else nextState <= s1;
		end
		s22 : begin
			out <= s22;
			if(scl == 1) nextState <= s23;
			else if(scl == 0) nextState <= s22;
			else nextState <= s1;
		end
		s23 : begin
			out <= s23;
			if(sda == 0 && scl == 0) nextState <= s24;
			else if(scl == 1) nextState <= s23;
			else nextState <= s1;
		end
		s24 : begin
			out <= s24;
			if(scl == 1) nextState <= s25;
			else if(sda == 0 && scl == 0) nextState <= s24;
			else nextState <= s1;
		end
		s25 : begin
			out <= s25;
			if(sda == 1 && scl == 0) nextState <= s26;
			else if(scl == 1) nextState <= s25;
			else nextState <= s1;
		end
		s26 : begin
			out <= s26;
			if(scl == 1) nextState <= s27;
			else if(sda == 1 && scl == 0) nextState <= s26;
			else nextState <= s1;
		end
		s27 : begin
			out <= s27;
			if(scl == 0) nextState <= s28;
			else if(scl == 1) nextState <= s27;
			else nextState <= s1;
		end
		s28 : begin
			out <= s28;
			if(scl == 1) nextState <= s29;
			else if(scl == 0) nextState <= s28;
			else nextState <= s1;
		end
		s29 : begin
			out <= s29;
			if(scl == 0) nextState <= s30;
			else if(scl == 1) nextState <= s29;
			else nextState <= s1;
		end
		s30 : begin
			out <= s30;
			if(scl == 1) nextState <= s31;
			else if(scl == 0) nextState <= s30;
			else nextState <= s1;
		end
		s31 : begin
			out <= s31;
			if(sda == 0 && scl == 0) nextState <= s32;
			else if(scl == 1) nextState <= s31;
			else nextState <= s1;
		end
		s32 : begin
			out <= s32;
			if(scl == 1) nextState <= s33;
			else if(sda == 0 && scl == 0) nextState <= s32;
			else nextState <= s1;
		end
		s33 : begin
			out <= s33;
			if(sda == 1 && scl == 0) nextState <= s34;
			else if(scl == 1) nextState <= s33;
			else nextState <= s1;
		end
		s34 : begin
			out <= s34;
			if(scl == 1) nextState <= s35;
			else if(sda == 1 && scl == 0) nextState <= s34;
			else nextState <= s1;
		end
		s35 : begin
			out <= s35;
			if(scl == 0) nextState <= s36;
			else if(scl == 1) nextState <= s35;
			else nextState <= s1;
		end
		s36 : begin
			out <= s36;
			if(scl == 1) nextState <= s37;
			else if(scl == 0) nextState <= s36;
			else nextState <= s1;
		end
		s37 : begin
			out <= s37;
			if(sda == 0 && scl == 0) nextState <= s38;
			else if(scl == 1) nextState <= s37;
			else nextState <= s1;
		end
		s38 : begin
			out <= s38;
			if(scl == 1) nextState <= s39;
			else if(sda == 0 && scl == 0) nextState <= s38;
			else nextState <= s1;
		end
		s39 : begin
			out <= s39;
			if(scl == 0) nextState <= s40;
			else if(scl == 1) nextState <= s39;
			else nextState <= s1;
		end
		s40 : begin
			out <= s40;
			if(scl == 1) nextState <= s41;
			else if(scl == 0) nextState <= s40;
			else nextState <= s1;
		end
		s41 : begin
			out <= s41;
			if(scl == 0) nextState <= s42;
			else if(scl == 1) nextState <= s41;
			else nextState <= s1;
		end
		s42 : begin
			out <= s42;
			if(scl == 1) nextState <= s43;
			else if(scl == 0) nextState <= s42;
			else nextState <= s1;
		end
		s43 : begin
			out <= s43;
			if(sda == 1 && scl == 0) nextState <= s44;
			else if(scl == 1) nextState <= s43;
			else nextState <= s1;
		end
		s44 : begin
			out <= s44;
			if(scl == 1) nextState <= s45;
			else if(sda == 1 && scl == 0) nextState <= s44;
			else nextState <= s1;
		end
		s45 : begin
			out <= s45;
			if(sda == 0 && scl == 0) nextState <= s46;
			else if(scl == 1) nextState <= s45;
			else nextState <= s1;
		end
		s46 : begin
			out <= s46;
			if(scl == 1) nextState <= s47;
			else if(sda == 0 && scl == 0) nextState <= s46;
			else nextState <= s1;
		end
		s47 : begin
			out <= s47;
			if(sda == 1) nextState <= s48;
			else if(scl == 1) nextState <= s47;
			else nextState <= s1;
		end
		s48 : begin
			out <= s48;
			if(scl == 0) nextState <= s49;
			else if(sda == 1) nextState <= s48;
			else nextState <= s1;
		end
		s49 : begin
		end
		endcase
	end
endmodule