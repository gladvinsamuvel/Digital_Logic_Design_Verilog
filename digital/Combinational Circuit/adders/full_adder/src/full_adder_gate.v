module full_adder_gate(
    input A, B, Cin,
    output Sum, Cout
);

wire X1, C1, C2;

// Gate-Level Modeling
xor (X1, A, B);
xor (Sum, X1, Cin);

and (C1, A, B);
and (C2, X1, Cin);

or (Cout, C1, C2);

endmodule