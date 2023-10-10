
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 11:58:02 AM
// Design Name: 
// Module Name: three_dice
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


module three_dice(
    output y,
    input d1,
    input d2,
    input d3
    );
    
    assign y=d1^d2^d3;
    
endmodule



