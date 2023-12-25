`timescale 1ns / 1ps
module parity_bit_check(
    input a, b, c, d, pa,
    output e
    );
    assign e = a ^ b ^ c ^ d ^ pa;

endmodule
