module srff_tb;
    wire t_q,t_qb;
    reg t_s,t_r,t_clk;
    srff my_ff(.s(t_s),.r(t_r),.clk(t_clk),.q(t_q),.qb(t_qb));
    initial
        begin
            $display("|\tS\t|\tR\t|\tClk\t|\tq\t|\tqb\t|");
            $monitor("|\t%b\t|\t%b\t|\t%b\t|\t%b\t|\t%b\t|",t_s,t_r,t_clk,t_q,t_qb);
            t_clk=1'b0;
            t_s=1'b0;
            t_r=1'b0;
            #10

            t_clk=1'b1;
            t_s=1'b0;
            t_r=1'b0;
            #10

            t_clk=1'b0;
            t_s=1'b0;
            t_r=1'b0;
            #10

            t_clk=1'b1;
            t_s=1'b0;
            t_r=1'b1;
            #10

            t_clk=1'b0;
            t_s=1'b1;
            t_r=1'b0;
            #10

            t_clk=1'b1;
            t_s=1'b1;
            t_r=1'b0;
            #10


            t_clk=1'b0;
            t_s=1'b1;
            t_r=1'b1;
            #10

            t_clk=1'b1;
            t_s=1'b1;
            t_r=1'b1;
                        
        end
endmodule
