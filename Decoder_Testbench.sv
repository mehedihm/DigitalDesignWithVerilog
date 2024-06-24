// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module testbench;
  reg [2:0] in_tb;
  wire [7:0] out_tb;
  
  Decoder8 DUT (.in(in_tb),
                .out(out_tb));
  
  initial begin
  // Test case 1
  in_tb=3'b001;
  #5;
    $display("Input: %b, Output: %b", in_tb, out_tb);
  
  // Test case 2
  in_tb=3'b011;
  #5;
    
  $display("Input: %b, Output: %b", in_tb, out_tb);
  // Test case 3
  in_tb=3'b101;
  #5;
    $display("Input: %b, Output: %b", in_tb, out_tb);
  
  // Test case 4
  in_tb=8'b111;
  #5; 
    $display("Input: %b, Output: %b", in_tb, out_tb);
  // Finish simulation
    $finish;
  end
  
  // Dump Waves
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
  end  
endmodule