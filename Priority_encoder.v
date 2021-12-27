module Priority_encoder(
    input [7:0]x,
    input en,
    output reg [2:0]y
    );
  always @ (x,en)
  begin if(en==1'b1)
  casex(x)
  8'b00000001 : y = 3'b000;
  8'b0000001x : y = 3'b001;
  8'b000001xx : y = 3'b010;
  8'b00001xxx : y = 3'b011;
  8'b0001xxxx : y = 3'b100;
  8'b001xxxxx : y = 3'b101;
  8'b01xxxxxx : y = 3'b110;
  8'b1xxxxxxx : y = 3'b111;
 endcase
 end
endmodule
