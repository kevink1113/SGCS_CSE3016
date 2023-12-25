`timescale 1ns / 1ps

module half_subtractor_tb;

reg xx, yy;
wire d, b;

half_subtractor u_half_subtractor (
.x (xx),
.y (yy),
.d (d),
.b (b)
);

initial xx = 1'b0;
initial yy = 1'b0;

always xx = #50 ~xx;
always yy = #100 ~yy;

initial begin
    #800
    $finish;
 end

endmodule
