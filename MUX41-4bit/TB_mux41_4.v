`include "mux41_4.v"
module TB_mux41_4;
    reg s0, s1;
    reg [3:0] a0, a1, a2, a3;
    wire [3:0] e;
	
    mux41_4 uut(.e(e), .s0(s0), .s1(s1), .a0(a0)
				, .a1(a1), .a2(a2), .a3(a3));
	
    initial 
	begin
		a0 = 4'b0000; a1 = 4'b1111; 
		a2 = 4'b1000; a3 = 4'b1100;
        s0 = 1'b0; s1 = 1'b0; 
        #100;
        s0 = 1'b0; s1 = 1'b1; 
		#100;
		s0 = 1'b1; s1 = 1'b0; 
        #100;
        s0 = 1'b1; s1 = 1'b1; 
        #100;		
        $stop;
    end
endmodule



