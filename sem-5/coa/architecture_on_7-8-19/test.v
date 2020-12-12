module adder_t();

reg t_a, t_b, t_c;
wire p,q,r,s,t;
circuit my_gate(t_a,t_b,t_c,p,q,r,s,c);
initial
begin
	t_a=1'b0;
	t_b=1'b0;
	t_c=1'b0;
	#10
	$display("A= %b B = %b C=%b P = %b Q = %b R = %b S=%b C=%b",t_a,t_b,t_c,p,q,r,s,c);
	
	t_a=1'b0;
	t_b=1'b0;
	t_c=1'b1;
	#10
	$display("A= %b B = %b C=%b P = %b Q = %b R = %b S=%b C=%b",t_a,t_b,t_c,p,q,r,s,c);
	
	t_a=1'b0;
	t_b=1'b1;
	t_c=1'b0;
	#10
	$display("A= %b B = %b C=%b P = %b Q = %b R = %b S=%b C=%b",t_a,t_b,t_c,p,q,r,s,c);
	
	t_a=1'b0;
	t_b=1'b1;
	t_c=1'b1;
	#10
	$display("A= %b B = %b C=%b P = %b Q = %b R = %b S=%b C=%b",t_a,t_b,t_c,p,q,r,s,c);
	
	t_a=1'b1;
	t_b=1'b0;
	t_c=1'b0;
	#10
	$display("A= %b B = %b C=%b P = %b Q = %b R = %b S=%b C=%b",t_a,t_b,t_c,p,q,r,s,c);
	
	t_a=1'b1;
	t_b=1'b0;
	t_c=1'b1;
	#10
	$display("A= %b B = %b C=%b P = %b Q = %b R = %b S=%b C=%b",t_a,t_b,t_c,p,q,r,s,c);
	
	t_a=1'b1;
	t_b=1'b1;
	t_c=1'b0;
	#10
	$display("A= %b B = %b C=%b P = %b Q = %b R = %b S=%b C=%b",t_a,t_b,t_c,p,q,r,s,c);
	
	t_a=1'b1;
	t_b=1'b1;
	t_c=1'b1;
	#10
	$display("A= %b B = %b C=%b P = %b Q = %b R = %b S=%b C=%b",t_a,t_b,t_c,p,q,r,s,c);
	
end
endmodule