`timescale 1ns / 1ps

module half_subtractor(
    input x, y,
    output d, b
);

assign d = x ^ y;
assign b = (~x) & y;

endmodule
