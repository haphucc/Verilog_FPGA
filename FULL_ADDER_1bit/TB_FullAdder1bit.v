`timescale 1ns / 1ns
`include "FullAdder1bit.v"

module TB_FullAdder1bit;
    reg w0, w1, cin;
    wire y, cout;

    //FullAdder1bit(w0, w1, cin, y, cout);
    FullAdder1bit fulladder(w0, w1, cin, y, cout);
    
    initial begin
        w0 = 1'b0; w1 = 1'b0; cin = 1'b0;
        #20
        w0 = 1'b0; w1 = 1'b0; cin = 1'b1;
        #20
        w0 = 1'b0; w1 = 1'b1; cin = 1'b0;
        #20
        w0 = 1'b0; w1 = 1'b1; cin = 1'b1;
        #20
        w0 = 1'b1; w1 = 1'b0; cin = 1'b0;
        #20
        w0 = 1'b1; w1 = 1'b0; cin = 1'b1;
        #20
        w0 = 1'b1; w1 = 1'b1; cin = 1'b0;
        #20
        w0 = 1'b1; w1 = 1'b1; cin = 1'b1;
        #20
        
        $stop;
    end
endmodule
