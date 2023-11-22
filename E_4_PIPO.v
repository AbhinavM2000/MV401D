`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2023 02:50:43 PM
// Design Name: 
// Module Name: E_4_PIPO
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

module E_4_PIPO(input clk,rst, [3:0]pi, output reg [3:0]po);

always @(posedge clk)
begin
if (rst)
po<= 4'b0000;
else
po <= pi;
end
endmodule
