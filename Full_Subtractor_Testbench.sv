// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module testbench;
  reg A_tb, B_tb,Bin_tb;
  wire Diff_tb, Bout_tb;
  
  // Instantiate the design module
  Full_Sub DUT(.A(A_tb),
                 .B(B_tb),
                 .Bin(Bin_tb),
                 .Diff(Diff_tb),
                 .Bout(Bout_tb));
    
  initial begin
    // Initialize the dump file
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    //Test Case 1
    A_tb=1'b0;
    B_tb=1'b0;
    Bin_tb=1'b0;
    #10;      //Delay of 10 unit time
    
    //Test Case 2
    A_tb=1'b0;
    B_tb=1'b0;
    Bin_tb=1'b1;
    #10;
    
    
    //Test Case 3
    A_tb=1'b1;
    B_tb=1'b0;
    Bin_tb=1'b1;
    #10;
    
    
    //Test Case 4
    A_tb=1'b1;
    B_tb=1'b1;
    Bin_tb=1'b0;
    #10;
    
     //Test Case 5
    A_tb=1'b1;
    B_tb=1'b1;
    Bin_tb=1'b1;
    #10;
    end

endmodule
