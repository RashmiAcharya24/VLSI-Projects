module PC_Mod(clk, reset, pwen, pc_in, pc_out);
    input clk, reset, pwen;
    input [3:0] pc_in;
    output [3:0] pc_out;
    reg [3:0] pc_out;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pc_out <= 4'b0000;
        end else if (pwen) begin
            pc_out <= pc_in;
        end
    end
endmodule
