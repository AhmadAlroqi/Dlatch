`timescale 1ns / 1ps

module Latch(
input logic d,
input logic clk ,
input logic rest,
output logic q0 ,q1 

    );
    
    logic s ,r;
    logic  w1 ,w2;  
    
    nand (s,d ,clk);
    
    nand (r,~d,clk);  
   
    and(w1,r,rest);
    
    or(w2,s,~rest);
    
    nand(q0,w2,q1);
    
    nand(q1,w1,q0);
    
    
    
endmodule
