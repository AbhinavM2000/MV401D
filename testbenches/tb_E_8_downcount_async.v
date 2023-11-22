`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2023 03:33:33 PM
// Design Name: 
// Module Name: tb_E_8_downcount_async
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


module tb_E_8_downcount_async();

wire [7:0]count ;
reg clk,rst;

E_8_downcount_async uut(clk,rst,count);

initial 
    begin
        clk=0;
        forever #1 clk = ~clk;
          
    end


initial
begin
rst=0;
#20

rst=1;

#20

rst=0;
#20

rst=1;
#20

rst=0;
#20

#500 $finish;

end


endmodule
