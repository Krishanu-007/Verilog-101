module top_module( 
    input [7:0] in,
    output [7:0] out
);
    assign out={in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]}; // compared to question 3 here the reversal is done bitwise hence the concatenation operator is used, instead of manual assignment
endmodule

