`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CASEST, University of Hyderabad
// Author: Abhinav M 
// 
// Create Date: 09/13/2023 03:40:37 PM
// Design Name: 
// Module Name: test_ha
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


module test_ha();
    reg a,b;
    wire  s,c;
    ha uut(s,c,a,b);
    
    initial
    begin
    #10 a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;

    
    #10 $finish;
    end
    
endmodule
