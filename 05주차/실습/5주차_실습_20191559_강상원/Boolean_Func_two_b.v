`timescale 1ns / 1ps

module Boolean_Func_two_b(
    input a, b, c,
    output d
    );
    
    assign d = ~((a | b) & c);
    
endmodule
