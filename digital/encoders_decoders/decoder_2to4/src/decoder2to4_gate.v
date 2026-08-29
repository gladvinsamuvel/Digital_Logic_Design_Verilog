module decoder2to4_gate(
    input A, B,
    output Y0, Y1, Y2, Y3
);

wire An, Bn;

not (An, A);
not (Bn, B);

and (Y0, An, Bn);
and (Y1, An, B);
and (Y2, A, Bn);
and (Y3, A, B);

endmodule