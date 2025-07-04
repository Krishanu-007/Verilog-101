module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] upp_sol [1:0];wire sel;
    add16 low(a[15:0],b[15:0],1'b0,sum[15:0],sel);
    add16 up1(a[31:16],b[31:16],1'b0,upp_sol[0]);
    add16 up2(a[31:16],b[31:16],1'b1,upp_sol[1]);
    assign sum[31:16]=upp_sol[sel];	// fixing only the upper 2 bytes of sum using 2:1 mux where the inputs are from upp_sol[0] and upp_sol[1]
endmodule

