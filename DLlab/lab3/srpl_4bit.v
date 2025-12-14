module srpl_4bit (
    input [3:0] R,     
    input L,          
    input w,           
    input clk,          
    output reg [3:0] Q  
);

    always @(posedge clk) begin
        if (L) begin
            Q <= R; 
        end 
        else begin
            Q <= {w, Q[3:1]};
        end
    end

endmodule 