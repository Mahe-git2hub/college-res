module circuit(b1,b2,b3,b4,s,c);
input b1,b2,b3,b4;
output s,c;
assign s= ~(b1)&&~(b2)&&(b3^b4) || ~(b1)&&(b2)&&(~(b3^b4)) || (b1)&&(b2)&&(b3^b4) || (b1)&&~(b2)&&(b3^b4);
assign c= ~(b3)&&~(b4) || (b1^b2)&&b4 || (b1)&&(b2)&&~(b3);
endmodule