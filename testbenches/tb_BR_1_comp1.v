`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 22:56:09
// Design Name: 
// Module Name: tb_BR_1_comp1
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


module tb_BR_1_comp1();
wire LT,EQ,GT;
reg a,b;
BR_1_comp1 uut(LT,EQ,GT,a,b);

initial
    begin
    
        a=1;b=0;
    #10 a=1;b=1;
    #10 a=0;b=1;
   

    
    #10 $finish;
    end


endmodule
