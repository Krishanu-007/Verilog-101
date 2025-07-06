// Already given code://
// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;	// no else part is mentioned as a result, an unintentional latch gets created
    end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;	// same explanation as above
    end

endmodule


// No latch code that is done to solve the unintentional latch creation //

// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        else
            shut_off_computer = 0;
    end

    always @(*) begin
        if (arrived)
           keep_driving = 0;
        else if(gas_tank_empty)
            keep_driving = 0;
        else
            keep_driving = 1;
    end

endmodule

