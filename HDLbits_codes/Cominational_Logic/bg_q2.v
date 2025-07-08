module top_module (
    output out);
    assign out=0;	//Grounding, here this is considered as 32 bit however the compiler reduces it to 1 bit as expected
endmodule

