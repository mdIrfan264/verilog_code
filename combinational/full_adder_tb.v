module full_adder_tb();
  reg a,b,c;
  wire sum, carry;
  
  full_adder dut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
  
  
  initial begin
    $monitor("a = %b, b = %b, c = %b , sum = %b , carry = %b",a,b,c,sum,carry);
    
    #10 a = 1'b0 ; b  = 1'b0 ; c= 1'b0 ; 
    #10 a = 1'b0 ; b  = 1'b0 ; c= 1'b1 ; 
    #10 a = 1'b0 ; b  = 1'b1 ; c= 1'b0 ; 
    #10 a = 1'b0 ; b  = 1'b1 ; c= 1'b1 ; 
    #10 a = 1'b1 ; b  = 1'b0 ; c= 1'b0 ; 
    #10 a = 1'b1 ; b  = 1'b0 ; c= 1'b1 ; 
    #10 a = 1'b1 ; b  = 1'b1 ; c= 1'b0 ; 
    #10 a = 1'b1 ; b  = 1'b1 ; c= 1'b1 ;
    
    #20 $finish;
    
  end
endmodule
    
