module ques(a,b,c,z);

input a,b,c;
output z;
wire p,q,w1,w2,w3,w4,w5,w6,w7,w8;

not(w6,a);
not(w7,b);
not(w8,c);
and(w1,w6,w7,w8);
and(w2,w6,b,w8);
and(w3,w6,w7,c);
or(p,w1,w2,w3);

and(w4,w6,w7);
and(w5,w6,w8);
or(q,w4,w5);

or(z,p,q);

endmodule