`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2023 07:34:55
// Design Name: 
// Module Name: BR_1_comp1
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



module BR_1_comp1(output LT,EQ,GT, input a,b);

assign {LT, EQ, GT} = (a < b)?  {1'b1, 1'b0, 1'b0} :
                      (a==b) ?  {1'b0, 1'b1, 1'b0} :
                                 {1'b0, 1'b0, 1'b1};

endmodule