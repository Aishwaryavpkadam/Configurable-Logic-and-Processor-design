module elevator_tb;
reg rst,clk;
reg[1:0]floor;
wire[1:0]y;

elevator uut(.floor(floor),.clk(clk),.rst(rst),.y(y));

initial
begin
	clk=1'b0; rst=1'b1;
	floor=2'b00;
	#100
	clk=1'b1;
	rst=1'b0;
	floor=2'b00;
	#100
	floor=2'b11;
	#100
	floor=2'b10;
	#100
	floor=2'b01;
	#100
	floor=2'b11;
	#100
	floor=2'b10;
	#100
	floor=2'b00;
	end
	always #10 clk=~clk;
endmodule 