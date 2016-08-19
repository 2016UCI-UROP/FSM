module i2c_raw(reset, clk, sda, scl, out);
	input reset, clk, sda, scl;
	output reg[64:0] out;
	parameter s1 = "s1", s2 = "s2", s3 = "s3", s4 = "s4", s5 = "s5", s6 = "s6", s7 = "s7", s8 = "s8", s9 = "s9", s10 = "s10", s11 = "s11", s12 = "s12", s13 = "s13", s14 = "s14", s20 = "s20", s21 = "s21", s22 = "s22", s23 = "s23", s24 = "s24", s25 = "s25", s26 = "s26", s27 = "s27", s28 = "s28", s29 = "s29", s30 = "s30", s31 = "s31", s32 = "s32", s33 = "s33", s34 = "s34", s35 = "s35", s36 = "s36", s37 = "s37", s38 = "s38", s39 = "s39", s40 = "s40", s41 = "s41", s42 = "s42", s43 = "s43", s44 = "s44", s45 = "s45", s46 = "s46", s47 = "s47", s48 = "s48", s49 = "s49", s50 = "s50", s51 = "s51", s52 = "s52", s53 = "s53", s54 = "s54", s55 = "s55", s56 = "s56", s57 = "s57", s58 = "s58", s59 = "s59", s60 = "s60", s61 = "s61", s62 = "s62", s63 = "s63", s64 = "s64", s65 = "s65", s66 = "s66", s67 = "s67", s68 = "s68", s69 = "s69", s70 = "s70", s71 = "s71", s72 = "s72", s73 = "s73", s74 = "s74", s75 = "s75", s76 = "s76", s77 = "s77", s78 = "s78", s79 = "s79", s80 = "s80", s81 = "s81", s82 = "s82", s83 = "s83", s84 = "s84", s85 = "s85", s86 = "s86", s87 = "s87", s88 = "s88", s89 = "s89", s90 = "s90", s91 = "s91", s92 = "s92", s93 = "s93", s94 = "s94", s95 = "s95", s96 = "s96", s97 = "s97", s98 = "s98", s99 = "s99", s100 = "s100", s101 = "s101", s102 = "s102";
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

	always @(sda, scl, clk) begin
		case(state)
		s1 : begin
			out <= s1;
			label <= 1'bx;
			if(sda == 0 && scl == 1) nextState <= s2;
<<<<<<< HEAD
			else nextState <= s1;
=======
			else nextState <=s1;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
		end
		s2 : begin
			out <= s2;
			if(sda == 1 && scl == 0) nextState <= s3;
<<<<<<< HEAD
=======
			else if(sda == 0 && scl == 1) nextState <= s2;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s3 : begin
			out <= s3;
			if(scl == 1) nextState <= s4;
			else if(sda == 1 && scl == 0) nextState <= s3;
			else nextState <= s1;
		end
		s4 : begin
			out <= s4;
			if(sda == 0 && scl == 0) nextState <= s5;
<<<<<<< HEAD
=======
			else if(scl == 1) nextState <= s4;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s5 : begin
			out <= s5;
			if(scl == 1) nextState <= s6;
			else if(sda == 0 && scl == 0) nextState <= s5;
			else nextState <= s1;
		end
		s6 : begin
			out <= s6;
			if(scl == 0) nextState <= s7;
			else if(scl == 1) nextState <= s6;
			else nextState <= s1;
		end
		s7 : begin
			out <= s7;
			if(scl == 1) nextState <= s8;
			else if(scl == 0) nextState <= s7;
			else nextState <= s1;
		end
		s8 : begin
			out <= s8;
			if(scl == 0) nextState <= s9;
			else if(scl == 1) nextState <= s8;
			else nextState <= s1;
		end
		s9 : begin
			out <= s9;
			if(scl == 1) nextState <= s10;
			else if(scl == 0) nextState <= s9;
			else nextState <= s1;
		end
		s10 : begin
			out <= s10;
			if(sda == 1 && scl == 0) nextState <= s11;
