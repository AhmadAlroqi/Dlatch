`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////


module tb_ff;
logic d, clk, rest ;
logic q;
ff dut (
    d,
    clk ,
    rest,
    q ); 
    
    
     initial clk = 0;
      always #5 clk = ~clk;
      initial begin
         d = 0;
         rest = 0;

        #10 d = 1; rest = 1;
        #10 d = 0; rest = 1;
        #10 d = 1; rest = 1;
        #10 d = 0; rest = 1;

    #30 $finish;
    
    
    end
    
endmodule
