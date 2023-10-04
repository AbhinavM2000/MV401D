`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2023 07:30:18
// Design Name: 
// Module Name: BS_4_MUX21
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


module BS_4_MUX21(output [3:0]data,input s,input [3:0]a,b);

mux_2_1 m[3:0](s,a,b,data); //used 1 bit 2x1 mux to make 4 bit 2x1 mux

endmodule
