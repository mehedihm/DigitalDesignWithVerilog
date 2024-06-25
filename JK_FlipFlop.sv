// Code your design here
// Design a JK Flip Flop
`timescale 1 ns/ 1 ps
module JKFF(j, k, clk, reset, q);
  input j, k, clk, reset;
  output reg q;
  
  always @(posedge clk or negedge reset) begin
    if(!reset)
      q<=1'b0;
    else
      casex({j,k})
        2'b00: q<=q;
        2'b01: q<=1'b0;
        2'b10: q<=1'b1;
        2'b11: q<=~q;
        default: q<=1'bz;
      endcase
  end
endmodule