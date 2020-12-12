module mux2_tb();
reg t_a,t_b,t_c;
wire t_y;
mux dectre(t_a,t_b,t_c,t_y);

initial begin
#1
   t_a=1'b0;
   t_b=1'b0;
   t_c=1'b0;
   #1
   $display("A=%b , B= %b , C= %b , y= %b ",t_a,t_b,t_c,t_y);
   #10
   
   t_a=1'b0;
   t_b=1'b0;
   t_c=1'b1;
   #1
   $display("A=%b , B= %b , C= %b , y= %b ",t_a,t_b,t_c,t_y);
   #10
   
   t_a=1'b0;
   t_b=1'b1;
   t_c=1'b0;
   #1
   $display("A=%b , B= %b , C= %b , y= %b ",t_a,t_b,t_c,t_y);
   #10

   t_a=1'b0;
   t_b=1'b1;
   t_c=1'b1;
   #1
   $display("A=%b , B= %b , C= %b , y= %b ",t_a,t_b,t_c,t_y);
   #10
   
   t_a=1'b1;
   t_b=1'b0;
   t_c=1'b0;
   #1
   $display("A=%b , B= %b , C= %b , y= %b ",t_a,t_b,t_c,t_y);
   #10
   
   t_a=1'b1;
   t_b=1'b0;
   t_c=1'b1;
   #1
   $display("A=%b , B= %b , C= %b , y= %b ",t_a,t_b,t_c,t_y);
   #10
   
   t_a=1'b1;
   t_b=1'b1;
   t_c=1'b0;
   #1
   $display("A=%b , B= %b , C= %b , y= %b ",t_a,t_b,t_c,t_y);
   #10
   
   t_a=1'b1;
   t_b=1'b1;
   t_c=1'b1;
   #1
   $display("A=%b , B= %b , C= %b , y= %b ",t_a,t_b,t_c,t_y);
end
endmodule