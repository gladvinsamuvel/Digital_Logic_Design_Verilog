// Full Adder using Gate-Level Modeling
module full_adder(
    input A, B, Cin,
    output Sum, Cout
);

wire x1, a1, a2, a3;

xor (x1, A, B);
xor (Sum, x1, Cin);

and (a1, A, B);
and (a2, B, Cin);
and (a3, A, Cin);

or (Cout, a1, a2, a3);

endmodule


// 4-bit Ripple Carry Adder
module ripple_carry_adder_4bit(
    input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout
);

wire c1, c2, c3;

full_adder FA0(A[0], B[0], Cin, Sum[0], c1);
full_adder FA1(A[1], B[1], c1,  Sum[1], c2);
full_adder FA2(A[2], B[2], c2,  Sum[2], c3);
full_adder FA3(A[3], B[3], c3,  Sum[3], Cout);

endmodule


// 8-bit Ripple Carry Adder using two 4-bit RCA
module rca_8bit(
    input [7:0] A, B,
    input Cin,
    output [7:0] Sum,
    output Cout
);

wire c4;

// First 4-bit RCA: Lower 4 bits
ripple_carry_adder_4bit RCA1(
    A[3:0],
    B[3:0],
    Cin,
    Sum[3:0],
    c4
);

// Second 4-bit RCA: Upper 4 bits
ripple_carry_adder_4bit RCA2(
    A[7:4],
    B[7:4],
    c4,
    Sum[7:4],
    Cout
);

endmodule