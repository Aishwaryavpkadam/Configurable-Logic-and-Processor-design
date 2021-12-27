module traffic_tb;
wire[1:0] hwy,cntry;
reg x,clk,clear;

traffic uut(.hwy(hwy),.cntry(cntry),.x(x),.clk(clk),.clear(clear));
initial
	begin
		clk=1'b0;
		forever #5 clk=~clk;
		end
	initial
	begin
	clear = 1'b1;
	repeat(5)@(negedge clk);
	clear = 1'b0;
	end
	
	initial
		begin
		x=1'b0;
		repeat(20)@(negedge clk); x=1'b1;
		repeat(20)@(negedge clk); x=1'b0;
		repeat(20)@(negedge clk); $stop;
		end
endmodule

