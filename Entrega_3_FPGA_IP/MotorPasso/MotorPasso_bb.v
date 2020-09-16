
module MotorPasso (
	chaves_export,
	clk_clk,
	fases_export,
	leds_name,
	reset_reset_n);	

	input	[3:0]	chaves_export;
	input		clk_clk;
	output	[3:0]	fases_export;
	output	[3:0]	leds_name;
	input		reset_reset_n;
endmodule
