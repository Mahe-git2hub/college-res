module fs_t();

reg t_a, t_b,t_c;
wire t_y,t_x;
fs my_gate(t_y,t_x,t_a,t_b,t_c);
initial
begin
	t_a=1'b0;
	t_b=1'b0;
	t_c=1'b0;
	#10
	$monitor("A= %b B = %b C = %b Y = %b X = %b",t_a,t_b,t_c,t_y,t_x);
	
	t_a=1'b0;
	t_b=1'b0;
	t_c=1'b1;
	#10

	t_a=1'b0;
	t_b=1'b1;
	t_c=1'b0;
	#10
	
	t_a=1'b0;
	t_b=1'b1;
	t_c=1'b1;
	#10
	
	t_a=1'b1;
	t_b=1'b0;
	t_c=1'b0;
	#10
	
	t_a=1'b1;
	t_b=1'b0;
	t_c=1'b1;
	#10
	
	t_a=1'b1;
	t_b=1'b1;
	t_c=1'b0;
	#10
	
	t_a=1'b1;
	t_b=1'b1;
	t_c=1'b1;
	

	
	
end
endmodule