`timescale 1ns / 1ps

module binary_counter(
    inout clk,reset, j, k,
    output wire [1:0] q
    );
    
    wire[1:0] qc;
    wire [1:0] tmpq;
    jk_ff b1(j, k, clk, tmpq[0], qc[0]);
    jk_ff b2(tmpq[0], tmpq[0], clk, tmpq[1], qc[1]);
    
    and(q[0], ~reset, tmpq[0]);
    and(q[1], ~reset, tmpq[1]);
endmodule

module jk_ff(
    input j, k, clk,
    output reg q, qc
);
    initial begin
        q = 0;
        qc = 1;
    end
    always@(negedge clk) begin
        if(j==0 && k==0) begin
            q <= q;
            qc <= qc;
        if(j==0 && k==1) begin
            q = 0;
            qc = 1;
        end
        end
        if(j==1 && k==0) begin
            q = 1;
            qc = 0;
        end
        if(j==1 && k==1) begin
            q <= qc;
            qc = q;
        end
    end
endmodule