module full_adder (cin,a,b,sum,cout);

input cin,a,b;
output sum, cout;

and(z1,a,b);
and(z2,a,cin);
and(z3,b,cin);
or(cout,z1,z2,z3);
xor(z4,a,b);
xor(sum,z4,cin);

endmodule 