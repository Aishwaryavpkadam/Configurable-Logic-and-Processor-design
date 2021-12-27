module mux41_tb();
reg s1,s0,a,b,c,d;
wire y; 


mux41 uut (.s1(s1),.s0(s0),.y(y));

initial begin

a = 1'b0; b=1'b1; c=1'b0; d=1'b1;
s1 = 1'b0; s0 = 1'b0;
#20 s1 = 1'b0; s0=1'b1;
#20 s1 = 1'b1; s0=1'b0;
#20 s1 = 1'b1; s0=1'b1;
#20;
end

endmodule 
