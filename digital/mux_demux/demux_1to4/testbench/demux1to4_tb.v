`timescale 1ns / 1ps
module demux1to4_tb;
reg D;
reg S0, S1;
wire Y0, Y1, Y2, Y3;
demux1to4 uut (
    .D(D),
    .S0(S0),
    .S1(S1),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);
initial
begin
    $display("Time\tD S1 S0 | Y0 Y1 Y2 Y3");
    $monitor("%0t\t%b  %b  %b | %b  %b  %b  %b",
             $time, D, S1, S0, Y0, Y1, Y2, Y3);
    D = 1; S1 = 0; S0 = 0;
    #10;

    D = 1; S1 = 0; S0 = 1;
    #10;

    D = 1; S1 = 1; S0 = 0;
    #10;
   
    D = 1; S1 = 1; S0 = 1;
    #10;

    D = 0; S1 = 0; S0 = 0;
    #10;

    D = 0; S1 = 0; S0 = 1;
    #10;

    D = 0; S1 = 1; S0 = 0;
    #10;

    D = 0; S1 = 1; S0 = 1;
    #10;

    $finish;
end

endmodule