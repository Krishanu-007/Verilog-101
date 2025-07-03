module top_module( input in, output out );
assign out=~in; //As its a single bit operation so both ! and ~ will result in the same
endmodule

