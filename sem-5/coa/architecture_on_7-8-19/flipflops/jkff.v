module jkff(input wire clock,
input wire J,
input wire K,
input wire Qin,
output reg Qout,
output reg Qoutbar);

always @ (posedge clock)
begin
if ((!J) &&(!K))
begin
Qout = Qin;
Qoutbar = !Qin;
end
else if((!J) &&(K))
begin
Qout = 0;
Qoutbar = 1;
end
else if((J) &&(!K))
begin
Qout = 1;
Qoutbar = 0;
end
else
begin
Qout = !Qin;
Qoutbar = Qin;
end
end
endmodule