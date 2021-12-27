module mux41(
input a,b,c,d,s0,s1,
output f);
assign f = s1?(s0?d:c):(s0?b:a);
endmodule
