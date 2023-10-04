`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 19:00:53
// Design Name: 
// Module Name: tb_BS_4_MUX81
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


module tb_BS_4_MUX81();
    reg [3:0]A0,A1,A2,A3,A4,A5,A6,A7;
    wire [3:0]data;
    reg [2:0] s;
BS_4_MUX81 uut(data,s,A0,A1,A2,A3,A4,A5,A6,A7);
    
     initial
    begin
    
    #10 A0=4'b0001;A1=4'b0010;A2=4'b0100;A3=4'b1000;A4=4'b1100;A5=4'b1110;A6=4'b0111;A7=4'b1111;
    #10 s=3'b000;
    #10 s=3'b001;
    #10 s=3'b010;
    #10 s=3'b011;
    #10 s=3'b100;
    #10 s=3'b101;
    #10 s=3'b110;
    #10 s=3'b111;
    
    
    
    #10 $finish;
    end
    
    
    
endmodule
