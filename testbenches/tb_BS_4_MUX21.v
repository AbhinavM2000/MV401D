`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 22:50:56
// Design Name: 
// Module Name: tb_BS_4_MUX21
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


module tb_BS_4_MUX21();
wire [3:0] data;
reg s;
reg [0:3]a,b;
BS_4_MUX21 uut(data,s,a,b);

initial
    begin
    
        a=4'b0001;b=4'b1111;
        s=1'b0;
    #10 s=1'b1;
   
    
    #10 $finish;
    end



endmodule
