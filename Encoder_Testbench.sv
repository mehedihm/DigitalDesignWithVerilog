// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module testbench;
  reg [7:0] in_tb;
  wire [2:0] out_tb;
  
  Encoder8 DUT (.in(in_tb),
                .out(out_tb));
  
  initial begin
  // Test case 1
  in_tb=8'b00000001;
  #5;
    $display("Input: %b, Output: %b", in_tb, out_tb);
  
  // Test case 2
  in_tb=8'b00010000;
  #5;
    
  $display("Input: %b, Output: %b", in_tb, out_tb);
  // Test case 3
  in_tb=8'b01000000;
  #5;
    $display("Input: %b, Output: %b", in_tb, out_tb);
  
  // Test case 4
  in_tb=8'b10000000;
  #5; 
    $display("Input: %b, Output: %b", in_tb, out_tb);
  end
  
  // Dump Waves
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
  end
endmodule