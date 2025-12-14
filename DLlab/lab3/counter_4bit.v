module counter_4bit (
    input clk,       
    input rst_n,       
    output reg [3:0] Q 
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            Q <= 4'b0000;  
        end
        else begin
            Q <= Q + 1'b1;
        end
    end

endmodule
