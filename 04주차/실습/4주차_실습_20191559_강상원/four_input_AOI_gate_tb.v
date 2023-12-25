`timescale 1ns / 1ps

module four_input_AOI_gate_tb;

reg aa, bb, cc, dd;

four_input_AOI_gate u_four_input_AOI_gate (
.a (aa),
.b (bb),
.c (cc),
.d (dd),
.e (e),
.f (f),
.g (g)
);

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;

always aa = #50 ~aa;
always bb = #100 ~bb;
always cc = #200 ~cc;
always dd = #400 ~dd;

initial begin
    #800
    $finish;
 end


endmodule
