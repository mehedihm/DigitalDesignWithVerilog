 // Code your design here
`timescale 1ns / 1ps

module Half_Adder(A,B,Y,Cout);
  input A,B;
  output reg Y,Cout; // Output is a reg in behavioral level
  
  always @(A,B)
    begin
      Y=A^B; //sum = A xor B
      Cout=A&B;  //Carry = A and B
    end
endmodule
