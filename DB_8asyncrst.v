`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2023 02:22:58 PM
// Design Name: 
// Module Name: DB_8asyncrst
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

module DB_8asyncrst (reset, clk, D, Q);
input reset;
input clk;
input [7:0] D;
output [7:0] Q;
reg [7:0] Q;
always @(posedge clk or posedge reset)
if (reset)
Q = 0;
else
Q = D;
endmodule