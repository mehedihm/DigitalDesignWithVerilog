 // Code your design here
module Full_Adder(A,B,Cin,Sum,Cout);
  input A,B,Cin;
  output reg Sum,Cout; // Output is a reg in behavioral level
  
  always @(A,B,Cin)
    begin
      Sum=A^B^Cin; //sum = A xor B xor Cin
      Cout=(A&B)|((A|B)&Cin);  //Carry = AB+(A+B)Cin
    end
endmodule
