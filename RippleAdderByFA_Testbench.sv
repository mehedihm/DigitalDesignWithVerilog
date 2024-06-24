// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module testbench;
  reg [3:0] A_tb, B_tb;
  reg Cin_tb;
  wire [3:0] Sum_tb;
  wire Cout_tb;
  
  RippleAdd DUT (.A(A_tb),
          .B(B_tb),
          .Cin(Cin_tb),
          .Sum(Sum_tb),
          .Cout(Cout_tb));
  initial begin
    // Initialize the dump file
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    // Test Case 1
    A_tb = 4'b0000;
    B_tb = 4'b0000;
    Cin_tb = 1'b0;
    #5;
    
    // Test Case 2
    A_tb = 4'b0000;
    B_tb = 4'b0000;
    Cin_tb = 1'b1;
    #5;
    
    // Test Case 3
    A_tb = 4'b0001;
    B_tb = 4'b0000;
    Cin_tb = 1'b0;
    #5;
    
    // Test Case 4
    A_tb = 4'b0011;
    B_tb = 4'b0101;
    Cin_tb = 1'b1;
    #5;
    
    // Test Case 5
    A_tb = 4'b0100;
    B_tb = 4'b0011;
    Cin_tb = 1'b0;
    #5;
    
    // Test Case 6
    A_tb = 4'b1010;
    B_tb = 4'b0010;
    Cin_tb = 1'b1;
    #5;
    
    // Test Case 7
    A_tb = 4'b1011;
    B_tb = 4'b1000;
    Cin_tb = 1'b0;
    #5;
    
    // Test Case 8
    A_tb = 4'b1100;
    B_tb = 4'b0111;
    Cin_tb = 1'b1;
    #5;
    
    // Test Case 9
    A_tb = 4'b0111;
    B_tb = 4'b1000;
    Cin_tb = 1'b0;
    #5;
    // Test Case 10
    A_tb = 4'b1111;
    B_tb = 4'b1111;
    Cin_tb = 1'b0;
    #5;
    
  end
endmodule