`timescale 1ns / 1ps

module logic_gates_tb;

// Inputs
reg A, B;

// Outputs
wire AND_OUT;
wire OR_OUT;
wire NOT_A;
wire NOT_B;
wire NAND_OUT;
wire NOR_OUT;
wire XOR_OUT;
wire XNOR_OUT;

// Instantiate the Unit Under Test (UUT)
logic_gates uut (
    .A(A),
    .B(B),
    .AND_OUT(AND_OUT),
    .OR_OUT(OR_OUT),
    .NOT_A(NOT_A),
    .NOT_B(NOT_B),
    .NAND_OUT(NAND_OUT),
    .NOR_OUT(NOR_OUT),
    .XOR_OUT(XOR_OUT),
    .XNOR_OUT(XNOR_OUT)
);

initial
begin
    $display("Time\tA B | AND OR NOT_A NOT_B NAND NOR XOR XNOR");
    $monitor("%0t\t%b %b |  %b   %b    %b      %b     %b    %b   %b    %b",
             $time,
             A, B,
             AND_OUT,
             OR_OUT,
             NOT_A,
             NOT_B,
             NAND_OUT,
             NOR_OUT,
             XOR_OUT,
             XNOR_OUT);

    // Test all input combinations
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule