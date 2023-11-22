module tb_CB_DFF_syncwrst();
reg D;
reg clk;
wire Q;
reg en;
reg rst;
CB_DFF_syncwrst uut(D,clk,rst,en,Q);

initial 
    begin
        clk=0;
        rst=0;
        en=1;
        forever #10 clk = ~clk;
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
        
        D <= 1;
        #50;
        
        en=1;
        
        D <= 1;
        #50;

        D <= 0;
        #50
        
        rst=1;
        
        D <= 1;
        #50;
 
        D <= 0;
        #50
        #50 $finish;
    end 
endmodule