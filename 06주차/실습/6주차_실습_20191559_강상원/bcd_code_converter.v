`timescale 1ns / 1ps

module bcd_code_converter(
    input w, x, y, z,
    output a, b, c, d
);

assign a = ~((~w) & (~(x & y)) & (~(x & z)));
assign b = ~((~w) & (~(x & (~y) & (~z))) & (~(x & y)));
assign c = ~((~w) & (~((~x) & y)) & (~(x & (~y) & z)));
assign d = z;

endmodule
