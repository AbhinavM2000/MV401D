`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2023 03:31:05 PM
// Design Name: 
// Module Name: E_8_downcount_async
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


module E_8_downcount_async(input clk,rst, output reg [7:0]count);
initial
count=8'b11111111;

always @(posedge clk or posedge rst)
begin
if(rst)
count=8'b11111111;

if(count>8'b00000000 & rst==0)
count<= count-8'b00000001;

else if(count==8'b00000000);
count=8'b11111111;
end





endmodule