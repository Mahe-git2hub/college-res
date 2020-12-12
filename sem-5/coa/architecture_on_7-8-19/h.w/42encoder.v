module fourtwoencoder(a,b,c,d,e,f);
input a,b,c,d;
output e,f;
assign e=a|b;
assign f=a|c;
initial 
begin 
$display("4X2encoder");
end
endmodule