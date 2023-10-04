`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 17:00:37
// Design Name: 
// Module Name: tb_BS_comp_1
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


module tb_BS_comp1();
reg a,b;
wire LT,EQ,GT;
BS_1_comp1 uut(LT, EQ, GT,a,b);
 initial
    begin
    #5
    a=1;b=0; #10
    a=0;b=0; #10
    a=0;b=1; #10
    a=1;b=1; #10
    
    
    
    #10 $finish;
    end

endmodule