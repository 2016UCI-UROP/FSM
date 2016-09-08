
module i2c_raw(reset, scl, sda, out);
	input reset, scl, sda;
	output reg[64:0] out;
	parameter s1 = "s1", s2 = "s2", s3 = "s3", s4 = "s4", s5 = "s5", s6 = "s6", s7 = "s7", s8 = "s8", s9 = "s9", s10 = "s10", s11 = "s11", s12 = "s12", s13 = "s13", s14 = "s14", s15 = "s15", s16 = "s16", s17 = "s17", s18 = "s18", s19 = "s19", s20 = "s20", s21 = "s21", s22 = "s22", s23 = "s23", s24 = "s24", s25 = "s25", s26 = "s26", s27 = "s27", s28 = "s28", s29 = "s29", s30 = "s30", s31 = "s31", s32 = "s32", s33 = "s33", s34 = "s34", s35 = "s35", s36 = "s36", s37 = "s37", s38 = "s38", s39 = "s39", s40 = "s40", s41 = "s41", s42 = "s42", s43 = "s43", s44 = "s44", s45 = "s45", s46 = "s46", s47 = "s47", s48 = "s48", s49 = "s49", s50 = "s50", s51 = "s51", s52 = "s52", s53 = "s53", s54 = "s54", s55 = "s55", s56 = "s56", s57 = "s57", s58 = "s58", s59 = "s59", s60 = "s60", s61 = "s61", s62 = "s62", s63 = "s63", s64 = "s64", s65 = "s65", s66 = "s66", s67 = "s67", s68 = "s68", s69 = "s69", s70 = "s70", s71 = "s71", s72 = "s72", s73 = "s73", s74 = "s74", s75 = "s75", s76 = "s76", s77 = "s77", s78 = "s78", s79 = "s79", s80 = "s80", s81 = "s81", s82 = "s82", s83 = "s83", s84 = "s84", s85 = "s85", s86 = "s86", s87 = "s87", s88 = "s88", s89 = "s89", s90 = "s90", s91 = "s91", s92 = "s92", s93 = "s93", s94 = "s94", s95 = "s95", s96 = "s96", s97 = "s97", s98 = "s98", s99 = "s99", s100 = "s100", s101 = "s101";
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
			if(sda == 0 && scl == 1) nextState <= s2;
			else nextState <= s1;
		end
		s2 : begin
			out <= s2;
			if(sda == 1 && scl == 0) nextState <= s3;
			else if(sda == 0 && scl == 1) nextState <= s2;
			else nextState <= s1;
		end
		s3 : begin
			out <= s3;
			if(sda == 0 && scl == 0) nextState <= s4;
			else if(sda == 1) nextState <= s3;
			else nextState <= s1;
		end
		s4 : begin
			out <= s4;
			if(sda == 0 && scl == 0) nextState <= s5;
			else if(sda == 0) nextState <= s4;
			else nextState <= s1;
		end
		s5 : begin
			out <= s5;
			if(sda == 0 && scl == 0) nextState <= s6;
			else if(sda == 0) nextState <= s5;
			else nextState <= s1;
		end
		s6 : begin
			out <= s6;
			if(sda == 1 && scl == 0) nextState <= s7;
			else if(sda == 0) nextState <= s6;
			else nextState <= s1;
		end
		s7 : begin
			out <= s7;
			if(sda == 1 && scl == 0) nextState <= s8;
			else if(sda == 1) nextState <= s7;
			else nextState <= s1;
		end
		s8 : begin
			out <= s8;
			if(sda == 0 && scl == 0) nextState <= s9;
			else if(sda == 1) nextState <= s8;
			else nextState <= s1;
		end
		s9 : begin
			out <= s9;
			if(sda == 1 && scl == 0) nextState <= s10;
			else if(sda == 0) nextState <= s9;
			else nextState <= s1;
		end
		s10 : begin
		end
		endcase
	end
endmodule

module i2cTestbench3;
	reg RST, CLK;
	reg sda, scl;
	wire[64:0] out;

	i2c_raw f(RST, scl, sda, out);
	always begin
		scl <= 0;
		#5;
		scl <= 1;
		#5;
	end

	initial begin
		RST <= 1;
#5
RST <= 0;
sda <= 0;
#5
sda <= 1;
#10
sda <= 0;
#30
sda <= 1;
#20
sda <= 0;
#10
sda <= 1;
#50
RST <= 1;
	end
endmodule
	