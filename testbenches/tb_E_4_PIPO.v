`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 21:23:29
// Design Name: 
// Module Name: tb_E_4_PIPO
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


module tb_E_4_PIPO();
reg clk,rst;
reg [3:0] pi;
wire [3:0] po;
E_4_PIPO uut(clk,rst, pi, po);


initial 
    begin
        clk=0;
        forever #1 clk = ~clk;  
    end
initial
begin
 rst=1; #5
 
 rst=0; #5
 
 pi = 4'b1010; #5
 
 pi = 4'b1111; #5
 
 pi = 4'b0101; #5
 
 #150 $finish;
end
endmodule
