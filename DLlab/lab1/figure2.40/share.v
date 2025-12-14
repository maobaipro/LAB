module adder(a,b,s0,s1);	
	input a,b;
	output s1,s0;

	assign s1 = a & b;
	assign s0 = a ^ b;

endmodule 