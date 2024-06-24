// Code your testbench here
// or browse Examples
`timescale 1ns / 1 ps
module testbench;
  reg [7:0] in_tb;
  reg [2:0] sel_tb;
  wire out_tb;
  
  // Instantiate the Mux module
  Mux DUT (.in(in_tb),
           .sel(sel_tb),
           .out(out_tb));
  
  // Initialize the test cases
  initial begin
    in_tb= 8'b10001010;
    sel_tb= 3'b010;
    #5;
    $display("Input: %b, Select: %b, Output: %b", in_tb, sel_tb, out_tb);
    
    sel_tb= 3'b111;
    #5;
    $display("Input: %b, Select: %b, Output: %b", in_tb, sel_tb, out_tb);
    $finish; // finish the simulation
  end
  
  // Dump waves
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);  
  end
endmodule