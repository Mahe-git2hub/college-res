module ques_tb;

reg t_a,t_b,t_c;
wire t_z;
ques my_gate(t_a,t_b,t_c,t_z);
initial
begin
   $monitor("A=%b , B= %b , C= %b , z= %b ",t_a,t_b,t_c,t_z);
   t_a=1'b0;
   t_b=1'b0;
   t_c=1'b0;
   #10
   
   t_a=1'b0;
   t_b=1'b0;
   t_c=1'b1;
   #10
   
   t_a=1'b0;
   t_b=1'b1;
   t_c=1'b0;
   #10

   t_a=1'b0;
   t_b=1'b1;
   t_c=1'b1;
   #10
   
   t_a=1'b1;
   t_b=1'b0;
   t_c=1'b0;
   #10
   
   t_a=1'b1;
   t_b=1'b0;
   t_c=1'b1;
   #10
   
   t_a=1'b1;
   t_b=1'b1;
   t_c=1'b0;
   #10
   
   t_a=1'b1;
   t_b=1'b1;
   t_c=1'b1;
   
end
endmodule