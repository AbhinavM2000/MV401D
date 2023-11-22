`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2023 03:20:20 PM
// Design Name: 
// Module Name: E_8_upcount_sync
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


module E_8_upcount_sync(input clk,output reg [7:0]count);
initial
count=0;
always @(posedge clk )
begin
if(count<8'hff)
count<= count+8'h01;
else
count=0;
end
endmodule
