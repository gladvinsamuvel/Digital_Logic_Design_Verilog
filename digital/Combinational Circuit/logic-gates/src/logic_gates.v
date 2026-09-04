module logic_gates(
    input A, B,
    output AND_OUT,
    output OR_OUT,
    output NOT_A,
    output NOT_B,
    output NAND_OUT,
    output NOR_OUT,
    output XOR_OUT,
    output XNOR_OUT
);

// Gate-Level Modeling

and  (AND_OUT, A, B);
or   (OR_OUT, A, B);
not  (NOT_A, A);
not  (NOT_B, B);
nand (NAND_OUT, A, B);
nor  (NOR_OUT, A, B);
xor  (XOR_OUT, A, B);
xnor (XNOR_OUT, A, B);

endmodule