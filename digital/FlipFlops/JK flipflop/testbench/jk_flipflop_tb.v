`timescale 1ns/1ps

module jk_flipflop_tb;

    reg J;
    reg K;
    reg reset;
    reg clk;
    wire Q;

    // Instantiate JK flip-flop
    jk_flipflop uut (
        .J(J),
        .K(K),
        .reset(reset),
        .clk(clk),
        .Q(Q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Initial values
        clk = 0;
        J = 0;
        K = 0;
        reset = 1;

        // Reset
        #10;
        reset = 0;

        // HOLD: J=0, K=0
        J = 0;
        K = 0;
        #10;

        // SET: J=1, K=0
        J = 1;
        K = 0;
        #10;

        // HOLD: J=0, K=0
        J = 0;
        K = 0;
        #10;

        // RESET: J=0, K=1
        J = 0;
        K = 1;
        #10;

        // HOLD: J=0, K=0
        J = 0;
        K = 0;
        #10;

        // TOGGLE: J=1, K=1
        J = 1;
        K = 1;
        #10;

        // TOGGLE again
        J = 1;
        K = 1;
        #10;

        // Apply reset again
        reset = 1;
        J = 0;
        K = 0;
        #10;

        reset = 0;

        #10;
        $finish;

    end

endmodule