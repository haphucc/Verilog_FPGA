module priority_encoder_42(w, y);
    input wire[3:0] w;
    output reg[2:0] y;

    always @* 
		begin
			casez(w)
				4'b0???: y = 3'b100;
				4'b10??: y = 3'b011;
				4'b110?: y = 3'b010;
				4'b1110: y = 3'b001;
				4'b1111: y = 3'b000;
			endcase
		end
endmodule
