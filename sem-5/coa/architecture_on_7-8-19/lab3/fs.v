module fs (S,C,x,y,z);
   input x,y,z;
   output S, C;
   //Structural
   xor (S,z,x,y);
   xor(n1,x,y);
   not(n2,n1);
   and(n3,z,n2);
   not(n4,x);
   and(n5,n4,y);
   or(C,n5,n3);
endmodule
