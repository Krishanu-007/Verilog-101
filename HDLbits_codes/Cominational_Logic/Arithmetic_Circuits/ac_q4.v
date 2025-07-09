module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [4:0] carry;
    assign carry[0]=1'b0;
    genvar i;
    generate
        for(i=0;i<4;i++) begin: adder
            FA add(.x(x[i]),.y(y[i]),.cin(carry[i]),.cout(carry[i+1]),.sum(sum[i]));
        end
    endgenerate
    assign sum[4]=carry[4];
endmodule
module FA(input x,input y,input cin,output cout,output sum);
    assign {cout,sum}=x+y+cin;
endmodule
