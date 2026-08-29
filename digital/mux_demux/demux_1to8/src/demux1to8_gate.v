module demux1to8_gate(
    input D,
    input S0, S1, S2,
    output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7
);

// Internal wires
wire S0n, S1n, S2n;

// NOT Gates
not (S0n, S0);
not (S1n, S1);
not (S2n, S2);

// AND Gates
and (Y0, D, S2n, S1n, S0n);
and (Y1, D, S2n, S1n, S0);
and (Y2, D, S2n, S1,  S0n);
and (Y3, D, S2n, S1,  S0);
and (Y4, D, S2,  S1n, S0n);
and (Y5, D, S2,  S1n, S0);
and (Y6, D, S2,  S1,  S0n);
and (Y7, D, S2,  S1,  S0);

endmodule