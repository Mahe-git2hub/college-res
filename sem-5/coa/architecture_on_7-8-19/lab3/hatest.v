module halfadder_t();

reg t_a, t_b;
wire t_y,t_x;
halfadder my_gate(t_y,t_x,t_a,t_b);
initial
begin
	t_a=1'b0;
	t_b=1'b0;
	#10
	$display("A= %b B = %b Y = %b X = %b",t_a,t_b,t_y,t_x);
	
	t_a=1'b0;
	t_b=1'b1;
	#10
	$display("A= %b B = %b Y = %b X = %b",t_a,t_b,t_y,t_x);
	
	t_a=1'b1;
	t_b=1'b0;
	#10
	$display("A= %b B = %b Y = %b X = %b",t_a,t_b,t_y,t_x);
	
	t_a=1'b1;
	t_b=1'b1;
	#10
	$display("A= %b B = %b Y = %b X = %b",t_a,t_b,t_y,t_x);
	
end
endmodule
endmodule