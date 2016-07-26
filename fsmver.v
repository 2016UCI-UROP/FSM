module FSM(reset, clk, i1, i2, i4, i3, t, out);
	input reset, clk, i1, i2, i4, i3, t;
	output reg[16:0] out;
	parameter s1 = 0, s2 = 200, s3 = 700, s4 = 900, s5 = 1300, s6 = 1800, s7 = 2300, s8 = 2800, s9 = 3100, s10 = 3400, s11 = 3600, s12 = 3800, s13 = 4100;
	reg[16:0] state, nextState;

	always @(posedge clk) begin
		if(reset) begin
			state <= s1;
			//i1 <= 0; i2 <= 0; i3 <= 0; i4 <= 0;
		end
		else begin
			state <= nextState;
		end
	end

	always @(i1, i2, i4, i3, t) begin
		case(state)
		s1 : begin
			$display("this is s1 state");
			out <= s1;
			if(i3 == 1) nextState <= s2;
			else begin
				nextState <= s1;
			end
		end
		s2 : begin
			$display("this is s2 state");
			out <= s2;
			if(i1 == 1 && i4 == 1) nextState <= s3;
			//else if(i3 == 1) nextState <= s2;
			else nextState <= s1;
		end
		s3 : begin
			$display("this is s3 state");
			if(i3 == 0) nextState <= s4;
			//else if(i1 == 1 && i4 == 1) nextState <= s3;
			else nextState <= s1;
		end
		s4 : begin
			$display("this is s4 state");
			if(i1 == 0 && i3 == 1) nextState <= s5;
			//else if(i3 == 0) nextState <= s4;
			else nextState <= s1;
		end
		s5 : begin
			if(i2 == 1 && i1 == 0 && i4 == 0) nextState <= s6;
			//else if(i1 == 0 && i3 == 1) nextState <= s5;
			else nextState <= s1;
		end
		s6 : begin
			if(i1 == 1) nextState <= s7;
			else if(i2 == 1 && i1 == 0 && i4 == 0) nextState <= s6;
			else nextState <= s1;
		end
		s7 : begin
			if(i4 == 1) nextState <= s8;
			else if(i1 == 1) nextState <= s7;
			else nextState <= s1;
		end
		s8 : begin
			if(i4 == 0 && i3 == 0) nextState <= s9;
			else if(i4 == 1) nextState <= s8;
			else nextState <= s1;
		end
		s9 : begin
			if(i1 == 0 && i4 == 1) nextState <= s10;
			else if(i4 == 0 && i3 == 0) nextState <= s9;
			else nextState <= s1;
		end
		s10 : begin
			if(i2 == 0 && i3 == 1) nextState <= s11;
			else if(i1 == 0 && i4 == 1) nextState <= s10;
			else nextState <= s1;
		end
		s11 : begin
			if(i1 == 1 && i4 == 0) nextState <= s12;
			else if(i2 == 0 && i3 == 1) nextState <= s11;
			else nextState <= s1;
		end
		s12 : begin
			if(i3 == 0) nextState <= s13;
			else if(i1 == 1 && i4 == 0) nextState <= s12;
			else nextState <= s1;
		end
		s13 : begin
			$display("this is end state");
		end
		endcase
	end
endmodule

module Testbench;
	reg RST, CLK;
	reg i1, i2, i3, i4, t;
	wire[16:0] out;

	FSM f(RST, CLK, i1, i2, i4, i3, t, out);
	always begin
		CLK <= 0;
		#5;
		CLK <= 1;
		#5;
	end

	initial begin
		RST <= 1;
		i1 <= 0;
		i2 <= 0;
		i3 <= 0;
		i4 <= 0;
		t <= 0;
		
$display("phrase1");
		#50;
		RST <= 0;
		i3 <= 1;
		t <= ~t;
		//state2
$display("phrase2");
		#50;
		i1 <= 1;
		i4 <= 1;
		t <= ~t;
		//state3
$display("phrase3");
		#50
		i2 <= 1;
		t <= ~t;
		//state1
$display("phrase4");
		#50
		i3 <= 1;
		t <= ~t;
		//state2
$display("phrase5");
		#50;
		i1 <= 1;
		i4 <= 1;
		//i2 <= 0;	//point
		t <= ~t;
		//state3
$display("phrase6");
		#50
		i3 <= 0;
		t <= ~t;
		//state4
$display("phrase7");
		#50
		i1 <= 0;
		i3 <= 1;
		t <= ~t;
$display("phrase8");
		#50
		i1 <= 0;
		i2 <= 1;
		i4 <= 0;
		t <= ~t;
	end
endmodule
	
