`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 19:36:17
// Design Name: 
// Module Name: BS_4_MUX_41
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

module BS_4_MUX41(output [3:0]y,input s0, s1,input [3:0]A0,A1,A2,A3);

 wire [3:0]y0, y1;
BR_4_MUX21 m1(y1,s1, A2, A3);
BR_4_MUX21 m2(y0, s1, A0,A1);
BR_4_MUX21 m3(y, s0, y0,y1);


endmodule
