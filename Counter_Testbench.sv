// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps
module testbench;
  reg updown_tb, clk_tb, reset_tb;
  wire [3:0] count_tb;
  
  // Instantiate the Counter module
  Counter DUT(.updown(updown_tb),
              .clk(clk_tb),
              .reset(reset_tb),
              .count(count_tb));
  
  // Clock generation
  initial
    begin
      clk_tb= 1'b0;
      forever #5 clk_tb= ~clk_tb;
    end
  
  initial begin
  // Test Case 1
  updown_tb= 1'b1;
  reset_tb= 1'b1;
  #100;
  
  // Test Case 2
  updown_tb= 1'b0;
  reset_tb= 1'b1;
  #100;
  
  // Test Case 3
  updown_tb= 1'b1;
  reset_tb= 1'b0;
  #100;
  
  // Test Case 4
  updown_tb= 1'b1;
  reset_tb= 1'b1;
  #100;
  $finish;
  end
  
  // Dump waves
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
  end
endmodule