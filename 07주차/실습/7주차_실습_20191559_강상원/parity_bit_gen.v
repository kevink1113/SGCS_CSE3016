`timescale 1ns / 1ps
module parity_bit_gen(
    input a, b, c, d,
    output e
    );
    assign e = a ^ b ^ c ^ d;

endmodule