<<<<<<< HEAD
=======
			else if(scl == 1) nextState <= s10;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s11 : begin
			out <= s11;
			if(scl == 1) nextState <= s12;
			else if(sda == 1 && scl == 0) nextState <= s11;
			else nextState <= s1;
		end
		s12 : begin
			out <= s12;
			if(scl == 0) nextState <= s13;
			else if(scl == 1) nextState <= s12;
			else nextState <= s1;
		end
		s13 : begin
			out <= s13;
			if(scl == 1) nextState <= s14;
			else if(scl == 0) nextState <= s13;
			else nextState <= s1;
		end
		s14 : begin
			out <= s14;
<<<<<<< HEAD
			if(sda == 0 && scl == 0) nextState <= s15;
			else nextState <= s1;
		end
		s15 : begin
			out <= s15;
			if(scl == 1) nextState <= s16;
			else nextState <= s1;
		end
		s16 : begin
			out <= s16;
			if(sda == 1 && scl == 0) nextState <= s17;
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
=======
			if(scl == 0) nextState <= s20;
			else if(scl == 1) nextState <= s14;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s20 : begin
			out <= s20;
			if(sda == 0 && scl == 0) nextState <= s21;
			else if(scl == 0) nextState <= s20;
			else nextState <=s20;
		end
		s21 : begin
			out <= s21;
			if(scl == 1) nextState <= s22;
			else if(sda == 0 && scl == 0) nextState <= s21;
			else nextState <= s1;
		end
		s22 : begin
			out <= s22;
			if(sda == 1 && scl == 0) nextState <= s23;
			else if(scl == 1) nextState <= s22;
			else nextState <= s1;
		end
		s23 : begin
			out <= s23;
			if(scl == 1) nextState <= s24;
			else if(sda == 1 && scl == 0) nextState <= s23;
			else nextState <= s1;
		end
		s24 : begin
			out <= s24;
<<<<<<< HEAD
			if(sda == 0 && scl == 0) nextState <= s25;
=======
			if(scl == 0) nextState <= s25;
			else if(scl == 1) nextState <= s24;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s25 : begin
			out <= s25;
			if(scl == 1) nextState <= s26;
			else if(scl == 0) nextState <= s25;
			else nextState <= s1;
		end
		s26 : begin
			out <= s26;
			if(scl == 0) nextState <= s27;
			else if(scl == 1) nextState <= s26;
			else nextState <= s1;
		end
		s27 : begin
			out <= s27;
			if(scl == 1) nextState <= s28;
			else if(scl == 0) nextState <= s27;
			else nextState <= s1;
		end
		s28 : begin
			out <= s28;
<<<<<<< HEAD
			if(sda == 1 && scl == 0) nextState <= s29;
=======
			if(scl == 0) nextState <= s29;
			else if(scl == 1) nextState <= s28;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s29 : begin
			out <= s29;
			if(scl == 1) nextState <= s30;
			else if(scl == 0) nextState <= s29;
			else nextState <= s1;
		end
		s30 : begin
			out <= s30;
			if(sda == 0 && scl == 0) nextState <= s31;
<<<<<<< HEAD
=======
			else if(scl == 1) nextState <= s30;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s31 : begin
			out <= s31;
			if(scl == 1) nextState <= s32;
			else if(sda == 0 && scl == 0) nextState <= s31;
			else nextState <= s1;
		end
		s32 : begin
			out <= s32;
			if(scl == 0) nextState <= s33;
			else if(scl == 1) nextState <= s32;
			else nextState <= s1;
		end
		s33 : begin
			out <= s33;
			if(scl == 1) nextState <= s34;
			else if(scl == 0) nextState <= s33;
			else nextState <= s1;
		end
		s34 : begin
			out <= s34;
			if(sda == 1 && scl == 0) nextState <= s35;
			else if(scl == 1) nextState <= s34;
			else nextState <= s1;
		end
		s35 : begin
			out <= s35;
			if(scl == 1) nextState <= s36;
			else if(sda == 1 && scl == 0) nextState <= s35;
			else nextState <= s1;
		end
		s36 : begin
			out <= s36;
<<<<<<< HEAD
			if(sda == 1 && scl == 0) nextState <= s37;
