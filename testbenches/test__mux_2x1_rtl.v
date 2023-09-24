`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2023 03:32:53 PM
// Design Name: 
// Module Name: test__mux_2x1_rtl
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


module test__2x1_mux_rtl();
wire y;
reg s,a0,a1;


_2x1_mux_rtl uut(y,s,a0,a1);


 initial
 begin
    #10 s=0;a0=0;a1=0;
    #10 s=0;a0=0;a1=1;
    #10 s=0;a0=1;a1=0;
    #10 s=0;a0=1;a1=1;
    #10 s=1;a0=0;a1=0;
    #10 s=1;a0=0;a1=1;
    #10 s=1;a0=1;a1=0;
    #10 s=1;a0=1;a1=1; 
 #10 $finish;
 end


endmodule
