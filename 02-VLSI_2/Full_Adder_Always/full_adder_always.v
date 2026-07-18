module full_adder(a, b, cin, sum, cout);
    input a, b, cin;
    output reg sum, cout;
    always @(a, b, cin) begin
        sum = a ^ b ^ cin;
        cout = (a & b) | (a & cin) | (b & cin);
    end
endmodule
