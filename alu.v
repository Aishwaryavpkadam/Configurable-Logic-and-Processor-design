module alu(sel,A,B,Y);
input[2:0]sel;
input[3:0]A,B;
output reg[3:0] Y;

always@(sel or A or B)
case(sel)
0: Y = 4'b0000;
1: Y = A+B;
2: Y = A-B;
3: Y = A&B;
4: Y = A|B;
5: Y = A>>1;
6: Y = B<<1;
7: Y = 4'b1111;

default: Y=4'b0000;

endcase

endmodule 