module top_module( 
    input a,b,c,
    output w,x,y,z );
	assign w=a,x=b,y=b,z=c;	//Multiple assignment statements avoided and turned into a single assignment statement
endmodule

