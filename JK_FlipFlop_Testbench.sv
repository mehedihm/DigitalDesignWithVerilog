// Code your testbench here
// or browse Examples
`timescale 1 ns/ 1ps
module testbench;
  reg j_tb, k_tb, clk_tb, reset_tb;
  wire q_tb;
  
  // Instantiate JKFF module
  JKFF DUT(.j(j_tb),
           .k(k_tb),
           .clk(clk_tb),
           .reset(reset_tb),
           .q(q_tb));
  
  // Clock generation
  initial begin
    clk_tb = 0; // Initialize the clock to 0
    forever #5 clk_tb = ~clk_tb; //Toggle the clock
  end
  
  // Initialize the test cases
  initial begin
    // Test case 1
    j_tb= 1'b0;
    k_tb= 1'b0;
    clk_tb=1'b0;
    reset_tb=1'b1;
    $display("J: %b, k: %b, Clock: %b, Reset: %b, Output: %b", j_tb, k_tb, clk_tb, reset_tb, q_tb);
    #10;
    
    // Test case 2
    j_tb= 1'b0;
    k_tb= 1'b1;
    reset_tb=1'b1;
    $display("J: %b, k: %b, Clock: %b, Reset: %b, Output: %b", j_tb, k_tb, clk_tb, reset_tb, q_tb);
    #10;
    
    // Test case 3
    j_tb= 1'b1;
    k_tb= 1'b0;
    reset_tb=1'b1;
    $display("J: %b, k: %b, Clock: %b, Reset: %b, Output: %b", j_tb, k_tb, clk_tb, reset_tb, q_tb);
    #10;
    
    // Test case 4
    j_tb= 1'b1;
    k_tb= 1'b0;
    reset_tb=1'b0;
    $display("J: %b, k: %b, Clock: %b, Reset: %b, Output: %b", j_tb, k_tb, clk_tb, reset_tb, q_tb);
    #10;
    
    // Test case 5
    j_tb= 1'b1;
    k_tb= 1'b1;
    reset_tb=1'b1;
    $display("J: %b, k: %b, Clock: %b, Reset: %b, Output: %b", j_tb, k_tb, clk_tb, reset_tb, q_tb);
    #10;
    
    // Test case 5
    j_tb= 1'b1;
    k_tb= 1'b1;
    reset_tb=1'b1;
    $display("J: %b, k: %b, Clock: %b, Reset: %b, Output: %b", j_tb, k_tb, clk_tb, reset_tb, q_tb);
    #10;
    
    // Finish simulation
    $finish;
  end
  
  // Dump waves
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
  end
endmodule