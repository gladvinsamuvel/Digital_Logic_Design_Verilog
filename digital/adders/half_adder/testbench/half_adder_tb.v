`timescale 1ns / 1ps

module half_adder_tb;

// Inputs
reg A;
reg B;

// Outputs
wire Sum;
wire Carry;

// Instantiate the Unit Under Test (UUT)
half_adder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial
begin
    // Display output
    $display("Time\tA B | Sum Carry");
    $monitor("%0t\t%b %b |  %b    %b",
             $time, A, B, Sum, Carry);

    // Apply test vectors
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    // End simulation
    $finish;
end

endmodule