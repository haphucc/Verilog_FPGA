module TB_mux21_4;
    reg s;
    reg [3:0] w0, w1;
    wire [3:0] f;
    
    mux21_4 uut(.f(f), .s(s), .w0(w0), .w1(w1));
    
    initial 
	begin
		w0 = 4'b0000; w1 = 4'b1111; 
        s = 1'b0; 
        #100;
        s = 1'b1;
        #100;
        $stop;
    end
endmodule


