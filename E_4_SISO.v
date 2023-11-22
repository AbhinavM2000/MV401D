`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2023 02:44:22 PM
// Design Name: 
// Module Name: E_4_SISO
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


module E_4_SISO(input clk,rst,si,output reg so);

reg [3:0] tmp;

always @(posedge clk )
begin

if (rst)
tmp <= 4'b0000;


else
tmp <= tmp << 1;

tmp[0] <= si;
so = tmp[3];



end


endmodule



