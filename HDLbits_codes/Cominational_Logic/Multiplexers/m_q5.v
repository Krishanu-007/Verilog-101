module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
    assign out=in[sel*4+:4];	//Here also same thing is done, however there is also implication of bit slicing which tells that each assignment will be of 4 bits long in width
endmodule

