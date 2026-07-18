module tb_pisosr;
    reg clk, rst, load;
    reg [3:0] parallel_in;
    wire serial_out;

    piso_shift_register uut (
        .clk(clk),
        .rst(rst),
        .load(load),
        .parallel_in(parallel_in),
        .serial_out(serial_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; load = 0; parallel_in = 4'b0000; #10;
        rst = 0; #10;
        load = 1; parallel_in = 4'b1101; #10;
        load = 0;
        #40;
        $finish;
    end

    initial begin
        $monitor("Time=%0t | Serial_Out=%b | Shift_Reg=%b", $time, serial_out, uut.shift_reg);
    end

endmodule
