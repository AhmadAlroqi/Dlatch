`timescale 1ns / 1ps


module Reg(
input logic [3:0]d,
input logic rest,clk,
output logic [3:0]q

    );
    
    ff f0(d,clk,rest,q);
    ff f1(d,clk,rest,q);
    ff f2(d,clk,rest,q);
    ff f3(d,clk,rest,q);
    
endmodule