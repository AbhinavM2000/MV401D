`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2023 08:48:20
// Design Name: 
// Module Name: 4x1_mux
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


module mux_4_1(input s0, s1,input  A0,A1,A2,A3,output y);
  
  wire y0, y1;
  
mux_2_1 m1(s1, A2, A3, y1);
mux_2_1 m2(s1, A0, A1, y0);
mux_2_1 m3(s0, y0, y1, y);
endmodule