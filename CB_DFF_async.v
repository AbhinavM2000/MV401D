`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2023 02:52:37 PM
// Design Name: 
// Module Name: CB_DFF_async
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



module CB_DFF_async(input D,clk,rst,en,output reg Q);


always @(posedge clk or posedge rst) 
begin
if(~rst & en)
 Q <= D; 
else
 Q <= 1'b0;
end 

endmodule
