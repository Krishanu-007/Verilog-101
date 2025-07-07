module top_module (
    input [7:0] in,
    output parity); 
    assign parity=^in;	//Here Xor acts as a Reduction operator
endmodule

