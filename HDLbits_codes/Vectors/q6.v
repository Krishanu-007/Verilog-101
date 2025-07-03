module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );

    assign {w,x,y,z}={a,b,c,d,e,f,2'b11}; //Here concatenation operation is performed where firstly all the inputs and outputs are concatenated to represent a single input and output vector respectively. Also in case of the input, as it is lesser than that of the output, 2 extra bits of value 1 are also concatenated.

endmodule

