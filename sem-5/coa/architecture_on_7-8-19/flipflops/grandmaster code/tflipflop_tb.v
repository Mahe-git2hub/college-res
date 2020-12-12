module tff_tb;
	wire t_q,t_qb;
	reg t_clk,t_t;
	tff my_gate(.t(t_t),.clk(t_clk),.q(t_q),.qb(t_qb));
	initial
		begin
			$display("|t\t|clk\t|\tq\t|\tqb\t|");
			$monitor("|%b\t|%b\t|\t%b\t|\t%b\t|",t_t,t_clk,t_q,t_qb);
			t_clk=0;
			t_t=1'b0;
			#100
			t_t=1'b1;
			t_clk=1'b1;
			#100
			t_t=1'b1;
			t_clk=1'b0;
			#100
			t_t=1'b1;
			t_clk=1'b1;
			#100
			t_t=1'b0;
			t_clk=1'b1;
			
			
		end
endmodule