`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 15:01:41
// Design Name: 
// Module Name: BR_4_MUX_41
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


module BR_4_MUX_41(output [3:0]data,input [1:0]s,input [3:0]A0,A1,A2,A3);
    
assign data = (s==2'b00)?A0:
        (s == 2'b01) ? A1 :
        (s == 2'b10) ? A2 :
        (s == 2'b11) ? A3 :
        2'b00;
    
endmodule
