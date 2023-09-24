`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2023 04:35:22 PM
// Design Name: 
// Module Name: MUX_4X1
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


module mux4x1(y,A0,A1,A2,A3,s1,s0);
input A0,A1,A2,A3,s1,s0;
output y;
wire mux1,mux2;
_2x1_mux_rtl mux_1(mux1,A0,A1,s1);
_2x1_mux_rtl mux_2(mux2,A2,A3,s1);
_2x1_mux_rtl mux_3(y,mux1,mux2,s0);
endmodule