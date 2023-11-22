

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2023 03:30:39 PM
// Design Name: 
// Module Name: tb_FB_det_1010_mea
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
module tb_FB_det_1010_mea();
   wire z;
   reg clk,w,rst;
   FB_det_1010_mea uut(clk,w,rst,z);
initial 
    begin
        clk=0;
        forever #1 clk = ~clk;
    end
initial
begin
rst=1;#2
rst=0;

w=0;#2
w=1;#2
w=0;#2
w=1;#2
w=0;#2 
// hit
w=1;#2
w=1;#2
w=0;#2
w=0;#2
w=1;#2
w=0;#2
w=1;#2
w=0;#2
// hit 

w=0;#2
w=1;#2
w=0;#2
w=1;#2
w=0;#2 
// hit
w=1;#2
w=1;#2
w=0;#2
w=0;#2
w=1;#2
w=0;#2
w=1;#2
w=0;#2
// hit 

w=0;#2
w=1;#2
w=0;#2
w=1;#2
w=0;#2 
// hit
w=1;#2
w=1;#2
w=0;#2
w=0;#2
w=1;#2
w=0;#2
w=1;#2
w=0;#2
// hit 

w=0;#2
w=1;#2
w=0;#2
w=1;#2
w=0;#2 
// hit
w=1;#2
w=1;#2
w=0;#2
w=0;#2
w=1;#2
w=0;#2
w=1;#2
w=0;#2
// hit 

w=0;#2
w=1;#2
w=0;#2
w=1;#2
w=0;#2 
// hit
w=1;#2
w=1;#2
w=0;#2
w=0;#2
w=1;#2
w=0;#2
w=1;#2
w=0;#2
// hit 
w=0;#2
#50 $finish;
end
endmodule