=======
			if(sda == 0 && scl == 0) nextState <= s37;
			else if(scl == 1) nextState <= s36;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s37 : begin
			out <= s37;
			if(scl == 1) nextState <= s38;
			else if(sda == 0 && scl == 0) nextState <= s37;
			else nextState <= s1;
		end
		s38 : begin
			out <= s38;
			if(scl == 0) nextState <= s39;
			else if(scl == 1) nextState <= s38;
			else nextState <= s1;
		end
		s39 : begin
			out <= s39;
			if(scl == 1) nextState <= s40;
			else if(scl == 0) nextState <= s39;
			else nextState <= s1;
		end
		s40 : begin
			out <= s40;
<<<<<<< HEAD
			if(sda == 0 && scl == 0) nextState <= s41;
=======
			if(scl == 0) nextState <= s41;
			else if(scl == 1) nextState <= s40;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s41 : begin
			out <= s41;
			if(scl == 1) nextState <= s42;
			else if(scl == 0) nextState <= s41;
			else nextState <= s1;
		end
		s42 : begin
			out <= s42;
			if(sda == 1 && scl == 0) nextState <= s43;
			else if(scl == 1) nextState <= s42;
			else nextState <= s1;
		end
		s43 : begin
			out <= s43;
			if(scl == 1) nextState <= s44;
			else if(sda == 1 && scl == 0) nextState <= s43;
			else nextState <= s1;
		end
		s44 : begin
			out <= s44;
			if(scl == 0) nextState <= s45;
			else if(scl == 1) nextState <= s44;
			else nextState <= s1;
		end
		s45 : begin
			out <= s45;
			if(scl == 1) nextState <= s46;
			else if(scl == 0) nextState <= s45;
			else nextState <= s1;
		end
		s46 : begin
			out <= s46;
<<<<<<< HEAD
			if(sda == 1 && scl == 0) nextState <= s47;
=======
			if(sda == 0 && scl == 0) nextState <= s47;
			else if(scl == 1) nextState <= s46;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s47 : begin
			out <= s47;
			if(scl == 1) nextState <= s48;
			else if(sda == 0 && scl == 0) nextState <= s47;
			else nextState <= s1;
		end
		s48 : begin
			out <= s48;
			if(scl == 0) nextState <= s49;
			else if(scl == 1) nextState <= s48;
			else nextState <= s1;
		end
		s49 : begin
			out <= s49;
			if(scl == 1) nextState <= s50;
			else if(scl == 0) nextState <= s49;
			else nextState <= s1;
		end
		s50 : begin
			out <= s50;
<<<<<<< HEAD
			if(sda == 0 && scl == 0) nextState <= s51;
=======
			if(scl == 0) nextState <= s51;
			else if(scl == 1) nextState <= s50;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s51 : begin
			out <= s51;
			if(scl == 1) nextState <= s52;
			else if(scl == 0) nextState <= s51;
			else nextState <= s1;
		end
		s52 : begin
			out <= s52;
			if(sda == 1 && scl == 0) nextState <= s53;
<<<<<<< HEAD
=======
			else if(scl == 1) nextState <= s52;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s53 : begin
			out <= s53;
			if(scl == 1) nextState <= s54;
			else if(sda == 1 && scl == 0) nextState <= s53;
			else nextState <= s1;
		end
		s54 : begin
			out <= s54;
			if(scl == 0) nextState <= s55;
			else if(scl == 1) nextState <= s54;
			else nextState <= s1;
		end
		s55 : begin
			out <= s55;
			if(scl == 1) nextState <= s56;
			else if(scl == 0) nextState <= s55;
			else nextState <= s1;
		end
		s56 : begin
			out <= s56;
			if(sda == 0 && scl == 0) nextState <= s57;
			else if(scl == 1) nextState <= s56;
			else nextState <= s1;
		end
		s57 : begin
			out <= s57;
			if(scl == 1) nextState <= s58;
			else if(sda == 0 && scl == 0) nextState <= s57;
			else nextState <= s1;
		end
		s58 : begin
			out <= s58;
			if(sda == 1 && scl == 0) nextState <= s59;
			else if(scl == 1) nextState <= s58;
			else nextState <= s1;
		end
		s59 : begin
			out <= s59;
			if(scl == 1) nextState <= s60;
			else if(sda == 1 && scl == 0) nextState <= s59;
			else nextState <= s1;
		end
		s60 : begin
			out <= s60;
			if(scl == 0) nextState <= s61;
			else if(scl == 1) nextState <= s60;
			else nextState <= s1;
		end
		s61 : begin
			out <= s61;
			if(scl == 1) nextState <= s62;
			else if(scl == 0) nextState <= s61;
			else nextState <= s1;
		end
		s62 : begin
			out <= s62;
