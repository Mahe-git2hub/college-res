module d_ff(input wire clock, input wire D,input Rst,output reg Q);
always @(negedge Rst or posedge clock)
begin
if(!Rst)
Q=0;
else
Q=D;
end
endmodule