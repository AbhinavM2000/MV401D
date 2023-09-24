`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CASEST, University of Hyderabad
// Author: Abhinav M
// 
// Create Date: 09/20/2023 02:25:25 PM
// Design Name: 
// Module Name: ha_rtl
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


module ha_rtl(
    output s,
    output c,
    input a,
    input b
    );
    
    assign s = a^b;   // the RTL way, as opposed to using xor xr_1 (s,a,b);
    assign c = a&b;
    
endmodule
