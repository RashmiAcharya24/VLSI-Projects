module program_counter(clk, reset, pc);
    input clk, reset;
    output reg [9:0] pc;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pc <= 10'd0;
        end else begin
            pc <= pc + 10'd1;
        end
    end
endmodule
