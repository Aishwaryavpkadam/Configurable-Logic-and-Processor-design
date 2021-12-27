module bcdtogrey_tb();
reg [3:0]in;
wire [3:0]out;

bcdtogrey uut (.in(in),.out(out));

initial begin
in = 4'b1001;
#10;
in = 4'b0110;
#10;
in = 4'b0100;
#10;
in = 4'b0111;
#10;

end
endmodule
