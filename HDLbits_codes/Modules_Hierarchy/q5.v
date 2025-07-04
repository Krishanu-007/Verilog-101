module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] solution_bank[3:0];	// created an array of size 4 with each position having 8 bits size
    assign solution_bank[0]=d;	//assigning the input 8 bits to the first block
    // 3 instances of my_dff8 module each connecting in cascaded format and storing in the array
    my_dff8 m1(clk,d,solution_bank[1]);
    my_dff8 m2(clk,solution_bank[1],solution_bank[2]);
    my_dff8 m3(clk,solution_bank[2],solution_bank[3]);
    assign q=solution_bank[sel];	//generates a 4:1 Mux based on sel 
endmodule

