// Code your design here
`timescale 1ns / 1ps

module Full_Adder(A,B,Cin,Sum,Cout);
  input A,B,Cin;
  output reg Sum,Cout; // Output is a reg in behavioral level
  
  always @(A,B,Cin)
    begin
      Sum=A^B^Cin; //sum = A xor B xor Cin
      Cout=(A&B)|((A|B)&Cin);  //Carry = AB+(A+B)Cin
    end
endmodule

// Design the Ripple Carry Adder
module RippleAdd(A, B, Cin, Sum, Cout);
  input wire [3:0]A, B;
  input wire Cin;
  output wire [3:0]Sum; // Declared as wire since they are driven by Full_Adder instances
  output wire Cout; // Declared as wire since it is driven by Full_Adder instance
  wire C[2:0]; // For the intermediate carries (total 3 carrier generated)
  
  // Instantiate the full adders 
  
  Full_Adder RCA0(.A(A[0]),
                 .B(B[0]),
                 .Cin(Cin),
                 .Sum(Sum[0]),
                  .Cout(C[0]));
                     
  Full_Adder RCA1(.A(A[1]),
                  .B(B[1]),
                  .Cin(C[0]),
                  .Sum(Sum[1]),
                  .Cout(C[1]));
  
  Full_Adder RCA2(.A(A[2]),
                  .B(B[2]),
                  .Cin(C[1]),
                  .Sum(Sum[2]),
                  .Cout(C[2]));
  
  Full_Adder RCA3(.A(A[3]),
                  .B(B[3]),
                  .Cin(C[2]),
                  .Sum(Sum[3]),
                  .Cout(Cout));
endmodule
