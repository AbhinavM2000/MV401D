`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2023 03:02:13 PM
// Design Name: 
// Module Name: tb_CB_DFF_sync
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

module tb_CB_DFF_async();
reg D;
reg clk;
wire Q;
reg en;
reg rst;

CB_DFF_async uut(D,clk,rst,en,Q);

initial 
    begin
        clk=0;
        rst=0;
        en=1;
        forever #10 clk = ~clk;
        end
    
initial 
    begin    
        forever #100 rst = ~rst;          
end
    
     
initial 
    begin 

        D <= 0;
        #50;

        D <= 1;
        #50;

 
        D <= 0;
        #50
 
        en=0;
        D<= 1;
 
        #50 $finish;
    end 
endmodule



 