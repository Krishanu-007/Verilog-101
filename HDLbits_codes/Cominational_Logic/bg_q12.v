module top_module (input x, input y, output z);
wire w1,w2,w3,w4;	//wire for intermediate state
    a A1(x,y,w1), A2(x,y,w3);	//instansiation of modules
    b B1(x,y,w2), B2(x,y,w4);
    assign z= (w1|w2)^(w3&w4);	//final result
endmodule
module a (input x, input y, output z);
    assign z= (x^y)&x;
endmodule
module b (input x, input y, output z);
    assign z= ~(x^y);
endmodule
