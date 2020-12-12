module _demux_tb;
reg a,b;
wire c0,c1;
_12demux my_gate(a,b,c0,c1);
initial 
begin
$monitor("a=%b b=%b c0=%b c1=%b",a,b,c0,c1);
a=1'b0;
b=1'b0;
#10;
a=1'b0;
b=1'b1;
#10;
a=1'b1;
b=1'b0;
#10;
a=1'b1;
b=1'b1;
end 
endmodule