`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2023 08:39:23
// Design Name: 
// Module Name: test_4x1
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


module test_4x1(

    );
    
      reg sel0, sel1;
  reg i0,i1,i2,i3;
  wire y;
  
  mux_4_1 uut(sel0, sel1, i0, i1, i2, i3, y);
  
  initial begin
    {i3,i2,i1,i0} = 4'b1111;#10;
      {sel0, sel1} = 2'b00;#10;  
  end
endmodule

