module mux(a,b,c,y);
input b,c,a;
output y;
assign y = (((~a)&&b)||(a&&c));
initial
begin
    $display("hi");
end
endmodule