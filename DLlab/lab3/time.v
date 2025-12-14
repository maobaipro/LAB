module Timer(
    input Reset,
    input CLK,
    input E,
    output reg [24:0] Q,
    output reg Sign
);

    parameter TARGET = 20_000_000;

    always @(posedge CLK or posedge Reset) begin
        if (Reset) begin
            Q    <= 0;
            Sign <= 0;
        end
        else if (E) begin
            if (Q == TARGET - 1) begin
                Q    <= 0;
                Sign <= 1;
            end
            else begin
                Q    <= Q + 1;
                Sign <= 0;
            end
        end
    end

endmodule
