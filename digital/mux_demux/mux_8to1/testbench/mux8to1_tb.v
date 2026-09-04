`timescale 1ns / 1ps

module mux8to1_tb;

// Inputs
reg I0, I1, I2, I3, I4, I5, I6, I7;
reg S0, S1, S2;

// Output
wire Y;

// Instantiate the Unit Under Test (UUT)
mux8to1 uut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .S0(S0),
    .S1(S1),
    .S2(S2),
    .Y(Y)
);

initial
begin
    // Assign different values to inputs
    I0=0; I1=1; I2=0; I3=1;
    I4=0; I5=1; I6=0; I7=1;

    $display("Time\tS2 S1 S0 | Y");
    $monitor("%0t\t%b  %b  %b | %b",
             $time, S2, S1, S0, Y);

    S2=0; S1=0; S0=0; #10;
    S2=0; S1=0; S0=1; #10;
    S2=0; S1=1; S0=0; #10;
    S2=0; S1=1; S0=1; #10;
    S2=1; S1=0; S0=0; #10;
    S2=1; S1=0; S0=1; #10;
    S2=1; S1=1; S0=0; #10;
    S2=1; S1=1; S0=1; #10;

    $finish;
end

endmodule