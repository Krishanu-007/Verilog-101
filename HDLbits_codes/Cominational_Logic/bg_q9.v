module top_module ( input [1:0] A, input [1:0] B, output z ); 
    assign z=(A===B)?1'b1:1'b0;	//Classic use of Ternary or Conditional operator
endmodule

