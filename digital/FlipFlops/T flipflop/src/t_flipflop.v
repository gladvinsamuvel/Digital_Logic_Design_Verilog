module t_flipflop (
    input T,
    input reset,
    input clk,
    output reg Q
);

always @(posedge clk)
begin
    if (reset == 1)
        Q <= 1'b0;
    else
        case (T)
            1'b0: Q <= Q;        
            1'b1: Q <= ~Q;       
        endcase
end

endmodule