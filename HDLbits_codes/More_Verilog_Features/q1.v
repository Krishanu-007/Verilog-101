module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0] it;
    assign it = (a<b)?((a<c)?a:c):((b<c)?b:c);	//ternary operator just like C
    assign min=(it<d)?it:d;
endmodule

