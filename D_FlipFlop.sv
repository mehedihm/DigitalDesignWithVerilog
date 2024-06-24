// Code your design here
// Design a 4 bit D Flip Flop
`timescale 1ns / 1ps
module DFF(D, clk, Q, reset);
  input wire [3:0] D;
  input wire clk, reset;
  output reg [3:0] Q;
  
  always @(posedge clk or negedge reset) begin
    if(!reset)     // Reset is active low here
      Q<= 4'b0000; // Force output to be Zero
    else
      Q<= D;       // Output follows input
  end
endmodule