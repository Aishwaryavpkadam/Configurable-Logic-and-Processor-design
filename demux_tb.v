module demux_tb;
reg in;
reg [1:0]s;
wire [3:0]y;

demux_ uut (.in(in),.s(s),.y(y));
initial 
begin
in = 1'b1;
s = 2'b00;
#10 s = 2'b01;
#10 s = 2'b10;
#10 s = 2'b11;
end

endmodule
