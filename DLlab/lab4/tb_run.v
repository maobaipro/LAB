`timescale 1ns/1ps

module test_run;
    reg clk_test;
    reg rst_test;
    wire [7:0] out_test;

    run UUT_run (
        .clk(clk_test),
        .rst(rst_test),
        .out(out_test)
    );

    initial begin
        clk_test = 0;
        forever #10 clk_test = ~clk_test;
    end

    initial begin
        rst_test = 1;
        #20;
        
        rst_test = 0;
        #40;
        rst_test = 1;
        
        #2000;

        rst_test = 0;
        #40;
        rst_test = 1;
        #1000;

        $stop;
    end
endmodule
