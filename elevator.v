module elevator(input[1:0]floor,inout clk,rst, output[1:0]y);
reg[1:0]ps,ns;
parameter
flr1=2'b00,
flr2=2'b01,
mov2=2'b10,
flr3=2'b11;

	always@(posedge clk)
		begin
		if(rst)
			ps<=flr1;
		else
			ps<=ns;
		end
	always@(ps,floor)
	begin
	case(ps)
	flr1:
		begin
			if(floor==2'b00|floor==2'b01)
				ns<=flr1;
			else if(floor==2'b11)
				ns<=mov2;
			else if(floor==2'b10)
				ns<=flr2;
		end
	flr2:
		begin
			if(floor==2'b00|floor==2'b10)
				ns<=flr2;
			else if(floor==2'b01)
				ns<=flr1;
			else if(floor==2'b11)
				ns<=flr3;
		end
	flr3:
		begin
			if(floor==2'b00|floor==2'b11)
				ns<=flr3;
			else if(floor==2'b10)
				ns<=flr2;
			else if(floor==2'b01)
				ns<=mov2;
		end
	mov2:
	begin
			if(floor==2'b00|floor==2'b01)
				ns<=flr1;
			else if(floor==2'b11)
				ns<=flr3;
			else if(floor==2'b10)
				ns<=flr2;
		end
		default: ns<=flr1;
	endcase
	end
	assign y=ns;
endmodule
