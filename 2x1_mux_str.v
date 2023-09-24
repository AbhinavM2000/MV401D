`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CASEST, University of Hyderabad
// Author: Abhinav M
// 
// Create Date: 09/20/2023 03:07:37 PM
// Design Name: 
// Module Name: 2x1_mux_str
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


module _2x1_mux_str(
    output y,
    input s,
    input a0,
    input a1
    );
    wire w1,w2,nw_1;
    
    not n1(nw_1,s); //s'
    
    nand nd1(w1,a0,nw_1); //s' ND a0
    
    nand nd2(w2,s,a1); //s ND a1
    
    nand nd3(y,w1,w2); // final ND to give y
    
    
endmodule
