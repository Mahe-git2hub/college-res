module circuit (x,y,z,p,q,r,s,c);
 
  input  x,y,z;
  output p,q,r,s,c;
  assign p=x||y||z;
  assign q=x||z;
  assign r=(~x)||y||z;
  assign s=q&&(~r) || p&&(~q)&&(~r);
  assign c= p&&q||(~p)&&r;
 
  
  endmodule