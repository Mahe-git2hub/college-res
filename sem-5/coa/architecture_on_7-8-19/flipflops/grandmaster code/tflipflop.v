module tff(t,clk,q,qb);
	output q,qb;
	input t,clk;
	reg q,qb;
	initial							//Setting initial values
		begin
			q=1'b1;
			qb=1'b0;
		end
	always@(posedge clk)			//Trigger on positive/rising edge of clock (i.e clock :0-->1)
												//Why ? if Clock doesn't have positive edge then retain previous Q value(previous state) .								
		begin
			if(clk)
				begin
					if(t==1'b0)		//if t is0,then q retains previous state
						begin
							q=q;
							qb=qb;
						end
					else			//if t is 1 then q becomes previous state qb or !q or ~q
					begin
						q=~q;
						qb=~qb;
					end
				end
		end
endmodule
			
	