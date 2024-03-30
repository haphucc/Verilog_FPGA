
`include "decoder_24.v"
module TB_decoder_24;
	reg [1:0] i;
	wire [3:0] y;
	
	decoder_24 uut(.i(i), .y(y));
	
	initial
		begin
			i=2'b00;
			#100;
			i=2'b01;
			#100;
			i=2'b10;
			#100;
			i=2'b11;
			#100;
			$stop;
		end
endmodule





