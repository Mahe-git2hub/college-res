module jkff_tb;
	wire t_q,t_qb;
	reg t_clk,t_j,t_k;
	jkff my_gate(.j(t_j),.k(t_k),.clk(t_clk),.q(t_q),.qb(t_qb));
	initial
		begin
			$display("|j\t|k\t|clk\t|\tq\t|\tqb\t|");
			$monitor("|%b\t|%b\t|%b\t|\t%b\t|\t%b\t|",t_j,t_k,t_clk,t_q,t_qb);
			t_clk=0;
			t_j=1'b0;
			t_k=1'b0;
			#100
			t_j=1'b1;
			t_k=1'b1;
			t_clk=1'b1;
			#100
			t_j=1'b0;
			t_k=1'b1;
			t_clk=1'b0;
			#100
			t_j=1'b0;
			t_k=1'b1;
			t_clk=1'b1;
			#100
			t_j=1'b1;
			t_k=1'b0;
			t_clk=1'b0;
			#100
			t_j=1'b1;
			t_k=1'b0;
			t_clk=1'b1;
			
		end
endmodule