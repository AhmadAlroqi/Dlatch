`timescale 1ns / 1ps

module mulit(
    input wire clk,
    input wire reset,
    input wire en,
    input wire [7:0] x,
    input wire [7:0] y,
    output reg [7:0] res
);
    wire [7:0] a1out, a2out;
    
 eereg a1 (
    .clk(clk), 
    .rst(reset), 
    .en(en), 
    .d(x), 
    .q(a1out)
);

eereg a2 (
    .clk(clk), 
    .rst(reset), 
    .en(en), 
    .d(y), 
    .q(a2out)
);
    
    
    logic [7:0] count;
    logic accum_enable;
    
    assign accum_enable = ~(count == y);
    always @(posedge clk or posedge reset) begin
        if (!reset) begin 
            res <= 16'd0;
            count <= 8'd0;
        end     
        else if (accum_enable) begin 
            res <= res + x;
            count <= count + 1;
        end
    
    end
    
    
//    always @(posedge clk, posedge reset) begin 
//        if(reset) 
//    end
    
endmodule
