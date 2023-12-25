`timescale 1ns / 1ps

module De_Morgan_one_a_tb;

reg aa, bb;

De_Morgan_one_a u_De_Morgan_one_a (
.a (aa),
.b (bb),
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
