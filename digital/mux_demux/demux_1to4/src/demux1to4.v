module demux1to4(
    input D,
    input S0,S1,
    output Y0,Y1,Y2,Y3
);

assign Y0 = (~S1 & ~S0) ? D : 0;
assign Y1 = (~S1 &  S0) ? D : 0;
assign Y2 = ( S1 & ~S0) ? D : 0;
assign Y3 = ( S1 &  S0) ? D : 0;

endmodule