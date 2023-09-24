`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CASEST, University of Hyderabad
// Author: Abhinav M 
// 
// Create Date: 09/13/2023 02:56:56 PM
// Design Name: 
// Module Name: ha
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


module ha( //better to write outputs first then inputs

    output s,
    output c,
        input a,
    input b
    );
    xor xr_1 (s,a,b); // A XOR B = SUM
    and an_1 (c,a,b); // A.B = CARRY
    
endmodule



