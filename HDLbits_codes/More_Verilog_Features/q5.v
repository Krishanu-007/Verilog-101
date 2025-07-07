module top_module( 
    input [254:0] in,
    output [7:0] out );
    integer i;
    reg [7:0]count;
    always @(*) begin
        count=0;
        for(i=0;i<=254;i++) begin
            if(in[i]==1)
                count=count+1;
        end
        out=count;
    end
endmodule

