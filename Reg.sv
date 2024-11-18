`timescale 1ns / 1ps


module Reg1 #(parameter n=4)(
input logic [n-1:0]d,
input logic rest,clk,
output logic [n-1:0]q

    );
    
    ff f0 (.d(d[0]), .clk(clk), .rest(rest), .q(q[0]));
    ff f1 (.d(d[1]), .clk(clk), .rest(rest), .q(q[1]));
    ff f2 (.d(d[2]), .clk(clk), .rest(rest), .q(q[2]));
    ff f3 (.d(d[3]), .clk(clk), .rest(rest), .q(q[3]));
    
endmodule