module fulladder (S,C,x,y,z);
   input x,y,z;
   output S, C;
   xor (S,z,x,y);
   and(n1,x,y);
   and(n2,y,z);
   and(n3,x,z);
   or(C,n1,n2,n3);
endmodule
