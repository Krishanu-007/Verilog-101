//3-bit BCD adder//
module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    wire[3:0]carry;	// to store the carries of each block including the initial cin 
    assign carry[0]=cin;	// assigning the cin to the first position for favoring the generate process
    
    			// Basically Generate statement helps in automating repeated instances reducing the code length
    genvar i;	// genvar variables are used in generate blocks
    generate
        for(i=0;i<3;i++) begin: adder	// it is to be observed that in generate blocks the for loop needs to be labeled
            fa add(.a(a[i]),.b(b[i]),.cin(carry[i]),.cout(carry[i+1]),.sum(sum[i]));	// here we just write a single instance of the module 'fa' named add. However the for loop in the generate block will generate 3 instances, where each instance can be accessed by adder[0].add for 1st instance, adder[1].add for 2nd adn adder[3].add for 3rd. 
            end
    endgenerate	//generate block end statement
    assign cout=carry[3:1];	// this is done in accordance to the question, basically assigning the output of carry at each stage from our temporary variable to the output variable 
endmodule
module fa(input a,input b,input cin,output cout,output sum);
    assign {cout,sum}=a+b+cin;
endmodule
