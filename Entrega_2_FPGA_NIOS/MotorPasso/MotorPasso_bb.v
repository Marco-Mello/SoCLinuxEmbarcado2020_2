
module MotorPasso (
	clk_clk,
	chaves_export,
	fases_export,
	reset_reset_n);	

	input		clk_clk;
	input	[3:0]	chaves_export;
	output	[3:0]	fases_export;
	input		reset_reset_n;
endmodule
