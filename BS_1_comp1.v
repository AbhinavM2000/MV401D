`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2023 07:34:41
// Design Name: 
// Module Name: BS_1_comp1
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

module BS_1_comp1(output LT, EQ, GT, input a,b);

wire w1, w2;

not X1(w1, a);
not X2 (w2, b);
and X3 (LT,w1, b);
and X4 (GT,w2, a);
xnor X5 (EQ, a, b);
    
endmodule

