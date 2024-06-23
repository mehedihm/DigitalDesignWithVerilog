// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module testbench;
  reg A_tb, B_tb;
  wire Y_tb, Cout_tb;
  
  // Instantiate the Half_Adder module
  Half_Adder DUT(.A(A_tb),
                 .B(B_tb),
                 .Y(Y_tb),
                 .Cout(Cout_tb));
    
  initial begin
    // Initialize the dump file
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    //Test Case 1
    A_tb=1'b0;
    B_tb=1'b1;
    #10;
    
    //Test Case 2
    A_tb=1'b1;
    B_tb=1'b0;
    #10;
    
    
    //Test Case 3
    A_tb=1'b1;
    B_tb=1'b1;
    #10;
    
    
    //Test Case 4
    A_tb=1'b0;
    B_tb=1'b0;
    #10;
    end

endmodule
