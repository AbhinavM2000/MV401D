

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 12:10:38 PM
// Design Name: 
// Module Name: tb_threedice
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


module tb_threedice();

reg d1,d2,d3;
wire y;

three_dice uut(y,d1,d2,d3);


initial
    begin
    
   #10 d1=0;d2=0;d3=0;
   #10 d1=0;d2=0;d3=1;
   #10 d1=0;d2=1;d3=0;
   #10 d1=1;d2=0;d3=0;
   #10 d1=1;d2=1;d3=0;
   #10 d1=0;d2=1;d3=1;
   #10 d1=1;d2=0;d3=1;
   #10 d1=1;d2=1;d3=1;
    
    #10 $finish;
    end

endmodule

