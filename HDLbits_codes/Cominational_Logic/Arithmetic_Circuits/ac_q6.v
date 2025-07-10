// There is an interesting observation while writing this code..
// This is the code written for the 100 bit ripple carry adder...
// The observation is, the optimization/improvement in writing the code, the below code that is written, does the job perfectly. However in HDLbits the synthesizer is Quartus which is suitable for Intel FPGAs. If you synthesize(compile) the code there will be no issue. However, Modelsim (the simulator) is targeted to a an FPGA which is capable of handling a max of 20k statements (or rather synthesized lines). This code below is creating a size of 22k+ statements for which the Modelsim fails to execute the simulation.

// The exact warning given is: Design size of 22576 statements exceeds ModelSim-Intel FPGA Starter Edition recommended capacity. # Expect performance to be adversely affected.

module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output reg [99:0] sum );
    
    reg [100:0] carry;
    integer i;

    always @(*) begin
        carry[0] = cin;
        for (i = 0; i < 100; i = i + 1) begin
            {carry[i+1], sum[i]} = a[i] + b[i] + carry[i];
        end
    end

    assign cout = carry[100];
endmodule


// Now for the below code, the entire handling is done by the synthesizer implicitly. The synthesizer decides the actual hardware implementation required within the limits of the targeted FPGAs. That is why even though the above code is logically and syntactically correct it fails to execute on the FPGA.

module top_module( 
    input  [99:0] a, b,
    input         cin,
    output        cout,
    output [99:0] sum );
    assign {cout,sum}=a+b+cin;
endmodule

