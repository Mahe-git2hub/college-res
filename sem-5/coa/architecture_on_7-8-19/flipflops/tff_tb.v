module tff_tb;
wire Qout, Qoutbar;
reg T, Qin, clock;
tff m(clock,T,Qin,Qout,Qoutbar);


initial
begin
	$monitor("T=%b, Qin=%b, Qout=%b, Qoutbar=%b\n",T,Qin,Qout,Qoutbar);
	clock=0;
	clock=1;
	T = 1'b0;
	Qin = 1'b0;
	clock=0;
	
	#5
	clock=1;
	T = 1'b0;
	Qin = 1'b1;
	clock=0;
	
	#5
	clock=1;
	T = 1'b1;
	Qin = 1'b0;
	clock=0;
	
	#5
	clock=1;
	T = 1'b1;
	Qin = 1'b1;
	clock=0;
	
end
endmodule