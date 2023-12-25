`timescale 1ns / 1ps

module full_adder_tb;

reg aa, bb, cin;
wire s, cout;

full_adder u_full_adder (
.a (aa),
.b (bb),
.cin (cin),
.s (s),
.cout (cout)
);

initial aa = 1'b0;
initial bb = 1'b0;
initial cin = 1'b0;

always aa = #50 ~aa;
always bb = #100 ~bb;
always cin = #200 ~cin;

initial begin
    #800
    $finish;
 end

endmodule
