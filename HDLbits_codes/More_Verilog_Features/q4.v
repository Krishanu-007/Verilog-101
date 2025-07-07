module top_module( 
    input [99:0] in,
    output [99:0] out
);
	integer i=0;
    always @(*) begin
        for(i=0;i<=99;i=i+1) begin
            out[i]=in[99-i]; // storing the bit in reversed order
        end
    end
endmodule

