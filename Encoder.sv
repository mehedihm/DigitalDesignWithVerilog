// Code your design here
// 8 to 3 encoder
`timescale 1ns/ 1ps

module Encoder8(in, out);
  input [7:0] in;
  output reg [2:0] out;
  
  always @ (in)
    begin
      case (in)
        8'b00000001: out= 3'b000; // First input is active
        8'b00000010: out= 3'b001; // Secone input is active
        8'b00000100: out= 3'b010; // Third input is active
        8'b00001000: out= 3'b011; // Fourth input is active
        8'b00010000: out= 3'b100; // Fifth input is active
        8'b00100000: out= 3'b101; // Sixth input is active
        8'b01000000: out= 3'b110; // Seventh input is active
        8'b10000000: out= 3'b111; // Eighth input is active
        default: out = 3'b000; // Default case
      endcase
    end
endmodule