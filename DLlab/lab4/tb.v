`timescale 1ns / 1ps

module tb_sequence;

    reg w;
    reg Clock;
    reg Resetn;
    wire z;

    sequence uut (
        .w(w), 
        .Clock(Clock), 
        .Resetn(Resetn), 
        .z(z)
    );

    initial begin
        Clock = 0;
        forever #5 Clock = ~Clock;
    end

    initial begin
        w = 0;
        Resetn = 0;

        #20;
        Resetn = 1;

        w = 0;
        #10; 
        
        w = 0;
        #10;
        
        w = 1;
        #10;
        
        w = 1;
        #10;
        
        w = 0;
        #10;
        
        Resetn = 0; 
        #10;
        
        #20;
        $stop;
    end

endmodule
