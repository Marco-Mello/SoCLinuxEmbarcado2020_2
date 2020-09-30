
module Entrega2_FPGA_NIOS (
	clk_clk,
	phases_export,
	reset_reset_n,
	switchs_export);	

	input		clk_clk;
	output	[7:0]	phases_export;
	input		reset_reset_n;
	input	[7:0]	switchs_export;
endmodule
