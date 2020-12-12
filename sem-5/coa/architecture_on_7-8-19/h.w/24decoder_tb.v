module _24decoder_tb;
reg tb_en,i1,i0;
wire d3,d2,d1,d0;
twofourdecoder my_gate(tb_en,i1,i0,d3,d2,d1,d0);
initial
begin
$monitor("tb_en=%b i1=%b i0=%b d3=%b d2=%b d1=%b d0=%b",tb_en,i1,i0,d3,d2,d1,d0);
tb_en=1'b0;
i1=1'b0;
i0=1'b0;
#10;
tb_en=1'b0;
i1=1'b0;
i0=1'b1;
#10;
tb_en=1'b0;
i1=1'b1;
i0=1'b0;
#10;
tb_en=1'b0;
i1=1'b1;
i0=1'b1;
#10;
tb_en=1'b1;
i1=1'b0;
i0=1'b0;
#10;
tb_en=1'b1;
i1=1'b0;
i0=1'b1;
#10;
tb_en=1'b1;
i1=1'b1;
i0=1'b0;
#10;
tb_en=1'b1;
i1=1'b1;
i0=1'b1;
end
endmodule