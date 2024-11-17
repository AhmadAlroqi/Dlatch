`timescale 1ns / 1ps

module tb_latch;

logic d, clk, rest ;
logic q1 , q0;

Latch dut (
    d,
    clk ,
    rest,
    q0 ,
    q1 );   
    
      
    
      
      initial clk = 0;
      always #5 clk = ~clk;
      initial begin
         d = 0;
         rest = 0;

        #10 d = 1; rest = 1;
        #20 d = 0; rest = 1;
        #20 d = 1; rest = 0;
        #20 d = 0; rest = 0;
        #20 d = 0; rest = 1;
        #20 d = 1; rest = 1;
        #20 d = 0; rest = 1;

    #30 $finish;
    
    
    end
     
endmodule
 