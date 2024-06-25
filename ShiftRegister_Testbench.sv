// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps
module testbench;
  reg [3:0] data_tb;
  reg shift_tb, clk_tb, reset_tb;
  wire [3:0] out_tb;

  // Instantiate the Shifter module
  Shifter DUT (
    .data(data_tb),
    .shift(shift_tb),
    .clk(clk_tb),
    .reset(reset_tb),
    .out(out_tb)
  );

  // Clock generation
  initial begin
    clk_tb = 1'b0;
    forever #5 clk_tb = ~clk_tb;
  end

  // Initialize the test cases
  initial begin
    // Test case 1: Reset
    data_tb = 4'b1010;
    shift_tb = 1'b1;
    reset_tb = 1'b0; // Apply reset
    #10;
    reset_tb = 1'b1; // Release reset
    $display("Reset, Output: %b", out_tb);
    #10;

    // Test case 2: Shift left
    data_tb = 4'b1010;
    shift_tb = 1'b1;
    #10;
    $display("Shift Left, Input: %b, Output: %b", data_tb, out_tb);
    #10;

    // Test case 3: Shift right
    data_tb = 4'b1010;
    shift_tb = 1'b0;
    #10;
    $display("Shift Right, Input: %b, Output: %b", data_tb, out_tb);
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
