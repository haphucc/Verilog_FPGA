module priority_encoder_83(w, y);
    input wire[7:0] w;
    output reg[3:0] y;

    always @* 
		begin
			casez(w)
				8'b0???????: y = 4'b1111;
				8'b10??????: y = 4'b1110;
				8'b110?????: y = 4'b1101;
				8'b1110????: y = 4'b1100;
				8'b11110???: y = 4'b1011;
				8'b111110??: y = 4'b1010;
				8'b1111110?: y = 4'b1001;
				8'b11111110: y = 4'b1000;
				8'b11111111: y = 4'b0000;
			endcase
		end
endmodule

