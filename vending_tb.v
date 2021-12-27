module vending_tb;
reg clk,rst;
reg[1:0]coin;
wire new;

vending_m uut(.new(new),.clk(clk),.coin(coin),.rst(rst));

initial
	begin
	clk=1'b0;rst=1'b1;coin=2'b00;
	#5
	clk=1'b1;rst=1'b0;
	coin=2'b00;
	#100
	coin=2'b01;
	#100
	coin=2'b10;
	#100
	coin=2'b01;
	#100
	coin=2'b10;
	#100
	coin=2'b01;
	#100
	coin=2'b11;
	end
	
	always #20 clk=~clk;
endmodule
