 // Code your design here
module Half_Sub(A,B,Diff,Bout);
  input A,B;
  output reg Diff,Bout; // Output is a reg in behavioral level
  
  always @(A,B)
    begin
      Diff=A^B; // Difference = A xor B
      Bout=~A&B;  //Borrow = ~A and B
    end
endmodule
