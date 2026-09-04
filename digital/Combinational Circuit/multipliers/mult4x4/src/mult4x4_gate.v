module half_adder(input a, b, output sum, cout);
    xor(sum, a, b);
    and(cout, a, b);
endmodule


module full_adder(input a, b, cin, output sum, cout);
    wire x, y, z;

    xor(x, a, b);
    xor(sum, x, cin);
    and(y, a, b);
    and(z, x, cin);
    or(cout, y, z);
endmodule


module mult4x4_gate(
    input [3:0] a,
    input [3:0] b,
    output [7:0] p
);

    wire [14:0] g;
    wire [16:0] w;


    // AND GATES

    and(p[0], a[0], b[0]);

    and(g[0],  a[0], b[1]);
    and(g[1],  a[0], b[2]);
    and(g[2],  a[0], b[3]);

    and(g[3],  a[1], b[0]);
    and(g[4],  a[1], b[1]);
    and(g[5],  a[1], b[2]);
    and(g[6],  a[1], b[3]);

    and(g[7],  a[2], b[0]);
    and(g[8],  a[2], b[1]);
    and(g[9],  a[2], b[2]);
    and(g[10], a[2], b[3]);

    and(g[11], a[3], b[0]);
    and(g[12], a[3], b[1]);
    and(g[13], a[3], b[2]);
    and(g[14], a[3], b[3]);


    // ADDER STAGES

    half_adder HA1(g[3], g[0], p[1], w[0]);

    full_adder FA1(g[7], g[4], w[0], w[1], w[2]);

    full_adder FA2(g[11], g[8], w[2], w[3], w[4]);

    half_adder HA2(g[12], w[4], w[5], w[6]);


    half_adder HA3(w[1], g[1], p[2], w[7]);

    full_adder FA3(w[3], g[5], w[7], w[8], w[9]);

    full_adder FA4(w[5], g[9], w[9], w[10], w[11]);

    full_adder FA5(w[6], g[13], w[11], w[12], w[13]);


    half_adder HA4(w[8], g[2], p[3], w[14]);

    full_adder FA6(w[10], g[6], w[14], p[4], w[15]);

    full_adder FA7(w[12], g[10], w[15], p[5], w[16]);

    full_adder FA8(w[13], g[14], w[16], p[6], p[7]);

endmodule