module ripple_carry_adder_tb;

reg [3:0] A, B;
reg Cin;

wire [3:0] Sum;
wire Cout;

ripple_carry_adder RCA (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    // Test 1: 5 + 3 = 8
    A = 4'b0101;
    B = 4'b0011;
    Cin = 1'b0;
    #10;

    // Test 2: 7 + 4 = 11
    A = 4'b0111;
    B = 4'b0100;
    Cin = 1'b0;
    #10;

    // Test 3: 15 + 1 = 16
    A = 4'b1111;
    B = 4'b0001;
    Cin = 1'b0;
    #10;

    // Test 4: 10 + 5 + 1 = 16
    A = 4'b1010;
    B = 4'b0101;
    Cin = 1'b1;
    #10;

    // Test 5: 8 + 8 = 16
    A = 4'b1000;
    B = 4'b1000;
    Cin = 1'b0;
    #10;

    // Test 6: 0 + 0 = 0
    A = 4'b0000;
    B = 4'b0000;
    Cin = 1'b0;
    #10;

    $finish;

end

endmodule