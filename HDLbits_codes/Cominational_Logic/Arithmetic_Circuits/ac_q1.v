module top_module( 
    input a, b,
    output cout, sum );
    assign {cout,sum}=a+b;	//Here the Data-flow operation is done, just simply mentioned about the addition of the two inputs and the result is stored in the form of carry sum, which is done by using concatenation operation with assign statement
endmodule

