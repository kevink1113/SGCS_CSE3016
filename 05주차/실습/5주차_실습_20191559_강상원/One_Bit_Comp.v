`timescale 1ns / 1ps

module One_Bit_Comp(
    input a, b,
    output c, d, e, f
    );
    
    assign c = a ^ (~b);
    assign d = a ^ b;
    assign e = a & (~b);
    assign f = (~a) & b;
    
endmodule
