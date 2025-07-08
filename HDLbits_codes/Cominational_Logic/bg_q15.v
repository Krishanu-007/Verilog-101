module top_module( 
    input [2:0] in,
    output [1:0] out );
    integer i,count;	// Integer type data one for the loop variable and another for count
    always @(*) begin	// @(*) means any change in the input signal will trigger this
        count=0;	// It is a blocking statement, as our circuit is actually a combinational circuit.
        for(i=0;i<3;i++) begin	//classic for-loop 
            if(in[i]==1'b1)
                count=count+1;
        end
    end
   assign out=count;	// assigning the counted value(integer format) into the output vector
endmodule

