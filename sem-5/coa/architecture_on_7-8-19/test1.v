module adder_t();

reg t_a, t_b, t_c,d;
wire s,c;
circuit my_gate(t_a,t_b,t_c,d,s,c);
initial
begin
	d = 1'b0;
	t_a=1'b0;
	t_b=1'b0;
	t_c=1'b0;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b0;
	t_a=1'b0;
	t_b=1'b0;
	t_c=1'b1;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b0;
	t_a=1'b0;
	t_b=1'b1;
	t_c=1'b0;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b0;
	t_a=1'b0;
	t_b=1'b1;
	t_c=1'b1;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b0;
	t_a=1'b1;
	t_b=1'b0;
	t_c=1'b0;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b0;
	t_a=1'b1;
	t_b=1'b0;
	t_c=1'b1;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b0;
	t_a=1'b1;
	t_b=1'b1;
	t_c=1'b0;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b0;
	t_a=1'b1;
	t_b=1'b1;
	t_c=1'b1;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b1;
	t_a=1'b0;
	t_b=1'b0;
	t_c=1'b0;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b1;
	t_a=1'b0;
	t_b=1'b0;
	t_c=1'b1;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b1;
	t_a=1'b0;
	t_b=1'b1;
	t_c=1'b0;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b1;
	t_a=1'b0;
	t_b=1'b1;
	t_c=1'b1;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b1;
	t_a=1'b1;
	t_b=1'b0;
	t_c=1'b0;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b1;
	t_a=1'b1;
	t_b=1'b0;
	t_c=1'b1;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b1;
	t_a=1'b1;
	t_b=1'b1;
	t_c=1'b0;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
	d = 1'b1;
	t_a=1'b1;
	t_b=1'b1;
	t_c=1'b1;
	#10
	$display("A= %b B = %b C=%b D=%b S=%b C=%b",d,t_a,t_b,t_c,s,c);
	
end
endmodule