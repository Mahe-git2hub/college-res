module _demux(a,b,c0,c1);
input a,b;
output c0,c1;
assign c0=a&b;
assign c1=(~a)&b;
initial 
begin 
$display("1X2 Demultiplexer");
end
endmodule