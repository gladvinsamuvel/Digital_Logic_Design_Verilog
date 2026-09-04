`timescale 1ns / 1ps

module demux1to8_gate_tb;

// Inputs
reg D;
reg S0, S1, S2;

// Outputs
wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

// Instantiate the Unit Under Test (UUT)
demux1to8_gate uut (
    .D(D),
    .S0(S0),
    .S1(S1),
    .S2(S2),
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
    // Display the results
    $display("Time\tD S2 S1 S0 | Y0 Y1 Y2 Y3 Y4 Y5 Y6 Y7");
    $monitor("%0t\t%b  %b  %b  %b | %b  %b  %b  %b  %b  %b  %b  %b",
             $time, D, S2, S1, S0,
             Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);

    // Test all combinations with D = 1
    D = 1;

    S2 = 0; S1 = 0; S0 = 0; #10;
    S2 = 0; S1 = 0; S0 = 1; #10;
    S2 = 0; S1 = 1; S0 = 0; #10;
    S2 = 0; S1 = 1; S0 = 1; #10;
    S2 = 1; S1 = 0; S0 = 0; #10;
    S2 = 1; S1 = 0; S0 = 1; #10;
    S2 = 1; S1 = 1; S0 = 0; #10;
    S2 = 1; S1 = 1; S0 = 1; #10;

    // Test all combinations with D = 0
    D = 0;

    S2 = 0; S1 = 0; S0 = 0; #10;
    S2 = 0; S1 = 0; S0 = 1; #10;
    S2 = 0; S1 = 1; S0 = 0; #10;
    S2 = 0; S1 = 1; S0 = 1; #10;
    S2 = 1; S1 = 0; S0 = 0; #10;
    S2 = 1; S1 = 0; S0 = 1; #10;
    S2 = 1; S1 = 1; S0 = 0; #10;
    S2 = 1; S1 = 1; S0 = 1; #10;

    $finish;
end

endmodule