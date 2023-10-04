`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2023 07:35:56
// Design Name: 
// Module Name: BS_4_comp4
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


module BS_4_comp4(output LT, EQ, GT, input [3:0]a,b);

wire [3:0]LT1,EQ1,GT1;

BS_1_comp1 c0(LT1[0],EQ1[0],GT1[0],a[0],b[0]); //bit-wise comparison
BS_1_comp1 c1(LT1[1],EQ1[1],GT1[1],a[1],b[1]);
BS_1_comp1 c2(LT1[2],EQ1[2],GT1[2],a[2],b[2]);
BS_1_comp1 c3(LT1[3],EQ1[3],GT1[3],a[3],b[3]);

or o2(LT,LT1[3],(EQ1[3]&LT1[2]), (EQ1[3]&EQ1[2]&LT1[1]),(EQ1[3]&EQ1[2]&EQ1[1]&LT1[0])); //a<b

or o1(GT,GT1[3],(EQ1[3]&GT1[2]), (EQ1[3]&EQ1[2]&GT1[1]),(EQ1[3]&EQ1[2]&EQ1[1]&GT1[0])); //a>b


and a1(EQ,EQ1[0],EQ1[1],EQ1[2],EQ1[3]); //a==b

endmodule
