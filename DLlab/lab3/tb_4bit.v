`timescale 1ns / 1ns

module tb_srpl_4bit;

    reg [3:0] R;
    reg L;
    reg w;
    reg clk;
    wire [3:0] Q;

    srpl_4bit uut (
        .R(R),
        .L(L),
        .w(w),
        .clk(clk),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        R = 0; L = 0; w = 0;
        #20;
	#20;
        #20;
        #20;

        R = 4'b1100;
        L = 1;
        #20;

        L = 0;
        w = 0;
        #20;
        #20;
        #20;

        w = 1;
        #20;
        #20;

        $stop;
    end

endmodule