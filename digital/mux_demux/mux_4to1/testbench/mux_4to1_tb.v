`timescale 1ns / 1ps

module tb_mux_4to1;

    reg [3:0] I;
    reg [1:0] S;
    wire Y;

    mux_4to1 uut (
        .I(I),
        .S(S),
        .Y(Y)
    );

    initial begin

        I = 4'b0001; S = 2'b00;
        #10;

        I = 4'b0010; S = 2'b01;
        #10;

        I = 4'b0100; S = 2'b10;
        #10;

        I = 4'b1000; S = 2'b11;
        #10;

        I = 4'b1010; S = 2'b00;
        #10;

        I = 4'b1010; S = 2'b01;
        #10;

        I = 4'b1010; S = 2'b10;
        #10;

        I = 4'b1010; S = 2'b11;
        #10;

        $finish;

    end

endmodule