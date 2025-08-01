module top_module ( 
    input p1a, p1b, p1c, p1d,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    nand n1(p1y,p1a,p1b,p1c,p1d);	//This is structural or gate-level representation
    nand n2(p2y,p2a,p2b,p2c,p2d);	//It represents IC 7420

endmodule

