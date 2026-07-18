module alu(
    input [3:0] i_E,
    input [3:0] i_mode,
    input i_CFLAG,
    input [3:0] i_op1,
    input [3:0] i_op2,
    output [7:0] o_result,
    output [3:0] o_Flags
);

reg [7:0] result;
reg [3:0] flags;

always @(*) begin
    case (i_mode)
        4'b0000: {flags[3], result} = i_op1 + i_op2 + i_CFLAG;
        4'b0001: {flags[3], result} = i_op1 - i_op2 - i_CFLAG;
        4'b0010: result = i_op1;
        4'b0011: result = i_op2;
        4'b0100: result = i_op1 & i_op2;
        4'b0101: result = i_op1 | i_op2;
        4'b0110: result = i_op1 ^ i_op2;
        4'b0111: result = ~i_op1;
        4'b1000: result = ~i_op2;
        4'b1001: result = ~(i_op1 & i_op2);
        4'b1010: result = ~(i_op1 | i_op2);
        4'b1011: result = ~(i_op1 ^ i_op2);
        4'b1100: result = i_op1 << 1;
        4'b1101: result = i_op1 >> 1;
        4'b1110: result = {i_op1[3:0], i_op2[3:0]};
        4'b1111: result = 8'b0;
        default: result = 8'b0;
    endcase

    flags[0] = (result == 8'b0) ? 1'b1 : 1'b0;                 
    flags[1] = result[7]; 
    flags[2] = ((i_op1[3] == i_op2[3]) && (i_op1[3] != result[7]) && (i_mode == 4'b0000 || i_mode == 4'b0001)) ? 1'b1 : 1'b0; 
    flags[3] = (i_mode == 4'b0000) ? (i_op1 + i_op2 + i_CFLAG > 8'hF) : 
                (i_mode == 4'b0001) ? (i_op1 < i_op2 + i_CFLAG) : 1'b0;
end

assign o_result = result;
assign o_Flags = flags;

endmodule
