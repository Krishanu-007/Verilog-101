module top_module( 
    input a, 
    input b, 
    output out );
    assign out=a&b; //bit-wise and operation done, though && is also valid
endmodule

