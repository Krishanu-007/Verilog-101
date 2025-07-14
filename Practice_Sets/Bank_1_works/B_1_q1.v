//.........A Verilog Module for a 2-input AND Gate.......//
//.........Description is done using all the three types of abstraction flow.......//

/* ::::Gate-Level Design::::

In gate level design we actually use the basic logical gates that are
present in verilog, the usage is similar to the process of instanciation
that is <gate> <name>(output,input,input...)

Here it is possible by the synthesizer to implement the exact gate that is
to be required by the synthesizing the code*/

module and_gate(
input a,input b,
output c);

and a1 (c,a,b);	// The synthesizer will create a 2 input AND gate automatically
endmodule


/* :::: Data-FLow Design ::::

In data-flow design we actually define how our input data and output data is 
related to each other. This is done by using boolean expressions, where the
synthesizer actually selects the most optimized hardware that is possible for
representing the boolean relation */

module and_data(
input a,input b,
output c);

assign c= a&b;	// Here assign statement denotes a continuous assignment, any change
		// in a and b will immediately reflected upon c
endmodule



/* :::: Behavioral Design ::::

In behavioral design, we actually describe the behavior of the circuit, it may sound
a bit confusing, however for larger combinational circuits, this can be very useful
and moreover readable	*/


module and_behavioral(
input a,input b,
output reg c);	// Here we have defined c as a register type, as that is the convention
		// that is used in always blocks
		
always @(*) begin	// This means execute whenever there is a change in any of the i/p variable
 c = a & b;	// This might seem to be similar to an assign statement however, that arises for this case only, in coming examples we will see there are differences.
 end
 endmodule
