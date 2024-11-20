`timescale 1ns / 1ps

module eightcounter #(parameter n =4  )(
        
    
    input logic clk,
    input logic reset,
    output logic [n-1:0]count
    );
    
    always_ff @(posedge clk or negedge reset) begin
        if (!reset)       
            count <= n-1'd0;   
        else
            count <= count + n-1'd1;
    end
    
endmodule
