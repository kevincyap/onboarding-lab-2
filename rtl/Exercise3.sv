module Exercise3 (
    input clk,
    input nReset,
    input [3:0] a,
    input [15:0] b,
    input [15:0] c,
    output [15:0] out
);
wire [7:0] alpha_out, beta_out;
Mystery1 m1_alpha(a[1:0], b[7:0], c[7:0], alpha_out);
Mystery1 m1_beta(a[3:2], b[15:8], c[15:8], beta_out);
Mystery2 m2_gamma(clk, nReset, alpha_out, beta_out, out);


endmodule
