module coun();
reg [2:0] o;
reg i;

initial begin
o[2:0]=4'b000;
    for (i =0 ;i<16 ;i++ ) begin
        o=o+4'b001;
        $display("o=%b     %d",o[2:0],o[2:0]);
        #20;
    end
    end

endmodule // 