`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2023 07:33:43
// Design Name: 
// Module Name: BS_4_MUX81
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


module BS_4_MUX81(output [3:0]data, input [2:0]s, input [3:0]A0,A1,A2,A3,A4,A5,A6,A7);

wire [3:0]w1,w2;

BR_4_MUX_41 m1(w1,s[1:0],A0,A1,A2,A3);

BR_4_MUX_41 m2(w2,s[1:0],A4,A5,A6,A7);

BS_4_MUX21 m3(data,s[2],w1,w2);

endmodule
