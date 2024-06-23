// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module testbench;
  reg A_tb, B_tb,Cin_tb;
  wire Sum_tb, Cout_tb;
  
  // Instantiate the Half_Adder module
  Full_Adder DUT(.A(A_tb),
                 .B(B_tb),
                 .Cin(Cin_tb),
                 .Sum(Sum_tb),
                 .Cout(Cout_tb));
    
  initial begin
    // Initialize the dump file
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    //Test Case 1
    A_tb=1'b0;
    B_tb=1'b0;
    Cin_tb=1'b0;
    #10;      //Delay of 10 unit time
    
    //Test Case 2
    A_tb=1'b0;
    B_tb=1'b0;
    Cin_tb=1'b1;
    #10;
    
    
    //Test Case 3
    A_tb=1'b1;
    B_tb=1'b0;
    Cin_tb=1'b1;
    #10;
    
    
    //Test Case 4
    A_tb=1'b1;
    B_tb=1'b1;
    Cin_tb=1'b0;
    #10;
    
     //Test Case 5
    A_tb=1'b1;
    B_tb=1'b1;
    Cin_tb=1'b1;
    #10;
    end

endmodule
