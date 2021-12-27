module mealyy(
input x,clk,reset,
output reg z);

parameter s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;
reg[2:0]PS,NS;

always@(posedge clk, posedge reset)
begin
if(reset)
PS <= s0;
else
PS<=NS;
end

always@(PS or x)
begin 
case(PS)
s0 :begin
z=0;
NS=x?s1:s0;
end
s1 :begin
z=0;
NS=x?s1:s2;
end
s2 :begin
z=0;
NS=x?s3:s0;
end
s0 :begin
z=0;
NS=x?s1:s2;
end

endcase
end
endmodule
