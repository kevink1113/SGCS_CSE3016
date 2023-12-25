`timescale 1ns / 1ps

module De_Morgan_two_a(
    input a, b,
    output c
    );
    
    assign c = ~(a & b);
    
endmodule
