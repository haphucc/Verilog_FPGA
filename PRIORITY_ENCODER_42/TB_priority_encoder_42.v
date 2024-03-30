`include "priority_encoder_42.v"
module TB_priority_encoder_42;
	reg [3:0] w;
    wire [2:0] y;
    
    priority_encoder_42 uut(.w(w), .y(y));

    initial begin
        w= 4'b0110;
        #100
        w= 4'b1010;
        #100
        w= 4'b1101;
        #100
        w= 4'b1111;
        #100
        
        $stop;  // End simulation
    end
endmodule

