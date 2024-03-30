`include "priority_encoder_83.v"
module TB_priority_encoder_83;
	reg [7:0] w;
    wire [3:0] y;
    priority_encoder_83 uut(.w(w), .y(y));
    initial begin
        w= 8'b01010110;
        #100
        w= 8'b10010110;
        #100
        w= 8'b11010110;
        #100
        w= 8'b11100110;
        #100
        w= 8'b11110110;
        #100
        w= 8'b11111010;
        #100
        w= 8'b11111100;
        #100
        w= 8'b11111110;
        #100
        w= 8'b11111111;
        #100
        $stop;  // End simulation
    end
endmodule 
