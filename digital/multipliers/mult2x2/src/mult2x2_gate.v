module half_adder(
    input a, b,
    output sum, cout
);

    xor(sum, a, b);
    and(cout, a, b);

endmodule


module mult2x2_gate(
    input [1:0] a,
    input [1:0] b,
    output [3:0] p
);

    wire w1, w2, w3, w4;

    and(p[0], a[0], b[0]);
    and(w1, a[0], b[1]);
    and(w2, a[1], b[0]);
    and(w3, a[1], b[1]);

    half_adder HA1(w1, w2, p[1], w4);
    half_adder HA2(w3, w4, p[2], p[3]);

endmodule