module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire [4:0] carry;
    assign carry[0]=cin;
    genvar i;
    generate 
        for(i=0;i<4;i++) begin: bcd_adder
            bcd_fadd add(.a(a[i*4+:4]),.b(b[i*4+:4]),.cin(carry[i]),.cout(carry[i+1]),.sum(sum[i*4+:4]));	// This is similar to the earlier assignment for ripple adder, just in this case bit slicing is also included.
        end
    endgenerate
    assign cout=carry[4];
endmodule

