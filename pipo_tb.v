module pipo_tb;
reg clk;
reg[3:0]d;
wire[3:0]q;
pipo uut (.clk(clk),.d(d),.q(q));
initial
begin
clk = 0;
d=0;
#100;
d = 4'b 1001;
end
always #5 clk = ~clk;
endmodule
