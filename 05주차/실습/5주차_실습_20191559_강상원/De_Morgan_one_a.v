`timescale 1ns / 1ps

module De_Morgan_one_a(
    input a, b,
    output c
    );
    
    assign c = ~(a | b);
    
endmodule
