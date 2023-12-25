`timescale 1ns / 1ps

module half_adder_tb;

reg aa, bb;
wire s, c;

half_adder u_half_adder (
.a (aa),
.b (bb),
.s (s),
.c (c)
);

initial aa = 1'b0;
initial bb = 1'b0;

always aa = #50 ~aa;
always bb = #100 ~bb;

initial begin
    #800
    $finish;
 end

endmodule
