module d_flipflop (
    input D,
    input reset,
    input clk,
    output reg Q
);

always @(posedge clk)
begin
    if (reset == 1)
        Q <= 1'b0;
    else
        Q <= D;
end

endmodule