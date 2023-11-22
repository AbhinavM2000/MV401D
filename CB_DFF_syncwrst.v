`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2023 02:49:59 PM
// Design Name: 
// Module Name: CB_DFF_syncwrst
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



module CB_DFF_syncwrst(input D,clk,rst,en,output reg Q);


always @(posedge clk) 
begin
if(~rst & en)
 Q <= D; 
else
 Q <= 1'b0;
end 

endmodule
