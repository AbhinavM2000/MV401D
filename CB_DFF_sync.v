`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2023 02:45:45 PM
// Design Name: 
// Module Name: CB_DFF_sync
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


module CB_DFF_sync(input D,clk,en,output reg Q);


always @(posedge clk & en) 
begin
 Q <= D; 
end 





endmodule
