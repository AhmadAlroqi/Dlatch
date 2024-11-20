`timescale 1ns / 1ps

module eereg(
        
    input logic clk,             
    input logic rst,  
    input logic en,           
    input logic [7:0] d,         
    output logic [7:0] q          
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 8'b0;          
        else if (en)
            q <= d;             
    end

endmodule


