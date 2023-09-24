`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Hyderabad
// Author: Abhinav M 
// 
// Create Date: 09/13/2023 03:32:44 PM
// Design Name: 
// Module Name: test_fa
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


module test_fa(

    );
    reg a,b,c_in;
    wire  s,c_out;
    fa uut(s,c_out,a,b,c_in);
    
    initial
    begin
    #10 a=0;b=0;c_in=0;
    #10 a=0;b=0;c_in=1;
    #10 a=0;b=1;c_in=0;
    #10 a=0;b=1;c_in=1;
    #10 a=1;b=0;c_in=0;
    #10 a=1;b=0;c_in=1;
    #10 a=1;b=1;c_in=0;
    #10 a=1;b=1;c_in=1;
    
    #10 $finish;
    end
    
endmodule
