module rsff(input wire clock,
input wire R,
input wire S,
input wire Qin,
output reg Qout,
output reg Qoutbar);

always @ (posedge clock)
begin
if ((!S) &&(!R))
begin
Qout = Qin;
Qoutbar = (!Qin);
end
else if((!S) &&(R))
begin
Qout = 0;
Qoutbar = 1;
end
else if((S) &&(!R))
begin
Qout = 1;
Qoutbar = 0;
end
else
begin
Qout = 1'bx;
Qoutbar = 1'bx;
end
end
endmodule