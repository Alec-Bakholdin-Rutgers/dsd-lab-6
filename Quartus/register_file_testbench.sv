module register_file_testbench;

	logic clk, rst, WE3;
	logic [4:0] A1, A2, A3;
	logic [31:0] RD1, RD2, WD3;

	register_file top(clk, rst, A1, A2, A3, WD3, WE3, RD1, RD2);

	always
		begin
			clk <= 1; #5;
			clk <= 0; #5;
		end

	integer count = 0;
	always @ (posedge clk)
		begin
		
			count += 1;
		end

endmodule
