`timescale 1ns/1ps 

module tb_shared;
    reg a_test;
    reg b_test;
    reg c_test;
    reg d_test;
    reg m_test;
    wire s1_test;
    wire s0_test;

    initial begin
        m_test = 0;
        forever #40 m_test = ~m_test;
    end

    initial begin
        a_test = 0;
        b_test = 0;
        c_test = 0;
        d_test = 0;
        #80;  

        a_test = 0;
        b_test = 0;
        c_test = 0;
        d_test = 1;
        #80;

        a_test = 0;
        b_test = 0;
        c_test = 1;
        d_test = 0;
        #80;

        a_test = 0;
        b_test = 0;
        c_test = 1;
        d_test = 1;
        #80;
  
        a_test = 0;
        b_test = 1;
        c_test = 0;
        d_test = 0;
        #80;

        a_test = 0;
        b_test = 1;
        c_test = 0;
        d_test = 1;
        #80;

        a_test = 0;
        b_test = 1;
        c_test = 1;
        d_test = 0;
        #80;

        a_test = 0;
        b_test = 1;
        c_test = 1;
        d_test = 1;
        #80;

        a_test = 1;
        b_test = 0;
        c_test = 0;
        d_test = 0;
        #80;

        a_test = 1;
        b_test = 0;
        c_test = 0;
        d_test = 1;
        #80;

        a_test = 1;
        b_test = 0;
        c_test = 1;
        d_test = 0;
        #80;

        a_test = 1;
        b_test = 0;
        c_test = 1;
        d_test = 1;
        #80;

        a_test = 1;
        b_test = 1;
        c_test = 0;
        d_test = 0;
        #80;

        a_test = 1;
        b_test = 1;
        c_test = 0;
        d_test = 1;
        #80;

        a_test = 1;
        b_test = 1;
        c_test = 1;
        d_test = 0;
        #80;

        a_test = 1;
        b_test = 1;
        c_test = 1;
        d_test = 1;
        #80;

        $finish;
    end

    initial begin
        $dumpfile("shared_wave.vcd");
        $dumpvars(0, tb_shared);
    end

    initial begin
        $monitor("Time=%0t: a=%b, b=%b, c=%b, d=%b, m=%b, s1=%b, s0=%b",
                 $time, a_test, b_test, c_test, d_test, m_test, s1_test, s0_test);
    end

    shared UUT_shared(
        .a(a_test),
        .b(b_test),
        .c(c_test),
        .d(d_test),
        .m(m_test),
        .s1(s1_test),
        .s0(s0_test)
    );

endmodule
