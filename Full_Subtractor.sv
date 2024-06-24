 // Code your design here
`timescale 1ns / 1ps

module Full_Sub(A,B,Bin,Diff,Bout);
  input A,B,Bin;
  output reg Diff,Bout; // Output is a reg in behavioral level
  
  always @(A,B,Bin)
    begin
      Diff=A^B^Bin; //Diff = A xor B xor Cin
      Bout=(~A&B)|((A~^B)&Bin);  //Borrow = ~AB+(A xnor B)Bin
    end
endmodule
