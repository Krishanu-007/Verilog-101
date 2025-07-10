module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 
    assign s=a+b;	// sum computation is as it should be
    assign overflow= (a[7]===b[7])&&(s[7]!=a[7]);	// overflow occurs when 2 +ve number gives a -ve result. To check this two options are there: first if MSB of both operands are same and the MSB of the result i.e. sum(in this case) is different from that. Secondly, the carry-in into the MSB computation is different from the carry-out from the MSB computation.
endmodule

