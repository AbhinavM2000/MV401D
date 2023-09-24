`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2023 08:12:39
// Design Name: 
// Module Name: test-4x1-2x1-rtl
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

module test-4x1-2x1-rtl();

  reg sel0, sel1;
  reg i0,i1,i2,i3;
  wire y;
  
  mux_4_1 uut(sel0, sel1, i0, i1, i2, i3, y);
  
  end module