module top_module (
    input a, b, c, d, e,
    output [24:0] out );
    assign out= ~{{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}}^{{5{a,b,c,d,e}}}; //The statement might be confusing but it is rather very simple, let me break it down into subparts:
// {{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}} -> This part means individually each of the input is replicated 5 times first and then combined into a single vector of size 25 bits.
//{{5{a,b,c,d,e}}} -> This part means firstly each of the inputs are concatenated into a single vector which is then replicated 5 times to make the size of 25 bits.
// after creating our required operating vectors of 25 bits each, then the traditional XNOR operation is performed on these two 25 bit vectors
endmodule

