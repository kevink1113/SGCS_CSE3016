`timescale 1ns / 1ps

module parity_bit_check_tb;

reg aa, bb, cc, dd, pa;

parity_bit_check u_parity_bit_check (
.a (aa),
.b (bb),
.c (cc),
.d (dd),
.pa (pa),
.e (e)
);

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;
initial pa = 1'b0;

always aa = #25 ~aa;
always bb = #50 ~bb;
always cc = #100 ~cc;
always dd = #200 ~dd;
always pa = #400 ~pa;

initial begin
    #800
    $finish;
 end


endmodule