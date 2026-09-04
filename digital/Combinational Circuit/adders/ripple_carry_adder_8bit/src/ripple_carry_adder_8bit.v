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


module ripple_carry_adder_8bit(
    input [7:0] A, B,
    input Cin,
    output [7:0] Sum,
    output Cout
);

wire c1, c2, c3, c4, c5, c6, c7;

full_adder FA0(A[0], B[0], Cin, Sum[0], c1);
full_adder FA1(A[1], B[1], c1,  Sum[1], c2);
full_adder FA2(A[2], B[2], c2,  Sum[2], c3);
full_adder FA3(A[3], B[3], c3,  Sum[3], c4);
full_adder FA4(A[4], B[4], c4,  Sum[4], c5);
full_adder FA5(A[5], B[5], c5,  Sum[5], c6);
full_adder FA6(A[6], B[6], c6,  Sum[6], c7);
full_adder FA7(A[7], B[7], c7,  Sum[7], Cout);

endmodule