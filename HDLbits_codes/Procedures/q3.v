// synthesis verilog_input_version verilog_2001
module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 
    
    assign out_assign= ((sel_b1==1)&&(sel_b2==1))? b:a;	// Classic ternary operator use, similar to high level lang C
    
    always @(*)
        if(sel_b1==1 && sel_b2==1)	// if-else statement that creates a 2X1 MUX 
            out_always=b;
    	else
            out_always=a;
endmodule

