module dontcareFSM(reset, scl, sda, out);
	input reset, scl, sda;
	output reg[64:0] out;
	parameter s1 = "s1", s2 = "s2", s3 = "s3", s4 = "s4", s5 = "s5", s6 = "s6", s7 = "s7", s8 = "s8", s9 = "s9", s10 = "s10", s11 = "s11", s17 = "s17", s18 = "s18", s19 = "s19", s20 = "s20", s21 = "s21", s22 = "s22", s23 = "s23", s31 = "s31", s32 = "s32", s33 = "s33", s34 = "s34", s35 = "s35", s36 = "s36", s37 = "s37", s38 = "s38", s39 = "s39", s40 = "s40", s41 = "s41", s42 = "s42", s43 = "s43", s44 = "s44", s45 = "s45", s46 = "s46", s47 = "s47", s48 = "s48", s49 = "s49", s50 = "s50", s51 = "s51", s52 = "s52", s53 = "s53", s54 = "s54", s55 = "s55", s56 = "s56", s57 = "s57", s58 = "s58", s59 = "s59", s60 = "s60", s61 = "s61";
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
			if(scl == 0) nextState <= s17;
			else if(scl == 1) nextState <= s11;
			else nextState <= s1;
		end
		s17 : begin
			out <= s17;
			if(sda == 1 && scl == 0) nextState <= s18;
			else if(scl == 0) nextState <= s17;
			else nextState <= s17;
		end
		s18 : begin
			out <= s18;
			if(scl == 1) nextState <= s19;
			else if(sda == 1 && scl == 0) nextState <= s18;
			else nextState <= s1;
		end
		s19 : begin
			out <= s19;
			if(scl == 0) nextState <= s20;
			else if(scl == 1) nextState <= s19;
			else nextState <= s1;
		end
		s20 : begin
			out <= s20;
			if(scl == 1) nextState <= s21;
			else if(scl == 0) nextState <= s20;
			else nextState <= s1;
		end
		s21 : begin
			out <= s21;
			if(sda == 0 && scl == 0) nextState <= s22;
			else if(scl == 1) nextState <= s21;
			else nextState <= s1;
		end
		s22 : begin
			out <= s22;
			if(scl == 1) nextState <= s23;
			else if(sda == 0 && scl == 0) nextState <= s22;
			else nextState <= s1;
		end
		s23 : begin
			out <= s23;
			if(scl == 0) nextState <= s31;
			else if(scl == 1) nextState <= s23;
			else nextState <= s1;
		end
		s31 : begin
			out <= s31;
			if(sda == 1 && scl == 0) nextState <= s32;
			else if(scl == 0) nextState <= s31;
			else nextState <= s31;
		end
		s32 : begin
			out <= s32;
			if(scl == 1) nextState <= s33;
			else if(sda == 1 && scl == 0) nextState <= s32;
			else nextState <= s1;
		end
		s33 : begin
			out <= s33;
			if(scl == 0) nextState <= s34;
			else if(scl == 1) nextState <= s33;
			else nextState <= s1;
		end
		s34 : begin
			out <= s34;
			if(scl == 1) nextState <= s35;
			else if(scl == 0) nextState <= s34;
			else nextState <= s1;
		end
		s35 : begin
			out <= s35;
			if(sda == 0 && scl == 0) nextState <= s36;
			else if(scl == 1) nextState <= s35;
			else nextState <= s1;
		end
		s36 : begin
			out <= s36;
			if(scl == 1) nextState <= s37;
			else if(sda == 0 && scl == 0) nextState <= s36;
			else nextState <= s1;
		end
		s37 : begin
			out <= s37;
			if(sda == 1 && scl == 0) nextState <= s38;
			else if(scl == 1) nextState <= s37;
			else nextState <= s1;
		end
		s38 : begin
			out <= s38;
			if(scl == 1) nextState <= s39;
			else if(sda == 1 && scl == 0) nextState <= s38;
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
			if(sda == 0 && scl == 0) nextState <= s44;
			else if(scl == 1) nextState <= s43;
			else nextState <= s1;
		end
		s44 : begin
			out <= s44;
			if(scl == 1) nextState <= s45;
			else if(sda == 0 && scl == 0) nextState <= s44;
			else nextState <= s1;
		end
		s45 : begin
			out <= s45;
			if(sda == 1 && scl == 0) nextState <= s46;
			else if(scl == 1) nextState <= s45;
			else nextState <= s1;
		end
		s46 : begin
			out <= s46;
			if(scl == 1) nextState <= s47;
			else if(sda == 1 && scl == 0) nextState <= s46;
			else nextState <= s1;
		end
		s47 : begin
			out <= s47;
			if(scl == 0) nextState <= s48;
			else if(scl == 1) nextState <= s47;
			else nextState <= s1;
		end
		s48 : begin
			out <= s48;
			if(scl == 1) nextState <= s49;
			else if(scl == 0) nextState <= s48;
			else nextState <= s1;
		end
		s49 : begin
			out <= s49;
			if(sda == 0 && scl == 0) nextState <= s50;
			else if(scl == 1) nextState <= s49;
			else nextState <= s1;
		end
		s50 : begin
			out <= s50;
			if(scl == 1) nextState <= s51;
			else if(sda == 0 && scl == 0) nextState <= s50;
			else nextState <= s1;
		end
		s51 : begin
			out <= s51;
			if(scl == 0) nextState <= s52;
			else if(scl == 1) nextState <= s51;
			else nextState <= s1;
		end
		s52 : begin
			out <= s52;
			if(scl == 1) nextState <= s53;
			else if(scl == 0) nextState <= s52;
			else nextState <= s1;
		end
		s53 : begin
			out <= s53;
			if(scl == 0) nextState <= s54;
			else if(scl == 1) nextState <= s53;
			else nextState <= s1;
		end
		s54 : begin
			out <= s54;
			if(scl == 1) nextState <= s55;
			else if(scl == 0) nextState <= s54;
			else nextState <= s1;
		end
		s55 : begin
			out <= s55;
			if(sda == 1 && scl == 0) nextState <= s56;
			else if(scl == 1) nextState <= s55;
			else nextState <= s1;
		end
		s56 : begin
			out <= s56;
			if(scl == 1) nextState <= s57;
			else if(sda == 1 && scl == 0) nextState <= s56;
			else nextState <= s1;
		end
		s57 : begin
			out <= s57;
			if(sda == 0 && scl == 0) nextState <= s58;
			else if(scl == 1) nextState <= s57;
			else nextState <= s1;
		end
		s58 : begin
			out <= s58;
			if(scl == 1) nextState <= s59;
			else if(sda == 0 && scl == 0) nextState <= s58;
			else nextState <= s1;
		end
		s59 : begin
			out <= s59;
			if(sda == 1) nextState <= s60;
			else if(scl == 1) nextState <= s59;
			else nextState <= s1;
		end
		s60 : begin
			out <= s60;
			if(scl == 0) nextState <= s61;
			else if(sda == 1) nextState <= s60;
			else nextState <= s1;
		end
		s61 : begin
		end
		endcase
	end
endmodule