`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 21:23:29
// Design Name: 
// Module Name: tb_DB_8_syncrst
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


module tb_DB_8_syncrst();
reg clk,rst;
reg [7:0] D;
wire [7:0] Q;
DB_8syncrst uut(rst,clk, D, Q);


initial 
    begin
        clk=0;
        forever #1 clk = ~clk;  
    end
initial
begin
 rst=1; #5
 
 rst=0; #5
 
D = 8'b10101010; #5
 
D = 8'b11111111; #5
 
D = 8'b01010101; #5
 
 #150 $finish;
end
endmodule
