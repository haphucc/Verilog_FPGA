
module mux21_4
	(
	input s,
	input wire [3:0] w0, w1,
	output wire [3:0] f
	);
	assign f=s? w1:w0;
endmodule
