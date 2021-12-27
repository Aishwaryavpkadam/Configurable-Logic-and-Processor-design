module vending_m(new,clk,coin,rst);
output reg new;
input[1:0]coin;
input clk,rst;
reg[1:0]state;
reg[1:0]NS;

parameter [1:0] s0=2'b00;
parameter [1:0] s5=2'b01;
parameter [1:0] s10=2'b10;
parameter [1:0] s15=2'b11;

always@(posedge clk)
begin
	if(rst)
		state=s0;
	else
		state=NS;
	end
	
always@(state,coin)
begin
case(state)

s0:
	begin
		if(coin==2'b00)
			NS=s0;
		else
			if(coin==2'b01)
				NS=s10;
	end
	
s5:
	begin
		if(coin==2'b00)
			NS=s5;
		else
			if(coin==2'b01)
				NS=s10;
			else if(coin==2'b10)
				NS=s15;
	end
s10:
	begin
		if(coin==2'b00)
			NS=s10;
		else
			if(coin==2'b01)
				NS=s15;
			else if(coin==2'b10)
				NS=s15;
	end
s15:
	begin
		NS=s0;
	end
	default:NS=s0;
	endcase
end
always@(state)
begin
	case(state)
		s0: new<=1'b0;
		s5: new<=1'b0;
		s10: new<=1'b0;
		s15: new<=1'b1;
		default: new<=1'b0;
	endcase
end
endmodule
