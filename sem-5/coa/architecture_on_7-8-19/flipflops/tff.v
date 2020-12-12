module tff(input wire clock,
input wire T,
input wire Qin,
output reg Qout,
output reg Qoutbar);

always @ (posedge clock)
begin
if (!T)
begin
Qout = Qin;
Qoutbar = (!Qin);
end
else
begin
Qout = (!Qin);
Qoutbar = Qin;
end
end
endmodule