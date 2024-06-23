// Code your design here
// Design a 4 bit ripple carry adder
module RippleAdd(A, B, Cin, Sum, Cout);
  input wire [3:0]A, B;
  input wire Cin;
  output reg [3:0]Sum;
  output reg Cout;

  always @(A, B, Cin)
    {Cout,Sum} = A+B;
endmodule