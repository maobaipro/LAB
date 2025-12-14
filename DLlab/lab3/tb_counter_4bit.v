`timescale 1ns / 1ns

module tb_counter_4bit;

    reg clk;
    reg rst_n;
    wire [3:0] Q;

    counter_4bit uut (
        .clk(clk),
        .rst_n(rst_n),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst_n = 0;
        #22;
 
        rst_n = 1;
        #5; 

        #150; 
        
        #10;
        
        #50; 
        rst_n = 0;
        #12; 

        rst_n = 1;
        #40;
        
    end

endmodule
