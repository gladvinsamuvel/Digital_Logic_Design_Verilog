`timescale 1ns / 1ps

module encoder8to3_gate_tb;

// Inputs
reg D0, D1, D2, D3, D4, D5, D6, D7;

// Outputs
wire Y0, Y1, Y2;

// Instantiate the Unit Under Test (UUT)
encoder8to3_gate uut (
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .D4(D4),
    .D5(D5),
    .D6(D6),
    .D7(D7),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2)
);

initial
begin
    $display("Time\tD7 D6 D5 D4 D3 D2 D1 D0 | Y2 Y1 Y0");
    $monitor("%0t\t%b  %b  %b  %b  %b  %b  %b  %b | %b  %b  %b",
             $time,D7,D6,D5,D4,D3,D2,D1,D0,Y2,Y1,Y0);

    // Test D0
    D7=0; D6=0; D5=0; D4=0; D3=0; D2=0; D1=0; D0=1;
    #10;

    // Test D1
    D7=0; D6=0; D5=0; D4=0; D3=0; D2=0; D1=1; D0=0;
    #10;

    // Test D2
    D7=0; D6=0; D5=0; D4=0; D3=0; D2=1; D1=0; D0=0;
    #10;

    // Test D3
    D7=0; D6=0; D5=0; D4=0; D3=1; D2=0; D1=0; D0=0;
    #10;

    // Test D4
    D7=0; D6=0; D5=0; D4=1; D3=0; D2=0; D1=0; D0=0;
    #10;

    // Test D5
    D7=0; D6=0; D5=1; D4=0; D3=0; D2=0; D1=0; D0=0;
    #10;

    // Test D6
    D7=0; D6=1; D5=0; D4=0; D3=0; D2=0; D1=0; D0=0;
    #10;

    // Test D7
    D7=1; D6=0; D5=0; D4=0; D3=0; D2=0; D1=0; D0=0;
    #10;

    $finish;
end

endmodule