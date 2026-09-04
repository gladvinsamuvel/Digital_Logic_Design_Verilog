module decoder3to8_gate(
    input A, B, C,
    output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7
);

wire An, Bn, Cn;

// NOT Gates
not (An, A);
not (Bn, B);
not (Cn, C);

// AND Gates
and (Y0, An, Bn, Cn);
and (Y1, An, Bn, C);
and (Y2, An, B,  Cn);
and (Y3, An, B,  C);
and (Y4, A,  Bn, Cn);
and (Y5, A,  Bn, C);
and (Y6, A,  B,  Cn);
and (Y7, A,  B,  C);

endmodule