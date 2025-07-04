module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    assign out_not[5:3]=~b,out_not[2:0]=~a;
    assign out_or_bitwise=a|b,out_or_logical=a||b; //Here the difference between logical and bitwise operator can be realized 
endmodule

