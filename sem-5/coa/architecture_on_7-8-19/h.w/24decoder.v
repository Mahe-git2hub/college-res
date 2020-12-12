module twofourdecoder(a,b,c,d,e,f,g);
input a,b,c;
output d,e,f,g;
assign g=a&((~b)&(~c));
assign f=a&((~b)&c);
assign e=a&(b&(~c));
assign d=a&(b&c);
initial 
begin 
$display("2X4 decoder");
end
endmodule