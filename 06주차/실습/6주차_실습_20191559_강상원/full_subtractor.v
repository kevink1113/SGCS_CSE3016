`timescale 1ns / 1ps

module full_subtractor(
    input x, y, bin,
    output d, bout
);

assign d = (x ^ y) ^ bin;
assign bout = ((~(x ^ y)) & bin) | ((~x) & y);

endmodule
