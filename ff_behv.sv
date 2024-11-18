`timescale 1ns / 1ps

module ff_behv#(parameter n=4)(

    input logic [n-1:0] d,  
    input logic rest,     
    input logic clk,  
    input logic en,    
    output logic [n-1:0] q,  
    logic restn = ~rest
);
    always_ff @(posedge clk ,negedge rest) begin
    
    
        if (!rest)
            q <= 4'b0000;  
        else if(en)
            q <= d;
        else 
            q <= q;        
    end
endmodule
