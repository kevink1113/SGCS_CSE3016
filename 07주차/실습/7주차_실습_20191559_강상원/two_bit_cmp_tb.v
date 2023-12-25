`timescale 1ns / 1ps

module two_bit_cmp_tb;

reg a1, a2, b1, b2;

two_bit_cmp u_two_bit_cmp (
.a1 (a1),
.a2 (a2),
.b1 (b1),
.b2 (b2),
.f1 (f1),
.f2 (f2),
.f3 (f3)
);

initial a1 = 1'b0;
initial a2 = 1'b0;
initial b1 = 1'b0;
initial b2 = 1'b0;

always a1 = #50 ~a1;
always a2 = #100 ~a2;
always b1 = #200 ~b1;
always b2 = #400 ~b2;

initial begin
    #800
    $finish;
 end


endmodule