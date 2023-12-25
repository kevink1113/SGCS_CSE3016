`timescale 1ns / 1ps

module One_Bit_Comp_tb;

reg aa, bb;

One_Bit_Comp u_One_Bit_Comp (
.a (aa),
.b (bb),
.c (c),
.d (d),
.e (e),
.f (f)
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
