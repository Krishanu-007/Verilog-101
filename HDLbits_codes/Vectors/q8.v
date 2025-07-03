module top_module (
    input [7:0] in,
    output [31:0] out );
    assign out={{24{in[7]}},in}; // Here Replication operator along with concatenation operator is used. the first 24 bits from the MSB are filled with the sign bit of input i.e. in[7] hence written as {24{in[7}}, followed by the normal syntax of concatenation operator.

endmodule

