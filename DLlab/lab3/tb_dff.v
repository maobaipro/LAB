module dfilpflop_tb;

reg D;
reg Clock;
reg Resetn;
wire Q;

dfilpflop u_dfilpflop(
    .D(D),
    .Clock(Clock),
    .Resetn(Resetn),
    .Q(Q)
);

initial begin
    Clock = 1'b0;
    forever #5 Clock = ~Clock;
end

initial begin
    Resetn = 1'b0;
    D = 1'b0;
    #20;  
    Resetn = 1'b1;
    #10; D = 1'b1;
    #10; D = 1'b0;
    #10; D = 1'b1;

    #5; Resetn = 1'b0;
    #5; Resetn = 1'b1;
    #10; D = 1'b0;

    #20;
    $finish;
end

endmodule