module priority_encoder_tb;
 reg [7:0] x;
 reg en;
 wire [2:0] y;
 Priority_encoder tb1 (
 .x(x), 
 .en(en), 
 .y(y));

 initial begin
 x = 0;
 en = 1;#100;      
 x = 8'b00000001;#100;
 x = 8'b0000001x;#100;
 x = 8'b000001xx;#100;
 x = 8'b00001xxx;#100;
 x = 8'b0001xxxx;#100;
 x = 8'b001xxxxx;#100;
 x = 8'b01xxxxxx;#100;
 x = 8'b1xxxxxxx;#100;

 end
 initial 
$monitor($time, " en=%b , x=%b, y=%b", en,x,y);
endmodule
