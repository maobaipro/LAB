`timescale 1ns / 1ps

module tb_Timer;

    reg Reset;
    reg CLK;
    reg E;
    wire [24:0] Q;
    wire Sign;

    Timer uut (
        .Reset(Reset),
        .CLK(CLK),
        .E(E),
        .Q(Q),
        .Sign(Sign)
    );

    initial begin
        CLK = 0;
        forever #25 CLK = ~CLK;
    end

    initial begin
        Reset = 1;
        E = 0;
        #100;

        Reset = 0;
        E = 1;
        
        #600;

        E = 0;
        #200;

        E = 1;
        #1000;

    end

endmodule
