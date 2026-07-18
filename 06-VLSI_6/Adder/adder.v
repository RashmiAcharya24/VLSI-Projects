module signed_4bit_adder (
    input  signed [3:0] A,
    input  signed [3:0] B,
    output signed [4:0] SUM,
    output overflow
);

    assign SUM = A + B;
    assign overflow = (~A[3] & ~B[3] & SUM[4]) | (A[3] & B[3] & ~SUM[4]);

endmodule
