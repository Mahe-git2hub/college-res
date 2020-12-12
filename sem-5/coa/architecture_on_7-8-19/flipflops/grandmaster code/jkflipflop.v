module jkff(j,k,clk,q,qb);
	output q,qb;
	input j,k,clk;
	reg q,qb;
	initial							//Initial values
		begin
			q=1'b0;
			qb=1'b1;
		end
	always@(posedge clk)			//Trigger on positive/rising edge of clock (i.e clock :0-->1)
									//Why ? if Clock doesn't have positive edge then retain previous Q value(previous state) .								
		begin
			if(clk)
				begin
				if(j==1'b0&&k==1'b0)				//Retain previous state
					begin
						q=q;
						qb=qb;
					end
				
				if(j==1'b0&&k==1'b1)				//Refer truth table
					begin
						q=1'b0;
						qb=1'b1;
					end
				
				if(j==1'b1&&k==1'b0)				//Refer truth table
					begin
						q=1'b1;
						qb=1'b0;
					end
				
				if(j==1'b1&&k==1'b1)				//Negate of previous state. i.e q=prev(qb) and qb=prev(q)
					begin
						q=~q;
						qb=~qb;
					end	
				end
		end
endmodule
			
	