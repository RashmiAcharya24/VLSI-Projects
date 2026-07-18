module adder_tb;

    reg  signed [3:0] A, B;
    wire signed [4:0] SUM;
    wire overflow;

    signed_4bit_adder uut (
        .A(A),
        .B(B),
        .SUM(SUM),
        .overflow(overflow)
    );

    initial begin
        $monitor("A=%d, B=%d, SUM=%d, Overflow=%b", A, B, SUM, overflow);

        A =  4; B =  3; #10;
        A =  7; B =  2; #10;
        A = -5; B = -4; #10;
        A = -3; B =  2; #10;
        A = -8; B = -1; #10;
        A =  0; B =  0; #10;

        $finish;
    end
endmodule
