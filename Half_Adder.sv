 // Code your design here
module Half_Adder(A,B,Y,Cout);
  input A,B;
  output reg Y,Cout; // Output is a reg in behavioral level
  
  always @(A,B)
    begin
      Y=A^B; //sum = A xor B
      Cout=A&B;  //Carry = A and B
    end
endmodule
