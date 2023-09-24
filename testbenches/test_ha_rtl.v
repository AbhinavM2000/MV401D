`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CASEST, University of Hyderabad
// Author: Abhinav M
// 
// Create Date: 09/20/2023 02:27:24 PM
// Design Name: 
// Module Name: test_ha_rtl
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


module test_ha_rtl();
    reg a,b;
    wire  s,c;
    ha_rtl uut(s,c,a,b);
    
    initial
    begin
    #10 a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;

    
    #10 $finish;
    end
    
endmodule