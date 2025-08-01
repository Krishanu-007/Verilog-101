module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c,cc;	// net type variables for intermediate stages
    add16 a1(a[15:0],b[15:0],1'b0,sum[15:0],c);	
    add16 a2(a[31:16],b[31:16],c,sum[31:16]);
endmodule

