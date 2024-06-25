// Code your design here
// Code your design here
// Design a 4-bit left and right shifter
`timescale 1ns / 1ps
module Shifter(
  input wire [3:0] data,  
  input wire shift,  // Direction control: 1 for left, 0 for right
  input wire clk,           
  input wire reset,         
  output reg [3:0] out 
);

  always @(posedge clk or negedge reset) begin
    if (!reset)
      out <= 4'b0000; // Reset the output
    else if (shift)
      out <= {data[2:0], 1'b0}; // Left shift
    else
      out <= {1'b0, data[3:1]}; // Right shift
  end

endmodule
