// Code your design here
// Design a 4 bit up down counter
`timescale 1ns / 1ps
module Counter(count, updown, clk, reset);
  input wire updown, clk, reset;
  output reg [3:0] count;
  always @(posedge clk or negedge reset) begin
    if(!reset)
      count<= 4'b0000;
    else if(updown)
      count<= count+1;
    else if(!updown)
      count<= count-1;
    else
      count<= count;
  end
endmodule