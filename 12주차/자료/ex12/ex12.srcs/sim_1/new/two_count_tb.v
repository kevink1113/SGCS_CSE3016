`timescale 1ns / 1ps

module binary_counter_tb;
reg clk;
reg reset, j, k;
wire[1:0] q;
binary_counter func(
    .clk(clk),
    .j(j),
    .k(k),
    .reset(reset),
    .q(q)
);

    initial begin
        clk = 1'b1;
        reset = 1'b0;
        j = 1'b1;
        k = 1'b1;
    end
    always begin
        clk = #1~clk;
        clk = #5~clk;
    end
    initial begin
        #48
        reset = ~reset;
        #10
        $finish;
    end
endmodule
