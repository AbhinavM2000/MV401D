`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2023 02:40:10 PM
// Design Name: 
// Module Name: DB_8syncrst
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

module DB_8syncrst(rst, clk, D, Q);
input rst;
input clk;
input [7:0] D;
output [7:0] Q;
reg [7:0] Q;
always @(posedge clk)
if (rst)
Q = 0;
else
Q = D;
endmodule


