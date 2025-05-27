module half_adder_tb();
reg a,b;
wire sum,carry;

half_adder dut(.a(a),.b(b),.sum(sum),.carry(carry));

initial begin
   $monitor("a = %b , b = %b,sum = %b,carry = %b",a,b,sum,carry);
  #10 a = 1'b0 , b = 1'b0;
  
  #10 a = 1'b1 , b = 1'b0;
  
  #10 a = 1'b0 , b = 1'b1;
  
  #10 a = 1'b1 , b = 1'b1;

  

  #20$finish;
  
end
endmodule

