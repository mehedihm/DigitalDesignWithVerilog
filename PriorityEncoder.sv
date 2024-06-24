// Code your design here
// 8 to 3 priority encoder
`timescale 1ns/ 1ps

module PriorityEncoder(in, out);
  input [7:0] in;
  output reg [2:0] out;
  
  always @ (in)
    begin
      casex (in)
        8'b00000001: out= 3'b000; // Left most bit has the highest priority
        8'b0000001x: out= 3'b001;
        8'b000001xx: out= 3'b010;
        8'b00001xxx: out= 3'b011;
        8'b0001xxxx: out= 3'b100;
        8'b001xxxxx: out= 3'b101;
        8'b01xxxxxx: out= 3'b110;
        8'b1xxxxxxx: out= 3'b111;
        default: out = 3'b000; // Default case
      endcase
    end
endmodule