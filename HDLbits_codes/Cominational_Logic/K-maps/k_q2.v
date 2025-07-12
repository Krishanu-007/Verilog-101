module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    assign out=(~d&~a)|(~c&~b)|(a&d&c)|(b&d&c);
endmodule

