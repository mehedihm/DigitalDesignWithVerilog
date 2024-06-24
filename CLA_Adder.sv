// Code your design here
// Design a Carry Look Ahead Adder
`timescale 1ns / 1ps

module CLA_Adder(A,B,Cin,Sum,Cout);
  input [3:0] A,B;
  input Cin;
  output [3:0] Sum;
  output Cout;
  
  wire [3:0] G,P;  // To generate and propagate the carries
  wire [3:0] C;  // To calculate the carries using G, P
  
  // Generate and Propagate
  assign G = A & B;  // Bitwise AND between A and B
  assign P = A ^ B;  // Bitwise XOR between A and B
  
  // Carry calculation
  assign C[0] = Cin;
  assign C[1] = G[0]|(P[0] & G[0]);
  assign C[2] = G[1]|(P[1] & C[1]);
  assign C[3] = G[2]|(P[2] & C[2]);
  assign Cout = G[3]|(P[3] & C[3]);
  
  // Sum calculation
  assign Sum = P ^ C;  // Sum = A xor B xor Carry 
  
endmodule

