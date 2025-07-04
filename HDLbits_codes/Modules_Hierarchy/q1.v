module top_module ( input a, input b, output out );
    mod_a m1(.in2(b),.out(out),.in1(a));	// connection by name
endmodule

