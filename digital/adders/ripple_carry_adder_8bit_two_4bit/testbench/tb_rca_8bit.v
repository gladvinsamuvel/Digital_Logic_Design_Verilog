module tb_rca_8bit;

reg [7:0] A, B;
reg Cin;

wire [7:0] Sum;
wire Cout;

rca_8bit DUT (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    // Test 1: 5 + 3 = 8
    A = 8'b00000101;
    B = 8'b00000011;
    Cin = 1'b0;
    #10;

    // Test 2: 15 + 10 = 25
    A = 8'b00001111;
    B = 8'b00001010;
    Cin = 1'b0;
    #10;

    // Test 3: 100 + 50 = 150
    A = 8'b01100100;
    B = 8'b00110010;
    Cin = 1'b0;
    #10;

    // Test 4: 255 + 1 = 256
    A = 8'b11111111;
    B = 8'b00000001;
    Cin = 1'b0;
    #10;

    // Test 5: 200 + 55 + 1 = 256
    A = 8'b11001000;
    B = 8'b00110111;
    Cin = 1'b1;
    #10;

    // Test 6: 128 + 127 = 255
    A = 8'b10000000;
    B = 8'b01111111;
    Cin = 1'b0;
    #10;

    // Test 7: 0 + 0 = 0
    A = 8'b00000000;
    B = 8'b00000000;
    Cin = 1'b0;
    #10;

    $finish;

end

endmodule