module Mux4_1_Alwys(i0, i1, i2, i3, s0, s1, out);
    input i0, i1, i2, i3, s0, s1;
    output reg out;
    always @(i0, i1, i2, i3, s0, s1) begin
        case ({s1, s0})
            2'b00: out = i0;
            2'b01: out = i1;
            2'b10: out = i2;
            2'b11: out = i3;
            default: out = 1'b0;
        endcase
    end
endmodule