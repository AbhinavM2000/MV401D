`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Hyderabad
// Author: Abhinav M 
// 
// Create Date: 09/13/2023 02:55:03 PM
// Design Name: 
// Module Name: fa
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


module fa(
    output s,
    output c_out,
    input a,
    input b,
    input c_in
    );
    wire w_1,w_2,w_3,w_4;
    
    xor x_1(w_1, a,b); //A XOR B
    xor x_2(s, w_1,c_in); // A XOR B XOR C_IN = SUM
    
    and a_1(w_3,w_1,c_in); // (A XOR B) .C_IN
    and a_2(w_4,a,b); // A.B
    or o_1(c_out,w_4,w_3); // // (A XOR B) .C_IN + AB = C_OUT
    
endmodule
// SUM = A XOR B XOR C_IN | C_OUT = (A XOR B) C_IN + A.B