module dff_tb;
wire t_q,t_qb;
reg t_d,t_clk;

dff my_ff(.d(t_d),.clk(t_clk),.q(t_q),.qb(t_qb));
initial
begin
    $display("|\tClk\t|\tD\t|\tQ\t|\tQ'\t|");
    $monitor("|\t%b  \t|\t%b\t|\t%b\t|\t%b \t|",t_clk,t_d,t_q,t_qb);

    t_clk=1'b0;
    t_d=1'b1;
    #10;
    
    t_clk=1'b1;
    t_d=1'b1;
    #10;

    t_clk=1'b0;
    t_d=1'b0;
    #10;

    t_clk=1'b1;
    t_d=1'b0;
    #10;
    
end
endmodule