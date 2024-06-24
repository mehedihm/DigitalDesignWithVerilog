// Code your testbench here
// or browse Examples
`timescale 1ns / 1 ps
module testbench;
  reg [3:0] D_tb;
  reg clk_tb, reset_tb;
  wire [3:0]Q_tb;
  
  DFF DUT(.D(D_tb),
          .clk(clk_tb),
          .reset(reset_tb),
          .Q(Q_tb));
  
  // Clock generation
  always #5 clk_tb= ~clk_tb;
  
  // Initialize 
  initial begin
    D_tb= 4'b1001;
    clk_tb= 1'b0;
    reset_tb= 1'b1;
    $display("Data: %b, Clock: %b, Reset: %b, Output: %b", D_tb, clk_tb, reset_tb, Q_tb);
    
    #5;
    D_tb= 4'b1100;
    $display("Data: %b, Clock: %b, Reset: %b, Output: %b", D_tb, clk_tb, reset_tb, Q_tb);
      
    #5;
    D_tb= 4'b1100;
    reset_tb= 1'b0;
    $display("Data: %b, Clock: %b, Reset: %b, Output: %b", D_tb, clk_tb, reset_tb, Q_tb);
    
    #5;
    D_tb= 4'b1110;
    reset_tb= 1'b1;
    $display("Data: %b, Clock: %b, Reset: %b, Output: %b", D_tb, clk_tb, reset_tb, Q_tb);
    
    #5;
    D_tb= 4'b1111;
    reset_tb= 1'b1;
    $display("Data: %b, Clock: %b, Reset: %b, Output: %b", D_tb, clk_tb, reset_tb, Q_tb);
    
    #5;
    $finish;
  end
  
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
  end
endmodule