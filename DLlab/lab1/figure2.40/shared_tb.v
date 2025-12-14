`timescale 1ns/1ps

module tb_adder;

    reg  a_t;
    reg  b_t;
    wire s1_t;
    wire s0_t;

    adder UUT (
        .a(a_t),
        .b(b_t),
        .s1(s1_t),
        .s0(s0_t)
    );

    initial begin

        a_t = 0; b_t = 0;
        #10;

        a_t = 0; b_t = 1;
        #10;

        a_t = 1; b_t = 0;
        #10;

        a_t = 1; b_t = 1;
        #10;

        $finish;
    end

endmodule