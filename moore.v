module moore(
input clk, reset, x,
output reg z);
parameter s0=3'b000,
s1=3'b001,
s2=3'b011,
s3=3'b010,
s4=3'b110;
reg [2:0] ps,ns;
always @(posedge clk, posedge reset)
begin
if(reset == 1)
ps<=s0;
else
ps<=ns;
end
always@(ps,x)
begin
case(ps)
s0:begin
if(x==1)
ns = s1;
else
ns = s0;
end
s1:begin
if(x==0)
ns = s2;
else
ns = s1;
end
s2:begin
if(x==0)
ns = s0;
else
ns = s3;
end
s3:begin
if(x==1)
ns = s2;
else
ns = s4;
end
s4:begin
if(x==0)
ns = s2;
else
ns = s1;
end
default:ns=s0;
endcase
end
always@(ps)
begin
case(ps)
s0: z=0;
s1: z=0;
s1: z=0;
s2: z=0;
s3: z=0;
s4: z=1;
default: z=0;
endcase
end
endmodule
