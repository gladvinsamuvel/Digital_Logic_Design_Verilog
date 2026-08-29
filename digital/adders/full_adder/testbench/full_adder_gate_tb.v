`timescale 1ns / 1ps

module full_adder_gate_tb;

reg A, B, Cin;
wire Sum, Cout;

full_adder_gate uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial
begin
    $display("Time\tA B Cin | Sum Cout");
    $monitor("%0t\t%b %b  %b  |  %b    %b",
             $time, A, B, Cin, Sum, Cout);

    A=0; B=0; Cin=0; #10;
    A=0; B=0; Cin=1; #10;
    A=0; B=1; Cin=0; #10;
    A=0; B=1; Cin=1; #10;
    A=1; B=0; Cin=0; #10;
    A=1; B=0; Cin=1; #10;
    A=1; B=1; Cin=0; #10;
    A=1; B=1; Cin=1; #10;

    $finish;
end

endmodule