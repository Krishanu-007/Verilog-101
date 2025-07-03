module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    assign out_and=&in,out_or=|in,out_xor=^in; //each of the operator applied on the input is a reduction operator i.e. the operation is done among individual bits of the input and the overall result is returned as a single bit 
endmodule