<<<<<<< HEAD
			if(sda == 0 && scl == 0) nextState <= s63;
=======
			if(scl == 0) nextState <= s63;
			else if(scl == 1) nextState <= s62;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s63 : begin
			out <= s63;
			if(scl == 1) nextState <= s64;
			else if(scl == 0) nextState <= s63;
			else nextState <= s1;
		end
		s64 : begin
			out <= s64;
			if(scl == 0) nextState <= s65;
			else if(scl == 1) nextState <= s64;
			else nextState <= s1;
		end
		s65 : begin
			out <= s65;
			if(scl == 1) nextState <= s66;
			else if(scl == 0) nextState <= s65;
			else nextState <= s1;
		end
		s66 : begin
			out <= s66;
<<<<<<< HEAD
			if(sda == 1 && scl == 0) nextState <= s67;
=======
			if(scl == 0) nextState <= s67;
			else if(scl == 1) nextState <= s66;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s67 : begin
			out <= s67;
			if(scl == 1) nextState <= s68;
			else if(scl == 0) nextState <= s67;
			else nextState <= s1;
		end
		s68 : begin
			out <= s68;
			if(sda == 0 && scl == 0) nextState <= s69;
<<<<<<< HEAD
=======
			else if(scl == 1) nextState <= s68;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s69 : begin
			out <= s69;
			if(scl == 1) nextState <= s70;
			else if(sda == 0 && scl == 0) nextState <= s69;
			else nextState <= s1;
		end
		s70 : begin
			out <= s70;
			if(scl == 0) nextState <= s71;
			else if(scl == 1) nextState <= s70;
			else nextState <= s1;
		end
		s71 : begin
			out <= s71;
			if(scl == 1) nextState <= s72;
			else if(scl == 0) nextState <= s71;
			else nextState <= s1;
		end
		s72 : begin
			out <= s72;
			if(sda == 1 && scl == 0) nextState <= s73;
<<<<<<< HEAD
=======
			else if(scl == 1) nextState <= s72;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s73 : begin
			out <= s73;
			if(scl == 1) nextState <= s74;
			else if(sda == 1 && scl == 0) nextState <= s73;
			else nextState <= s1;
		end
		s74 : begin
			out <= s74;
			if(sda == 0 && scl == 0) nextState <= s75;
			else if(scl == 1) nextState <= s74;
			else nextState <= s1;
		end
		s75 : begin
			out <= s75;
			if(scl == 1) nextState <= s76;
			else if(sda == 0 && scl == 0) nextState <= s75;
			else nextState <= s1;
		end
		s76 : begin
			out <= s76;
			if(scl == 0) nextState <= s77;
			else if(scl == 1) nextState <= s76;
			else nextState <= s1;
		end
		s77 : begin
			out <= s77;
			if(scl == 1) nextState <= s78;
			else if(scl == 0) nextState <= s77;
			else nextState <= s1;
		end
		s78 : begin
			out <= s78;
<<<<<<< HEAD
			if(sda == 0 && scl == 0) nextState <= s79;
=======
			if(sda == 1 && scl == 0) nextState <= s79;
			else if(scl == 1) nextState <= s78;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s79 : begin
			out <= s79;
			if(scl == 1) nextState <= s80;
			else if(sda == 1 && scl == 0) nextState <= s79;
			else nextState <= s1;
		end
		s80 : begin
			out <= s80;
			if(scl == 0) nextState <= s81;
			else if(scl == 1) nextState <= s80;
			else nextState <= s1;
		end
		s81 : begin
			out <= s81;
			if(scl == 1) nextState <= s82;
			else if(scl == 0) nextState <= s81;
			else nextState <= s1;
		end
		s82 : begin
			out <= s82;
