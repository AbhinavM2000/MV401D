`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CASEST, University of Hyderabad
// Author: Abhinav M
// 
// Create Date: 09/13/2023 02:57:44 PM
// Design Name: 
// Module Name: fa_ha
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


module fa_str_ha_rtl(
    output s,
   output c_out,
    input a,
    input b,
    input c_in
    );
    wire s_1,c_1,c_2;
    
    
    ha_rtl h_1(s_1,c_1,a,b); // OUTPUT OF FIRST HA 
    
    ha_rtl h_2(s,c2,s_1,c_in); // SUM FROM SECOND HA = FINAL SUM
   
    or o_1(c_out, c_1,c_2); // ADD CARRYS = FINAL CARRY
    
endmodule
