`timescale 1ns/1ps

module sr_flipflop_tb;

    reg S;
    reg R;
    reg reset;
    reg clk;
    wire Q;

    // Instantiate the SR flip-flop
    sr_flipflop uut (
        .S(S),
        .R(R),
        .reset(reset),
        .clk(clk),
        .Q(Q)
    );

    // Clock generation: 10 ns period
    always #5 clk = ~clk;

    initial begin

        // Initial values
        clk = 0;
        S = 0;
        R = 0;
        reset = 1;

        // Reset
        #10;
        reset = 0;

        // HOLD: S=0, R=0
        S = 0;
        R = 0;
        #10;

        // SET: S=1, R=0
        S = 1;
        R = 0;
        #10;

        // HOLD: S=0, R=0
        S = 0;
        R = 0;
        #10;

        // RESET Q: S=0, R=1
        S = 0;
        R = 1;
        #10;

        // HOLD
        S = 0;
        R = 0;
        #10;

        // INVALID condition: S=1, R=1
        S = 1;
        R = 1;
        #10;

        // Apply reset again
        reset = 1;
        S = 0;
        R = 0;
        #10;

        reset = 0;

        #10;
        $finish;

    end

endmodule