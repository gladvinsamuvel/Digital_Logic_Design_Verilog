`timescale 1ns/1ps

module t_flipflop_tb;

    reg T;
    reg reset;
    reg clk;
    wire Q;

    // Instantiate T flip-flop
    t_flipflop uut (
        .T(T),
        .reset(reset),
        .clk(clk),
        .Q(Q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Initial values
        clk = 0;
        T = 0;
        reset = 1;

        // Reset
        #10;
        reset = 0;

        // HOLD: T=0
        T = 0;
        #10;

        // TOGGLE: T=1
        T = 1;
        #10;

        // TOGGLE again
        T = 1;
        #10;

        // HOLD: T=0
        T = 0;
        #10;

        // TOGGLE
        T = 1;
        #10;

        // TOGGLE again
        T = 1;
        #10;

        // Apply reset again
        reset = 1;
        T = 0;
        #10;

        reset = 0;

        // TOGGLE after reset
        T = 1;
        #10;

        #10;
        $finish;

    end

endmodule