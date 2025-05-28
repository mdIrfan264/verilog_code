
module half_subractor_tb();
  reg a,b;
  wire diff, borrow;
  
  half_subractor dut(.a(a),.b(b),.diff(diff),.borrow(borrow));
  
  
  initial begin
    $monitor("a = %b, b = %b , diff = %b , borrow = %b",a,b,diff,borrow);
    
    #10 a = 1'b0 ; b = 1'b0;
    #10 a = 1'b0 ; b = 1'b1;
    #10 a = 1'b1 ; b = 1'b0;
    #10 a = 1'b1 ; b = 1'b1;
    #20 $finish;
    
  end
endmodule
    
