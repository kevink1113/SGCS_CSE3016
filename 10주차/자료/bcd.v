`timescale 1ns / 1ps

module adder1bit(A, B, Ci, S, Co);

input A, B, Ci;
output S, Co;
assign S=A^B^Ci;
assign Co=(A&B)|((A^B)&Ci);

endmodule

module adder4bit(A, B, Ci, S, Co);
input [3:0] A, B; input Ci;
output [3:0] S; output Co;

wire [3:0] A, B, S; wire Ci, Co;
wire [2:0] C;

adder1bit add1(A[0], B[0], Ci, S[0], C[0]);
adder1bit add2(A[1], B[1], C[0], S[1], C[1]);
adder1bit add3(A[2], B[2], C[1], S[2], C[2]);
adder1bit add4(A[3], B[3], C[2], S[3], Co);

endmodule

module BCD(A, B, S, C);

input [3:0] A, B;
output [3:0] S; output C;

wire [3:0] A2; wire Cout;
reg [3:0] B2; wire Cout2, Cout3;

adder4bit add1(A, B, 0, A2, Cout);

assign Cout2 = (Cout)|(A2[3]&A2[2])|(A2[3]&A2[1]);

always @(Cout2)
if(Cout2 == 1'b1) begin
   B2 = 4'b0110;
end
else begin
   B2 = 4'b0000;
end

adder4bit add2(A2, B2, 0, S, Cout3);
assign C = Cout2|Cout3;

endmodule

module BCDinterface(A, B, C, S);
input [3:0] A, B; output C;
output [3:0] S;
BCD bcdcode(A, B, S, C);
endmodule