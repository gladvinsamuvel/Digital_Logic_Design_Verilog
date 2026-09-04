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

module ripple_carry_adder(
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