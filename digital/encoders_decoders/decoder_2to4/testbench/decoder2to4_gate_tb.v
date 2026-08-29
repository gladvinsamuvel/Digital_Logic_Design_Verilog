`timescale 1ns / 1ps

module decoder2to4_gate_tb;

reg A, B;
wire Y0, Y1, Y2, Y3;

decoder2to4_gate uut(
    .A(A),
    .B(B),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial
begin
    $display("Time\tA B | Y0 Y1 Y2 Y3");
    $monitor("%0t\t%b %b | %b %b %b %b",
              $time,A,B,Y0,Y1,Y2,Y3);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end

endmodule