/* _______TEST BENCH________
We will be testing all the three modules and check whether there is any difference among them or not*/

`include "B_1_q1.v"	// compiler directive, to say that we are including this file
`timescale 10ns/100ps	// timescale description, 1st one says the time unit, 2nd says the precision

module B_1_q1_tb;
reg a,b;	// inputs in testbench are to be defined as reg type
wire c;		// output is always wire type

and_gate ob1 (a,b,c);	// Here we passed our variables in accordance with their order in the module
and_data ob2 (.c(c),.b(b),.a(a)); // Here we passed them name order: .variable_name(test_variable)
and_behavioral ob3 (a,b,c); // I just showed the different ways of initialization,anyone can be used

initial begin	// procedural block to actually mention our test signals
	$monitor("Time=%0t | a=%b, b=%b, c=%b", $time, a, b,c);	// displays the signal values whenever there is a change
	$dumpfile("B1_q1_res.vcd");	// waveform of simulation file
	$dumpvars(0,B_1_q1_tb);	// 0 means all the variables of the testbench are to be monitored
	
	#5 a=1'b0;b=1'b0;	// #time defines the delay as time*one_unit
	#5 a=1'b0;b=1'b1;
	#5 a=1'b1;b=1'b0;
	#5 a=1'b1;b=1'b1;
	
	#10 $finish; 	//Simulation finish
	end
endmodule
