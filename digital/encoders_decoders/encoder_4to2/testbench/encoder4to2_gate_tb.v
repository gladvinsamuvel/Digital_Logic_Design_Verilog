`timescale 1ns / 1ps

module encoder4to2_gate_tb;

// Inputs
reg D0, D1, D2, D3;

// Outputs
wire Y0, Y1;

// Instantiate the Unit Under Test (UUT)
encoder4to2_gate uut (
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .Y0(Y0),
    .Y1(Y1)
);

initial
begin
    $display("Time\tD3 D2 D1 D0 | Y1 Y0");
    $monitor("%0t\t%b  %b  %b  %b | %b  %b",
             $time, D3, D2, D1, D0, Y1, Y0);

    // Test D0
    D3=0; D2=0; D1=0; D0=1;
    #10;

    // Test D1
    D3=0; D2=0; D1=1; D0=0;
    #10;

    // Test D2
    D3=0; D2=1; D1=0; D0=0;
    #10;

    // Test D3
    D3=1; D2=0; D1=0; D0=0;
    #10;

    $finish;
end

endmodule