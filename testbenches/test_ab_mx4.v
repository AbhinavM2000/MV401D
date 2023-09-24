`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2023 08:52:10
// Design Name: 
// Module Name: test_ab_mx4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_ab_mx4();
    
  reg s0, s1;
  reg A0,A1,A2,A3;
  wire y;
  
  mux_4_1 uut(s0, s1, A0, A1, A2, A3, y);
  
  initial begin
   
    {A3,A2,A1,A0} = 4'b1010;

    {s0, s1} = 00;#100;
     {s0, s1} = 01;#100;
     {s0, s1} = 10;#100;
     {s0, s1} = 11;#100;

  end
endmodule
