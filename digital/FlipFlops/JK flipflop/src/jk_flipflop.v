module jk_flipflop (
    input J,
    input K,
    input reset,
    input clk,
    output reg Q
);

always @(posedge clk)
begin
    if (reset == 1)
        Q <= 1'b0;
    else
        case ({J, K})
            2'b00: Q <= Q;       
            2'b01: Q <= 1'b0;    
            2'b10: Q <= 1'b1;     
            2'b11: Q <= ~Q;      
        endcase
end

endmodule