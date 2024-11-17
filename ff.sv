`timescale 1ns / 1ps


module ff(
input logic d , clk ,rest,
output q
    );
    logic w1;
    
    Latch f1(d,~clk,rest,w1);
    Latch f2(w1,clk,rest,q);

    
    
endmodule
