module moore_tb;
reg x;
reg clk;
reg reset;
wire z;
moore uut(.x(x),.clk(clk),.reset(reset),.z(z));
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
x=0;
reset=1;
#30;
reset=0;
#40;
x=1;
#10;
x=0;
#10;
x=1;
#10
x=1;
#10;
x=1;
#10;
x=0;

end

endmodule
