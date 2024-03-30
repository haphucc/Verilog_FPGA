`include "hex2seg.v"

module TB_hex2seg;
    reg [3:0] bcd;
    wire [6:0] seg;
    integer i;
	
    hex2seg uut(.bcd(bcd), .seg(seg));

    initial begin
        for(i = 0; i <= 15; i = i+1)
        begin
            bcd = i; 
            #100; //wait for 100 ns
        end     
    end
endmodule

