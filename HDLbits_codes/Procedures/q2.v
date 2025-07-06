// synthesis verilog_input_version verilog_2001
module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
    
    assign out_assign=a^b;
    always @(*)
        out_always_comb=a^b;	// Here blocking statement is used '='
    always @(posedge clk)	// Here non-blocking statement is used '<=' and also 'posedge clk' means the data gets modified only at the positive edge of the clock 
        out_always_ff<=a^b;
endmodule

