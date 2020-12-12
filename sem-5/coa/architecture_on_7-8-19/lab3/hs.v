module hs(S,C,x,y);
   input x,y;
   output S, C;
   xor (S,x,y);
   not (n,x);
   and(C,n,y);
endmodule
