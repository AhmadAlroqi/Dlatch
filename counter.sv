`timescale 1ns / 1ps

module counter(
input logic [3:0]d,
input logic rest,clk,
output logic [3:0]q

    
    );
    
    assign d[0]=~q[0];
    assign d[1]=q[0]^q[1];
    assign d[2]=(q[2]&~q[0])|(q[2]&~q[1])|(~q[2]&q[1]&q[0]);
    assign d[3]=(q[3]&~q[2])|(q[3]&~q[0])|(~q[1]&q[3])|(~q[3]&q[2]&q[1]&q[0]);
    
    
    
    
    
    
    ff f0 (.d(d[0]), .clk(clk), .rest(rest), .q(q[0]));
    ff f1 (.d(d[1]), .clk(clk), .rest(rest), .q(q[1]));
    ff f2 (.d(d[2]), .clk(clk), .rest(rest), .q(q[2]));
    ff f3 (.d(d[3]), .clk(clk), .rest(rest), .q(q[3]));
    
    
  
endmodule
