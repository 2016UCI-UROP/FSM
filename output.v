module i2c_raw(reset, sda, scl, out);
	input reset, sda, scl;
	output reg[64:0] out;
	parameter s1 = "s1", s2 = "s2", s4 = "s4", s6 = "s6", s8 = "s8", s10 = "s10", s12 = "s12", s14 = "s14", s16 = "s16", s18 = "s18", s20 = "s20", s22 = "s22", s24 = "s24", s26 = "s26", s28 = "s28", s30 = "s30", s32 = "s32", s34 = "s34", s36 = "s36", s38 = "s38", s40 = "s40", s42 = "s42", s44 = "s44", s46 = "s46", s48 = "s48", s50 = "s50", s52 = "s52", s54 = "s54", s56 = "s56", s58 = "s58", s60 = "s60", s62 = "s62", s64 = "s64", s66 = "s66", s68 = "s68", s70 = "s70", s72 = "s72", s74 = "s74", s76 = "s76", s78 = "s78", s80 = "s80", s82 = "s82", s84 = "s84", s86 = "s86", s88 = "s88", s90 = "s90", s92 = "s92", s96 = "s96", s98 = "s98", s100 = "s100";
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
			if(scl == 1 && sda == 0) nextState <= s2;
			else nextState <= s1;
		end
		s2 : begin
			out <= s2;
			if(scl == 1 && sda == 1) nextState <= s4;
			else if(scl == 0) nextState <= s2;
			else nextState <= s1;
		end
		s4 : begin
			out <= s4;
			if(scl == 1 && sda == 0) nextState <= s6;
			else if(scl == 0) nextState <= s4;
			else nextState <= s4;
		end
		s6 : begin
			out <= s6;
			if(scl == 1 && sda == 0) nextState <= s8;
			else if(scl == 0) nextState <= s6;
			else nextState <= s1;
		end
		s8 : begin
			out <= s8;
			if(scl == 1 && sda == 0) nextState <= s10;
			else if(scl == 0) nextState <= s8;
			else nextState <= s1;
		end
		s10 : begin
			out <= s10;
			if(scl == 1 && sda == 1) nextState <= s12;
			else if(scl == 0) nextState <= s10;
			else nextState <= s1;
		end
		s12 : begin
			out <= s12;
			if(scl == 1 && sda == 1) nextState <= s14;
			else if(scl == 0) nextState <= s12;
			else nextState <= s1;
		end
		s14 : begin
			out <= s14;
			if(scl == 1 && sda == 0) nextState <= s16;
			else if(scl == 0) nextState <= s14;
			else nextState <= s1;
		end
		s16 : begin
			out <= s16;
			if(scl == 1 && sda == 1) nextState <= s18;
			else if(scl == 0) nextState <= s16;
			else nextState <= s1;
		end
		s18 : begin
			out <= s18;
			if(scl == 1 && sda == 1) nextState <= s20;
			else if(scl == 0) nextState <= s18;
			else nextState <= s1;
		end
		s20 : begin
			out <= s20;
			if(scl == 1 && sda == 1) nextState <= s22;
			else if(scl == 0) nextState <= s20;
			else nextState <= s1;
		end
		s22 : begin
			out <= s22;
			if(scl == 1 && sda == 1) nextState <= s24;
			else if(scl == 0) nextState <= s22;
			else nextState <= s1;
		end
		s24 : begin
			out <= s24;
			if(scl == 1 && sda == 0) nextState <= s26;
			else if(scl == 0) nextState <= s24;
			else nextState <= s1;
		end
		s26 : begin
			out <= s26;
			if(scl == 1 && sda == 0) nextState <= s28;
			else if(scl == 0) nextState <= s26;
			else nextState <= s1;
		end
		s28 : begin
			out <= s28;
			if(scl == 1 && sda == 1) nextState <= s30;
			else if(scl == 0) nextState <= s28;
			else nextState <= s1;
		end
		s30 : begin
			out <= s30;
			if(scl == 1 && sda == 0) nextState <= s32;
			else if(scl == 0) nextState <= s30;
			else nextState <= s1;
		end
		s32 : begin
			out <= s32;
			if(scl == 1 && sda == 0) nextState <= s34;
			else if(scl == 0) nextState <= s32;
			else nextState <= s1;
		end
		s34 : begin
			out <= s34;
			if(scl == 1 && sda == 0) nextState <= s36;
			else if(scl == 0) nextState <= s34;
			else nextState <= s1;
		end
		s36 : begin
			out <= s36;
			if(scl == 1 && sda == 1) nextState <= s38;
			else if(scl == 0) nextState <= s36;
			else nextState <= s1;
		end
		s38 : begin
			out <= s38;
			if(scl == 1 && sda == 1) nextState <= s40;
			else if(scl == 0) nextState <= s38;
			else nextState <= s1;
		end
		s40 : begin
			out <= s40;
			if(scl == 1 && sda == 0) nextState <= s42;
			else if(scl == 0) nextState <= s40;
			else nextState <= s1;
		end
		s42 : begin
			out <= s42;
			if(scl == 1 && sda == 0) nextState <= s44;
			else if(scl == 0) nextState <= s42;
			else nextState <= s1;
		end
		s44 : begin
			out <= s44;
			if(scl == 1 && sda == 0) nextState <= s46;
			else if(scl == 0) nextState <= s44;
			else nextState <= s1;
		end
		s46 : begin
			out <= s46;
			if(scl == 1 && sda == 1) nextState <= s48;
			else if(scl == 0) nextState <= s46;
			else nextState <= s1;
		end
		s48 : begin
			out <= s48;
			if(scl == 1 && sda == 1) nextState <= s50;
			else if(scl == 0) nextState <= s48;
			else nextState <= s1;
		end
		s50 : begin
			out <= s50;
			if(scl == 1 && sda == 0) nextState <= s52;
			else if(scl == 0) nextState <= s50;
			else nextState <= s1;
		end
		s52 : begin
			out <= s52;
			if(scl == 1 && sda == 1) nextState <= s54;
			else if(scl == 0) nextState <= s52;
			else nextState <= s1;
		end
		s54 : begin
			out <= s54;
			if(scl == 1 && sda == 1) nextState <= s56;
			else if(scl == 0) nextState <= s54;
			else nextState <= s1;
		end
		s56 : begin
			out <= s56;
			if(scl == 1 && sda == 1) nextState <= s58;
			else if(scl == 0) nextState <= s56;
			else nextState <= s1;
		end
		s58 : begin
			out <= s58;
			if(scl == 1 && sda == 1) nextState <= s60;
			else if(scl == 0) nextState <= s58;
			else nextState <= s1;
		end
		s60 : begin
			out <= s60;
			if(scl == 1 && sda == 1) nextState <= s62;
			else if(scl == 0) nextState <= s60;
			else nextState <= s1;
		end
		s62 : begin
			out <= s62;
			if(scl == 1 && sda == 0) nextState <= s64;
			else if(scl == 0) nextState <= s62;
			else nextState <= s1;
		end
		s64 : begin
			out <= s64;
			if(scl == 1 && sda == 0) nextState <= s66;
			else if(scl == 0) nextState <= s64;
			else nextState <= s1;
		end
		s66 : begin
			out <= s66;
			if(scl == 1 && sda == 1) nextState <= s68;
			else if(scl == 0) nextState <= s66;
			else nextState <= s1;
		end
		s68 : begin
			out <= s68;
			if(scl == 1 && sda == 0) nextState <= s70;
			else if(scl == 0) nextState <= s68;
			else nextState <= s1;
		end
		s70 : begin
			out <= s70;
			if(scl == 1 && sda == 0) nextState <= s72;
			else if(scl == 0) nextState <= s70;
			else nextState <= s1;
		end
		s72 : begin
			out <= s72;
			if(scl == 1 && sda == 1) nextState <= s74;
			else if(scl == 0) nextState <= s72;
			else nextState <= s1;
		end
		s74 : begin
			out <= s74;
			if(scl == 1 && sda == 1) nextState <= s76;
			else if(scl == 0) nextState <= s74;
			else nextState <= s1;
		end
		s76 : begin
			out <= s76;
			if(scl == 1 && sda == 1) nextState <= s78;
			else if(scl == 0) nextState <= s76;
			else nextState <= s1;
		end
		s78 : begin
			out <= s78;
			if(scl == 1 && sda == 0) nextState <= s80;
			else if(scl == 0) nextState <= s78;
			else nextState <= s1;
		end
		s80 : begin
			out <= s80;
			if(scl == 1 && sda == 0) nextState <= s82;
			else if(scl == 0) nextState <= s80;
			else nextState <= s1;
		end
		s82 : begin
			out <= s82;
			if(scl == 1 && sda == 1) nextState <= s84;
			else if(scl == 0) nextState <= s82;
			else nextState <= s1;
		end
		s84 : begin
			out <= s84;
			if(scl == 1 && sda == 0) nextState <= s86;
			else if(scl == 0) nextState <= s84;
			else nextState <= s1;
		end
		s86 : begin
			out <= s86;
			if(scl == 1 && sda == 0) nextState <= s88;
			else if(scl == 0) nextState <= s86;
			else nextState <= s1;
		end
		s88 : begin
			out <= s88;
			if(scl == 1 && sda == 0) nextState <= s90;
			else if(scl == 0) nextState <= s88;
			else nextState <= s1;
		end
		s90 : begin
			out <= s90;
			if(scl == 1 && sda == 1) nextState <= s92;
			else if(scl == 0) nextState <= s90;
			else nextState <= s1;
		end
		s92 : begin
			out <= s92;
			if(scl == 1 && sda == 1) nextState <= s96;
			else if(scl == 0) nextState <= s92;
			else nextState <= s1;
		end
		s96 : begin
			out <= s96;
			if(scl == 1 && sda == 1) nextState <= s98;
			else if(scl == 0) nextState <= s96;
			else nextState <= s1;
		end
		s98 : begin
			out <= s98;
			if(scl == 1 && sda == 1) nextState <= s100;
			else if(scl == 0) nextState <= s98;
			else nextState <= s1;
		end
		s100 : begin
		end
		endcase
	end
endmodule