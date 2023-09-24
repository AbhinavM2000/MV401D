`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CASEST, University of Hyderabad
// Author: Abhinav M
// 
// Create Date: 09/20/2023 04:17:47 PM
// Design Name: 
// Module Name: _2x1_mux_vector
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


module _2x1_mux_vector(
    output y,
    input s,
    input [1:0]a
    );
    
    assign y = s ? a[1] : a[0]; 
    
endmodule
