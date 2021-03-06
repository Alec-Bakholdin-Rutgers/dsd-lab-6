module register_file(input logic clk, rst,
							input logic [4:0] A1, A2, A3,
							input logic [31:0] WD3,
							input logic WE3,
							output logic [31:0] RD1,
							output logic [31:0] RD2);
	
	reg[31:0] registers [31:0];
	
	always_comb
		begin
			RD1 <= registers[A1];
			RD2 <= registers[A2];
		end
	
	always @(posedge clk or negedge rst)
		if(!rst) registers <= '{default:32'b0};
		else if(WE3) registers[A3] <= WD3;
			
							
endmodule
