`define TRUE 1'b1
`define FALSE 1'b0
`define y2r 3
`define r2g 2

module traffic(hwy,cntry,x,clk,clear);
output[1:0]hwy,cntry;
reg[1:0]hwy,cntry;
input x;
input clk,clear;
parameter red=2'd0,
yellow=2'd1,
green=2'd2;
parameter 
s0=3'd0,
s1=3'd1,
s2=3'd2,
s3=3'd3,
s4=3'd4;
reg[2:0]state;
reg[2:0]ns;
	always@(posedge clk)
		if(clear)
			state<=s0;
		else
			state<=ns;
		always@(state)
		begin
		hwy=green;
		cntry=red;
		
		case(state)
		s0: ;
		s1: hwy=yellow;
		s2: hwy=red;
		s3: 
			begin
			hwy=red;
			cntry=yellow;
			end
		s4:
			begin
			hwy=red;
			cntry=yellow;
			end
		endcase
		end
	always@(state or x)
		case(state)
		s0: if(x)
				ns=s1;
			else
				ns=s0;
		s1: begin
				repeat(`y2r)@(posedge clk);
				ns=s2;
				end
		s2: begin
				repeat(`r2g)@(posedge clk);
				ns=s3;
				end
		s3: if(x)
				ns=s3;
				else
				ns=s4;
		s4: begin
			repeat(`y2r)@(posedge clk);
			ns=s0;
			end
		default : ns=s0;
	endcase
endmodule
				
				
	
