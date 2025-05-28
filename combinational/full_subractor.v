module full_subractor(input a,b,c,output diff, borrow);
  assign diff = a^b^c;
  assign borrow = (~a&b) |(~a&c) |(a&b) ; 
endmodule
