module mux21_4
	(
	input s,
	input wire [3:0] w0, w1,
	output wire [3:0] f
	);
	assign f=s? w1:w0;
endmodule

module mux41_4
	(
	input s0, s1,
	input wire [3:0] a0, a1, a2, a3,
	output wire [3:0] e
	);
	wire [3:0] e0, e1;
	
	mux21_4 mux21_4_u1(.s(s0), .w0(a0), .w1(a1), .f(e0));
	mux21_4 mux21_4_u2(.s(s0), .w0(a2), .w1(a3), .f(e1));
	mux21_4 mux21_4_u3(.s(s1), .w0(e0), .w1(e1), .f(e));
	//assign e=s1? e1:e0;
	
endmodule
