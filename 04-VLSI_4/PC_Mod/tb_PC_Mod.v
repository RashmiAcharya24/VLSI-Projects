module tb_PC_Mod;
    reg clk, reset, pwen;
    reg [3:0] pc_in;
    wire [3:0] pc_out;
    
    PC_Mod uut (.clk(clk), .reset(reset), .pwen(pwen), .pc_in(pc_in), .pc_out(pc_out));
    
    initial begin
        clk = 0;
        reset = 1;
        pwen = 0;
        pc_in = 4'd7;
        #10 reset = 1;
        #10 reset = 0;
        #10 pwen = 1;
    end

    always #5 clk = ~clk;
    
    initial begin
        $dumpfile("tb_PC_Mod.vcd");
        $dumpvars(0, tb_PC_Mod);
        #100 $finish;
    end
endmodule
