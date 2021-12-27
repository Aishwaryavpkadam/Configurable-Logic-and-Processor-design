module demux_(y,s,in);
input in;
input [1:0]s;
output[3:0]y;
assign y[0] = in & ~s[1] & ~s[0];
assign y[1] = in & s[1] & ~s[0];
assign y[2] = in & ~s[1] & s[0];
assign y[3] = in & s[1] & s[0];

endmodule 