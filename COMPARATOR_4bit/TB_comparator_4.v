`include "comparator_4.v"
module TB_comparator_4;
    reg [3:0] w0, w1;
    wire less, equal, greater;

    comparator_4 uut(w0, w1, less, equal, greater);

    initial begin
        w0 = 4'b0001; w1 = 4'b0001;
        #100
        w0 = 4'b0011; w1 = 4'b0001;
        #100
        w0 = 4'b0101; w1 = 4'b0101;
        #100
        w0 = 4'b1000; w1 = 4'b1000;
        #100
        w0 = 4'b0110; w1 = 4'b1011;
        #100
        w0 = 4'b1010; w1 = 4'b1010;
        #100
        $stop;
    end
endmodule

