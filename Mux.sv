// Code your design here
// Design a 8 to 1 mux
`timescale 1ns / 1ps

module Mux(in, sel, out);
  input wire [7:0] in;
  input wire [2:0] sel;
  output reg out;
  
  always @(in or sel) begin
    casex(sel)
        3'b000: out= in[0]; // Select first input
        3'b001: out= in[1]; // Select second input
        3'b010: out= in[2]; // Select third input
        3'b011: out= in[3]; // Select fourth input
        3'b100: out= in[4]; // Select fifth input
        3'b101: out= in[5]; // Select sixth input
        3'b110: out= in[6]; // Select seventh input
        3'b111: out= in[7]; // Select eigth input
        default: out= 1'bz;
       endcase
      end
endmodule
   