module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire c;	// net type variable for intermediate stage response
    wire [31:0] b_mod=b^{32{sub}}; //performing XOR operation with input b and 32 replicas of sub
    add16 a1(a[15:0],b_mod[15:0],sub,sum[15:0],c);
    add16 a2(a[31:16],b_mod[31:16],c,sum[31:16]);
endmodule
