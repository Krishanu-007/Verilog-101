module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output out );
    assign out =in[sel];	//Here the sel variable automatically creates a MUX, this is done implicitly by the synthesizer  
endmodule

