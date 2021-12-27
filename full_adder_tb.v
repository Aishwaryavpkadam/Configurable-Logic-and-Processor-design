module full_adder_tb;

reg a,b,cin;

wire cout,sum;
full_adder a1 (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial 
begin

a=0;   b=0;   cin=0;

#5 a=0;   b=0;   cin=1;

#5 a=0;   b=1;   cin=0;

#5 a=0;   b=1;  cin=1;

end

initial
$monitor($time,"a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
endmodule
