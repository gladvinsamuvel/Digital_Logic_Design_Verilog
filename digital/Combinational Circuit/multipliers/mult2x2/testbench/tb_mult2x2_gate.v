`timescale 1ns / 1ps

module tb_mult2x2_gate;

    reg [1:0] a;
    reg [1:0] b;
    wire [3:0] p;

    // Instantiate the multiplier
    mult2x2_gate DUT (
        .a(a),
        .b(b),
        .p(p)
    );

    initial begin

        // Test 0 × 0
        a = 2'b00;
        b = 2'b00;
        #10;

        // Test 0 × 1
        a = 2'b00;
        b = 2'b01;
        #10;

        // Test 1 × 1
        a = 2'b01;
        b = 2'b01;
        #10;

        // Test 1 × 2
        a = 2'b01;
        b = 2'b10;
        #10;

        // Test 2 × 2
        a = 2'b10;
        b = 2'b10;
        #10;

        // Test 2 × 3
        a = 2'b10;
        b = 2'b11;
        #10;

        // Test 3 × 1
        a = 2'b11;
        b = 2'b01;
        #10;

        // Test 3 × 2
        a = 2'b11;
        b = 2'b10;
        #10;

        // Test 3 × 3
        a = 2'b11;
        b = 2'b11;
        #10;

        $finish;
    end

endmodule