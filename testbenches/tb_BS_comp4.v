`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 16:32:12
// Design Name: 
// Module Name: tb_BS_comp4
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


module tb_BS_comp4();
reg [3:0]a,b;
wire LT,EQ,GT;
BS_4_comp4 uut(LT, EQ, GT,a,b);
 initial
    begin
    #5
    a=4'b1010;b=4'b0100;#10 //g
    
    a=4'b0010;b=4'b1100;#10  //l
    
    a=4'b1110;b=4'b1110;#10  //e
    
    // a=4'b1010;b=4'b0100;#10  
    
   // a=4'b0010;b=4'b1100;#10
    
   // a=4'b1110;b=4'b1110;#10
    
    
    #10 $finish;
    end

endmodule
