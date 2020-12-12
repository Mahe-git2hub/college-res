module andgate_tb;
reg t_a;
wire t_y;
andgate my_gate(t_a,t_y);
initial
begin
t_a = 1'b0;
#10
$display("A = %b Y1 =%b",t_a,t_y);
t_a = 1'b0;
#10
$display("A = %b Y1 =%b",t_a,t_y);
end
endmodule