`timescale 1ns / 1ps

module bcd_code_converter_tb;

reg w, x, y, z;
wire a, b, c, d;

bcd_code_converter u_bcd_code_converter (
    .w(w), .x(x), .y(y), .z(z),
    .a(a), .b(b), .c(c), .d(d)
);

initial w = 1'b0;
initial x = 1'b0;
initial y = 1'b0;
initial z = 1'b0;

always w = #50 ~w;
always x = #100 ~x;
always y = #200 ~y;
always z = #400 ~z;

initial begin
    #800
    $finish;
 end

endmodule
