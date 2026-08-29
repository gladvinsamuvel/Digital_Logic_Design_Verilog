`timescale 1ns / 1ps

module decoder3to8_gate_tb;

// Inputs
reg A, B, C;

// Outputs
wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

// Instantiate the Unit Under Test (UUT)
decoder3to8_gate uut (
    .A(A),
    .B(B),
    .C(C),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
);

initial
begin
    $display("Time\tA B C | Y0 Y1 Y2 Y3 Y4 Y5 Y6 Y7");
    $monitor("%0t\t%b %b %b | %b %b %b %b %b %b %b %b",
             $time, A, B, C,
             Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);

    // Apply all input combinations
    A=0; B=0; C=0; #10;
    A=0; B=0; C=1; #10;
    A=0; B=1; C=0; #10;
    A=0; B=1; C=1; #10;
    A=1; B=0; C=0; #10;
    A=1; B=0; C=1; #10;
    A=1; B=1; C=0; #10;
    A=1; B=1; C=1; #10;

    $finish;
end

endmodule