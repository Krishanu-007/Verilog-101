/* _______TEST BENCH FOR Q2 AND Q3_______
No comments are written as most of the test bench is same*/

`include "B_1_q2q3.v"
`timescale 1ns/10ps

module B_1_q2q3_tb;
reg a,b;
wire or_1,or_2,or_3;
wire xor_1,xor_2,xor_3;

or_xor_g ob1 (a,b,or_1,xor_1);
or_xor_d ob2 (a,b,or_2,xor_2);
or_xor_b ob3 (a,b,or_3,xor_3);

initial begin
	$monitor("Time=%t  a=%b  b=%b  or_1=%b  or_2=%b  or_3=%b  xor_1=%b  xor_2=%b  xor_3=%b",$time,a,b,or_1,or_2,or_3,xor_1,xor_2,xor_3);
	$dumpfile("B_1_q2q3_out.vcd");
	$dumpvars(0,B_1_q2q3_tb);
	
	#5 a=1'b0; b=1'b0;
	#5 a=1'b0; b=1'b1;
	#5 a=1'b1; b=1'b0;
	#5 a=1'b1; b=1'b1;
	
	#10 $finish;
	end
endmodule
