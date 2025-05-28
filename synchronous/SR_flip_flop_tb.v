// Code your testbench here
// or browse Examples
module SR_tb();
  reg s,r,clk;
  wire q;
  
  SR dut(.s(s),.r(r),.clk(clk),.q(q));
  
  initial begin
    clk= 0;
    forever #5 clk = ~clk;
    
  end
  
  initial begin
    
    
    s = 1'b0 ; r= 1'b0;
    
    $monitor("time =%0t , s = %b , r =%b,clk = %b, q = %b ", $time,s,r,clk,q);
    
    #10 s = 1'b0 ; r= 1'b0;
    #10 s = 1'b0 ; r= 1'b1;
    #10 s = 1'b1 ; r= 1'b0;
    #10 s = 1'b1 ; r= 1'b1;
    #20 $finish;
    
  end
  
endmodule
    
