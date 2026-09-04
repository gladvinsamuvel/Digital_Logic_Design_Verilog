module encoder8to3_gate(
    input D0, D1, D2, D3, D4, D5, D6, D7,
    output Y0, Y1, Y2
);

// OR Gates
or (Y0, D1, D3, D5, D7);
or (Y1, D2, D3, D6, D7);
or (Y2, D4, D5, D6, D7);

endmodule