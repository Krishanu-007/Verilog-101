module top_module ( input clk, input d, output q );
    wire q1,q2;	//net type variables for intermediate stage response
    // 3 instances of the module my_dff in cascading connection
    my_dff m1(clk,d,q1);
    my_dff m2(clk,q1,q2);
    my_dff m3(clk,q2,q);
endmodule

