module mealyy_tb;
reg x;
reg clk;
reg reset;
wire z;
mealyy uut(.x(x),.clk(clk),.reset(reset),.z(z));
initial 
begin
clk = 1'b0;
reset = 1'b1;
#15 reset = 1'b0;
end
always #5 clk = ~ clk;
initial begin
#10 x = 0; #10 x = 0; #10 x = 1; #10 x = 0;
#10 x = 1; #10 x = 1; #10 x = 0; #10 x = 1;
#10 x = 1; #10 x = 0; #10 x = 0; #10 x = 1;
#10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
#10 $finish;
end 
endmodule 