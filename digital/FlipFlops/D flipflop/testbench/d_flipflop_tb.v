`timescale 1ns/1ps

module d_flipflop_tb;

    reg D;
    reg reset;
    reg clk;
    wire Q;

    // Instantiate D flip-flop
    d_flipflop uut (
        .D(D),
        .reset(reset),
        .clk(clk),
        .Q(Q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Initial values
        clk = 0;
        D = 0;
        reset = 1;

        // Reset
        #10;
        reset = 0;

        // D = 0
        D = 0;
        #10;

        // D = 1
        D = 1;
        #10;

        // D = 0
        D = 0;
        #10;

        // D = 1
        D = 1;
        #10;

        // D = 0
        D = 0;
        #10;

        // Apply reset again
        reset = 1;
        D = 1;
        #10;

        reset = 0;

        // D = 1
        D = 1;
        #10;

        #10;
        $finish;

    end

endmodule