module top_module( 
    input [31:0] in,
    output [31:0] out );
    assign out[31:24]=in[7:0],out[23:16]=in[15:8],out[15:8]=in[23:16],out[7:0]=in[31:24]; //concatenation operation will not work here as the output itself is a single vector also the reversal to be done is byte-wise not bitwise, that is why assignment has been done instead of concatenation.
endmodule

