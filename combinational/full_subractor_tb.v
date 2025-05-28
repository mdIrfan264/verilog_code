// Code your testbench here
// or browse Examples
module full_subtractor_tb();
  reg a,b,c;
  wire diff, borrow;
  
  full_subractor dut(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));
  
  
  initial begin
    $monitor("a = %b, b = %b, c = %b , diff = %b , borrow = %b",a,b,c,diff,borrow);
    
    #10 a = 1'b0 ; b = 1'b0 ; c = 1'b0;
    #10 a = 1'b0 ; b = 1'b0 ; c = 1'b1;
    #10 a = 1'b0 ; b = 1'b1 ; c = 1'b0;
    #10 a = 1'b0 ; b = 1'b1 ; c = 1'b1;
    #10 a = 1'b1 ; b = 1'b0 ; c = 1'b0;
    #10 a = 1'b1 ; b = 1'b0 ; c = 1'b1;
    #10 a = 1'b1 ; b = 1'b1 ; c = 1'b0;
    #10 a = 1'b1 ; b = 1'b1 ; c = 1'b1;
    #20 $finish;
    
  end
endmodule
    
