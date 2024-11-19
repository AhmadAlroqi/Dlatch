


`timescale 1ns / 1ps

module tb_counter;

    logic [3:0] d;
    logic rest, clk;
    logic [3:0] q;
    logic s;


    counter uut (
        
        .rest(rest),
        .clk(clk),
        .q(q),
        .s(s)
    );

  
    always begin
        #5 clk = ~clk;  
    end

  
    initial begin
        
       clk = 0;
        rest = 1;
        s=1;
     
    #10;
        // Apply reset
        $display("Applying reset");
        s=1;
        rest = 0;
        #10;
        rest = 1;

        // Test case 1: Normal counting sequence
   
#1000;

s=1;
#1000;
        
        // End the simulation
        $finish;
    end

    // Monitor changes to the output
    initial begin
        $monitor("At time %t, q = %b", $time, q);
    end

endmodule
