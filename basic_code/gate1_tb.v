module gnd_tb();
  reg a,b;
  wire out_and,out_or,out_nand,out_nor,out_xor,out_xnor;
  
  gate1 dut(.a(a),.b(b),.out_and(out_and),.out_or(out_or),.out_nand(out_nand),.out_nor(out_nor),.out_xor(out_xor),.out_xnor(out_xnor));

  initial
    begin
      #10 a =1'b0 , b =1'b0;
      #10 a =1'b0 , b =1'b1;
      #10 a =1'b1 , b =1'b0;
      #10 a =1'b1 , b =1'b1;
      #20 $finish;

    end
endmodule
