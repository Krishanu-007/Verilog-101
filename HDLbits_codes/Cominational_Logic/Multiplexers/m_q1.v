module top_module( 
    input a, b, sel,
    output out ); 
    assign out=(sel==1'b0)?a:b;	//Classic ternary operator that creates a 2:1 MUX by default
endmodule

