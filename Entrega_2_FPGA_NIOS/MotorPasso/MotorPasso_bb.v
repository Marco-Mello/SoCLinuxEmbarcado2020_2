
module MotorPasso (
	clk_clk,
	reset_reset_n,
	chaves_export,
	fases_export);	

	input		clk_clk;
	input		reset_reset_n;
	input	[3:0]	chaves_export;
	output	[3:0]	fases_export;
endmodule
