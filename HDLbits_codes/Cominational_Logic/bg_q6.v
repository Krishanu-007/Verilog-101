module top_module( 
    input a, b,
    output out_and,
    output out_or,
    output out_xor,
    output out_nand,
    output out_nor,
    output out_xnor,
    output out_anotb
);
    assign out_and=a&b,out_or=a|b,out_xor=a^b,out_nand=~out_and,out_nor=!out_or,out_xnor=!out_xor,out_anotb=a&~b;	//sorry for the clumsy style, actually was writing this in vibe mode :)
endmodule

