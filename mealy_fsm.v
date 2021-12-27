module mealy_fsm(in,clk,reset,out);
input in;
input clk;
input reset;
output reg out;
parameter A = 2'b00,
B = 2'b01,
C = 2'b11,
D = 2'b10;
reg [2:0] current_state,next_state;
always@(posedge clk, posedge reset)
begin 
if (reset == 1)
current_state <= A;
else
current_state <= next_state;
end
always @(current_state,in)
begin
 case(current_state) 
 A:begin
  if(in==1)
   next_state = B;
  else
   next_state = A;
 end
 B:begin
  if(in==0)
   next_state = C;
  else
   next_state = B;
 end
 C:begin
  if(in==0)
   next_state = A;
  else
   next_state = D;
 end 
 D:begin
  if(in==0)
   next_state = C;
  else
   next_state = B;
 end
 default:next_state = A;
 endcase
end

always @(current_state)
begin 
 case(current_state) 
 A:  out = 0;
 B:  out = 0;
 C:  out = 0;
 D:  out = 1;
 
 default:  out = 0;
 endcase
end 
endmodule
