module andgate_tb;
reg t_a,t_b;
wire t_y,t_y1;
andgate my_gate(t_a,t_b,t_y1);
initial
begin
t_a = 1'b0;
t_b = 1'b0;
#10
$display("A = %b B=%b Y1 =%b",t_a,t_b,t_y1);
t_a = 1'b0;
t_b = 1'b1;
#10
$display("A = %b B=%b Y1 =%b",t_a,t_b,t_y1);
t_a = 1'b1;
t_b = 1'b0;
#10
$display("A = %b B=%b Y1 =%b",t_a,t_b,t_y1);
t_a = 1'b1;
t_b = 1'b1;
#10
$display("A = %b B=%b Y1 =%b",t_a,t_b,t_y1);
end
endmodule