module sr_flipflop (
    input S,
    input R,
    input reset,
    input clk,
    output reg Q
);

always @(posedge clk) 
begin
    if (reset==1)
        Q <= 1'b0;
    else
        case ({S, R})
            2'b00: Q <= Q;
            2'b01: Q <= 0;
            2'b10: Q <= 1;
            2'b11: Q <= 1'bx;
        endcase

end

endmodule