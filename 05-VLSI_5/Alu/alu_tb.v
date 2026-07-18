`timescale 1ns/1ps

module alu_tb;

    // Inputs
    reg [3:0] i_E;
    reg [3:0] i_mode;
    reg i_CFLAG;
    reg [3:0] i_op1;
    reg [3:0] i_op2;

    // Outputs
    wire [7:0] o_result;
    wire [3:0] o_Flags;

    // Instantiate the ALU
    alu uut (
        .i_E(i_E),
        .i_mode(i_mode),
        .i_CFLAG(i_CFLAG),
        .i_op1(i_op1),
        .i_op2(i_op2),
        .o_result(o_result),
        .o_Flags(o_Flags)
    );

    initial begin
        // Monitor the outputs
        $monitor("Time=%0t | mode=%b | op1=%b | op2=%b | result=%b | flags=%b", 
                  $time, i_mode, i_op1, i_op2, o_result, o_Flags);

        // Test case 1: ADD (4'b0000)
        i_E = 4'b0000;
        i_mode = 4'b0000;
        i_CFLAG = 1'b0;
        i_op1 = 4'b0011;
        i_op2 = 4'b0101;
        #10;

        // Test case 2: SUB (4'b0001)
        i_mode = 4'b0001;
        i_op1 = 4'b1000;
        i_op2 = 4'b0011;
        i_CFLAG = 1'b0;
        #10;

        // Test case 3: AND (4'b0100)
        i_mode = 4'b0100;
        i_op1 = 4'b1100;
        i_op2 = 4'b1010;
        #10;

        // Test case 4: OR (4'b0101)
        i_mode = 4'b0101;
        i_op1 = 4'b1001;
        i_op2 = 4'b0110;
        #10;

        // Test case 5: XOR (4'b0110)
        i_mode = 4'b0110;
        i_op1 = 4'b1111;
        i_op2 = 4'b0000;
        #10;

        // Test case 6: Left Shift (4'b1100)
        i_mode = 4'b1100;
        i_op1 = 4'b0010;
        i_op2 = 4'b0000; // unused
        #10;

        // Test case 7: Clear (4'b1111)
        i_mode = 4'b1111;
        i_op1 = 4'b0000;
        i_op2 = 4'b0000;
        #10;

        $finish;
    end

endmodule
