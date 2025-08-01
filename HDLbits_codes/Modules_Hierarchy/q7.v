module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c;
    add16 lower16 (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(c)
    );

    add16 upper16 (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(c),
        .sum(sum[31:16]),
        .cout()  // Final carry-out not used
    );
endmodule

module add1 (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

