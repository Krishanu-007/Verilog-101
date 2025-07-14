/* In this I will do two questions together: OR and XOR
As described earlier I will be doing in three different styles */


module or_xor_g(
input a,input b,
output o_or,o_xor);

or o1(o_or,a,b); xor x1(o_xor,a,b);

endmodule


module or_xor_d(
input a,input b,
output o_or,o_xor);

assign o_or=a|b,o_xor=a^b;

endmodule

module or_xor_b(
input a,input b,
output reg o_or,o_xor);

always @(*) begin
	o_or = a | b;
	o_xor = a ^ b;
	end
endmodule
