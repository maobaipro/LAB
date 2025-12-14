module dfilpflop(D,Clock,Resetn,Q);
	input D,Clock,Resetn;
	output reg Q;
	always @(posedge Clock or negedge Resetn) begin
    	  if (!Resetn) begin
        	Q <= 1'b0;
    	  end else begin
        	Q <= D;
    	end
       end
endmodule 