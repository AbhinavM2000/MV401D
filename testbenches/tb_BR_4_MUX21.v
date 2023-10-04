`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 22:18:47
// Design Name: 
// Module Name: tb_BR_4_MUX21
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


module tb_BR_4_MUX21();
wire [0:3]data;
reg s;
reg [0:3]a,b;
BR_4_MUX21 uut(data, s,a,b);
  
     initial
    begin
    
     a=4'b0001;b=4'b1000;
    
     s=1;
    #10 s=0;
    
    #10 $finish;
    end
    

endmodule
