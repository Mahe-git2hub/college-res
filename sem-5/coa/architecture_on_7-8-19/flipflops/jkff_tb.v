module jkff_tb;
wire Qout, Qoutbar;
reg J, K, Qin, clock;
jkff m(clock,J,K,Qin,Qout,Qoutbar);


initial
begin
	$monitor("J=%b, K=%b, Qin=%b, Qout=%b, Qoutbar=%b\n",J,K,Qin,Qout,Qoutbar);
	clock=0;
	
	clock=1;
	J = 1'b0;
	K = 1'b0;
	Qin = 1'b0;
	clock=0;
	
	#5
	clock=1;
	J = 1'b0;
	K = 1'b0;
	Qin = 1'b1;
	clock=0;
	
	#5
	clock=1;
	J = 1'b0;
	K = 1'b1;
	Qin = 1'b0;
	clock=0;
	
	#5
	clock=1;
	J = 1'b0;
	K = 1'b1;
	Qin = 1'b1;
	clock=0;
	
	#5
	clock=1;
	J = 1'b1;
	K = 1'b0;
	Qin = 1'b0;
	clock=0;
	
	#5
	clock=1;
	J = 1'b1;
	K = 1'b0;
	Qin = 1'b1;
	clock=0;
	
	#5
	clock=1;
	J = 1'b1;
	K = 1'b1;
	Qin = 1'b0;
	clock=0;
	
	#5
	clock=1;
	J = 1'b1;
	K = 1'b1;
	Qin = 1'b1;
	clock=0;
end
endmodule