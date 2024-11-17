`timescale 1ns / 1ps

module tb_Reg;

    logic [3:0] d;
    logic clk, rest;
    logic [3:0] q;

    Reg uut (
        .d(d),
        .rest(rest),
        .clk(clk),
        .q(q)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        d = 4'b0000;
        rest = 0;

        #10 d = 4'b0001; rest = 1;
        #20 d = 4'b0010; rest = 1;
        #20 d = 4'b0100; rest = 0;
        #20 d = 4'b1000; rest = 0;

        #30 $finish;
    end

endmodule
