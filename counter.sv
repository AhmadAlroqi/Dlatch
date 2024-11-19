`timescale 1ns / 1ps

module counter(
//input logic [3:0]d,
input logic rest,clk,
input logic s,
output logic [3:0]q

    
    );
 // logic s;
  logic [3:0]a;
  logic [3:0]out;
  
    mux #(4) m0(.s(s),.x(d),.y(a),.z(out));
  
    logic [3:0]d;  
    assign d[0]=~q[0];
    assign d[1]=q[0]^q[1];
    assign d[2]=(q[2]&~q[0])|(q[2]&~q[1])|(~q[2]&q[1]&q[0]);
    assign d[3]=(q[3]&~q[2])|(q[3]&~q[0])|(~q[1]&q[3])|(~q[3]&q[2]&q[1]&q[0]);
    
    /* assign a[0]=~q[0];
     assign a[1]=(~q[1]&~q[0])|(q[1]&q[0]);
     assign a[2]=(q[2])&(q[1]|(q[3]&q[0]))|(~q[2]&~q[1]&~q[0]);
     assign a[3]=(q[3])&(q[0]|q[1]|q[2])|(~q[3]&~q[1]&~q[0]&~q[2]);*/
 
     assign a[0]=~q[0];
     assign a[1]=(~q[0])^(q[1]);
     assign a[2]=(q[2])^(~q[1]&~q[0]);
     assign a[3]=(q[3])^(~q[1]&~q[0]&~q[2]);
    
    
    ff f0 (.d(out[0]), .clk(clk), .rest(rest), .q(q[0]));
    ff f1 (.d(out[1]), .clk(clk), .rest(rest), .q(q[1]));
    ff f2 (.d(out[2]), .clk(clk), .rest(rest), .q(q[2]));
    ff f3 (.d(out[3]), .clk(clk), .rest(rest), .q(q[3]));
    
    
  
endmodule
