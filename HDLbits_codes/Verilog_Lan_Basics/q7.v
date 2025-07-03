`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire w1,w2;	//Wire are net type data-types and are used for continuous assignment
    assign w1=a&b,w2=c&d;	//Here w1 and w2 are used for computing the intermediate values
    assign out=w1|w2,out_n=~out;	//out and out_n are obtained by computing w1 and w2
endmodule

