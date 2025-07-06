// synthesis verilog_input_version verilog_2001
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    assign out_assign=a&b;	//This is done using data_flow style
    always @(*)	//This is behavioral type, where it always @(*) means to monitor any change in any of the input signal
        out_alwaysblock= a&b;
endmodule

