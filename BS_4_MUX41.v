`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2023 07:33:24
// Design Name: 
// Module Name: BS_4_MUX41
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

//BR_4_MUX21(output [0:3]data,input s,input [0:3]a,b);
 wire [3:0]y0, y1;
BR_4_MUX21 m1(y1,s1, A2, A3);
BR_4_MUX21 m2(y0, A0, A1,s1);
BR_4_MUX21 m3(y, y0, y1,s0);

endmodule