<<<<<<< HEAD
			if(sda == 1 && scl == 0) nextState <= s83;
=======
			if(scl == 0) nextState <= s83;
			else if(scl == 1) nextState <= s82;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s83 : begin
			out <= s83;
			if(scl == 1) nextState <= s84;
			else if(scl == 0) nextState <= s83;
			else nextState <= s1;
		end
		s84 : begin
			out <= s84;
			if(sda == 0 && scl == 0) nextState <= s85;
<<<<<<< HEAD
=======
			else if(scl == 1) nextState <= s84;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s85 : begin
			out <= s85;
			if(scl == 1) nextState <= s86;
			else if(sda == 0 && scl == 0) nextState <= s85;
			else nextState <= s1;
		end
		s86 : begin
			out <= s86;
			if(scl == 0) nextState <= s87;
			else if(scl == 1) nextState <= s86;
			else nextState <= s1;
		end
		s87 : begin
			out <= s87;
			if(scl == 1) nextState <= s88;
			else if(scl == 0) nextState <= s87;
			else nextState <= s1;
		end
		s88 : begin
			out <= s88;
			if(sda == 1 && scl == 0) nextState <= s89;
			else if(scl == 1) nextState <= s88;
			else nextState <= s1;
		end
		s89 : begin
			out <= s89;
			if(scl == 1) nextState <= s90;
			else if(sda == 1 && scl == 0) nextState <= s89;
			else nextState <= s1;
		end
		s90 : begin
			out <= s90;
<<<<<<< HEAD
			if(sda == 1 && scl == 0) nextState <= s91;
=======
			if(sda == 0 && scl == 0) nextState <= s91;
			else if(scl == 1) nextState <= s90;
>>>>>>> 17d935b8cbfe005b8f9ec0afef8e18ec3e7a1a9e
			else nextState <= s1;
		end
		s91 : begin
			out <= s91;
			if(scl == 1) nextState <= s92;
			else if(sda == 0 && scl == 0) nextState <= s91;
			else nextState <= s1;
		end
		s92 : begin
			out <= s92;
			if(scl == 0) nextState <= s93;
			else if(scl == 1) nextState <= s92;
			else nextState <= s1;
		end
		s93 : begin
			out <= s93;
			if(scl == 1) nextState <= s94;
			else if(scl == 0) nextState <= s93;
			else nextState <= s1;
		end
		s94 : begin
			out <= s94;
			if(scl == 0) nextState <= s95;
			else if(scl == 1) nextState <= s94;
			else nextState <= s1;
		end
		s95 : begin
			out <= s95;
			if(scl == 1) nextState <= s96;
			else if(scl == 0) nextState <= s95;
			else nextState <= s1;
		end
		s96 : begin
			out <= s96;
			if(sda == 1 && scl == 0) nextState <= s97;
			else if(scl == 1) nextState <= s96;
			else nextState <= s1;
		end
		s97 : begin
			out <= s97;
			if(scl == 1) nextState <= s98;
			else if(sda == 1 && scl == 0) nextState <= s97;
			else nextState <= s1;
		end
		s98 : begin
			out <= s98;
			if(scl == 0) nextState <= s99;
			else if(scl == 1) nextState <= s98;
			else nextState <= s1;
		end
		s99 : begin
			out <= s99;
			if(sda == 0) nextState <= s100;
			else if(scl == 0) nextState <= s99;
			else nextState <= s1;
		end
		s100 : begin
			out <= s100;
			if(scl == 1) nextState <= s101;
			else if(sda == 0) nextState <= s100;
			else nextState <= s1;
		end
		s101 : begin
			out <= s101;
			if(sda == 1) nextState <= s102;
			else if(scl == 1) nextState <= s101;
			else nextState <= s1;
		end
		s102 : begin
		end
		endcase
	end
endmodule