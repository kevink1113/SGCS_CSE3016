`timescale 1ns / 1ps

module full_subtractor_tb;

reg xx, yy, bin;
wire d, bout;

full_subtractor u_full_subtractor (
.x (xx),
.y (yy),
.bin (bin),
.d (d),
.bout (bout)
);

initial xx = 1'b0;
initial yy = 1'b0;
initial bin = 1'b0;

always xx = #50 ~xx;
always yy = #100 ~yy;
always bin = #200 ~bin;

initial begin
    #800
    $finish;
 end

endmodule
