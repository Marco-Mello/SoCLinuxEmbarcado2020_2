-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "09/30/2020 10:59:39"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Entrega2_FPGA_NIOS IS
    PORT (
	fpga_clk_50 : IN std_logic;
	EN : IN std_logic;
	DIR : IN std_logic;
	VEL : IN std_logic_vector(1 DOWNTO 0);
	PHASES : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Entrega2_FPGA_NIOS;

-- Design Ports Information
-- PHASES[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PHASES[1]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PHASES[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PHASES[3]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIR	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_clk_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VEL[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VEL[1]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Entrega2_FPGA_NIOS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fpga_clk_50 : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_DIR : std_logic;
SIGNAL ww_VEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_PHASES : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \fpga_clk_50~input_o\ : std_logic;
SIGNAL \fpga_clk_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \VEL[1]~input_o\ : std_logic;
SIGNAL \VEL[0]~input_o\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \enable~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \passos[0]~0_combout\ : std_logic;
SIGNAL \Add0~102_cout\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \passos[7]~12_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \passos[12]~7_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \passos[13]~8_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \passos[14]~9_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \passos[15]~10_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \passos[17]~11_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \passos[19]~2_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \passos[20]~3_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \passos[21]~4_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \passos[22]~5_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \passos[23]~6_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \passos[25]~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \DIR~input_o\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL passos : std_logic_vector(25 DOWNTO 0);
SIGNAL counter : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_VEL[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_VEL[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_EN~input_o\ : std_logic;
SIGNAL \ALT_INV_DIR~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL ALT_INV_passos : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.s3~q\ : std_logic;
SIGNAL \ALT_INV_state.s2~q\ : std_logic;
SIGNAL \ALT_INV_state.s1~q\ : std_logic;
SIGNAL \ALT_INV_state.s0~q\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;

BEGIN

ww_fpga_clk_50 <= fpga_clk_50;
ww_EN <= EN;
ww_DIR <= DIR;
ww_VEL <= VEL;
PHASES <= ww_PHASES;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_VEL[1]~input_o\ <= NOT \VEL[1]~input_o\;
\ALT_INV_VEL[0]~input_o\ <= NOT \VEL[0]~input_o\;
\ALT_INV_EN~input_o\ <= NOT \EN~input_o\;
\ALT_INV_DIR~input_o\ <= NOT \DIR~input_o\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_Selector0~3_combout\ <= NOT \Selector0~3_combout\;
\ALT_INV_Selector0~1_combout\ <= NOT \Selector0~1_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_enable~q\ <= NOT \enable~q\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
ALT_INV_passos(11) <= NOT passos(11);
ALT_INV_passos(10) <= NOT passos(10);
ALT_INV_passos(9) <= NOT passos(9);
ALT_INV_passos(8) <= NOT passos(8);
ALT_INV_passos(7) <= NOT passos(7);
ALT_INV_passos(6) <= NOT passos(6);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
ALT_INV_passos(5) <= NOT passos(5);
ALT_INV_passos(4) <= NOT passos(4);
ALT_INV_passos(3) <= NOT passos(3);
ALT_INV_passos(2) <= NOT passos(2);
ALT_INV_passos(1) <= NOT passos(1);
ALT_INV_passos(0) <= NOT passos(0);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_passos(17) <= NOT passos(17);
ALT_INV_passos(16) <= NOT passos(16);
ALT_INV_passos(15) <= NOT passos(15);
ALT_INV_passos(14) <= NOT passos(14);
ALT_INV_passos(13) <= NOT passos(13);
ALT_INV_passos(12) <= NOT passos(12);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_passos(23) <= NOT passos(23);
ALT_INV_passos(22) <= NOT passos(22);
ALT_INV_passos(21) <= NOT passos(21);
ALT_INV_passos(20) <= NOT passos(20);
ALT_INV_passos(19) <= NOT passos(19);
ALT_INV_passos(18) <= NOT passos(18);
ALT_INV_passos(25) <= NOT passos(25);
ALT_INV_passos(24) <= NOT passos(24);
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_state.s3~q\ <= NOT \state.s3~q\;
\ALT_INV_state.s2~q\ <= NOT \state.s2~q\;
\ALT_INV_state.s1~q\ <= NOT \state.s1~q\;
\ALT_INV_state.s0~q\ <= NOT \state.s0~q\;
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(19) <= NOT counter(19);
ALT_INV_counter(20) <= NOT counter(20);
ALT_INV_counter(22) <= NOT counter(22);
ALT_INV_counter(21) <= NOT counter(21);
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(10) <= NOT counter(10);
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(6) <= NOT counter(6);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(13) <= NOT counter(13);
ALT_INV_counter(15) <= NOT counter(15);
ALT_INV_counter(16) <= NOT counter(16);
ALT_INV_counter(17) <= NOT counter(17);
ALT_INV_counter(18) <= NOT counter(18);
ALT_INV_counter(14) <= NOT counter(14);
ALT_INV_counter(12) <= NOT counter(12);
ALT_INV_counter(25) <= NOT counter(25);
ALT_INV_counter(24) <= NOT counter(24);
ALT_INV_counter(23) <= NOT counter(23);
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;

-- Location: IOOBUF_X40_Y0_N2
\PHASES[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.s0~q\,
	devoe => ww_devoe,
	o => ww_PHASES(0));

-- Location: IOOBUF_X20_Y0_N36
\PHASES[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.s1~q\,
	devoe => ww_devoe,
	o => ww_PHASES(1));

-- Location: IOOBUF_X40_Y0_N19
\PHASES[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.s2~q\,
	devoe => ww_devoe,
	o => ww_PHASES(2));

-- Location: IOOBUF_X20_Y0_N53
\PHASES[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.s3~q\,
	devoe => ww_devoe,
	o => ww_PHASES(3));

-- Location: IOIBUF_X32_Y0_N1
\fpga_clk_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_clk_50,
	o => \fpga_clk_50~input_o\);

-- Location: CLKCTRL_G6
\fpga_clk_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \fpga_clk_50~input_o\,
	outclk => \fpga_clk_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y21_N4
\EN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LABCELL_X85_Y25_N30
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~102\ = CARRY(( counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(0),
	cin => GND,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X85_Y25_N29
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add1~101_sumout\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LABCELL_X85_Y25_N33
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( counter(1) ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( counter(1) ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(1),
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X85_Y25_N1
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add1~97_sumout\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LABCELL_X85_Y25_N36
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( counter(2) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(2),
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X85_Y25_N16
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add1~93_sumout\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LABCELL_X85_Y25_N39
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( counter(3) ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(3),
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X85_Y25_N22
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add1~89_sumout\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LABCELL_X85_Y25_N42
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add1~90\ ))
-- \Add1~54\ = CARRY(( counter(4) ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(4),
	cin => \Add1~90\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X85_Y25_N5
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add1~53_sumout\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LABCELL_X85_Y25_N45
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~46\ = CARRY(( counter(5) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(5),
	cin => \Add1~54\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X85_Y25_N14
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add1~45_sumout\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LABCELL_X85_Y25_N48
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~58\ = CARRY(( counter(6) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(6),
	cin => \Add1~46\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X85_Y25_N20
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add1~57_sumout\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LABCELL_X85_Y25_N51
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~50\ = CARRY(( counter(7) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(7),
	cin => \Add1~58\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X85_Y25_N11
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \Add1~49_sumout\,
	sclr => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LABCELL_X85_Y25_N54
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~42\ = CARRY(( counter(8) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(8),
	cin => \Add1~50\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X85_Y25_N56
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LABCELL_X85_Y25_N57
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~62\ = CARRY(( counter(9) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(9),
	cin => \Add1~42\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X85_Y25_N59
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LABCELL_X85_Y24_N0
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( counter(10) ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( counter(10) ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(10),
	cin => \Add1~62\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X85_Y24_N2
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LABCELL_X85_Y24_N3
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( counter(11) ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(11),
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X85_Y24_N5
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LABCELL_X85_Y24_N6
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( counter(12) ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~14\ = CARRY(( counter(12) ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(12),
	cin => \Add1~70\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X85_Y24_N8
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LABCELL_X85_Y24_N9
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~38\ = CARRY(( counter(13) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(13),
	cin => \Add1~14\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X85_Y24_N11
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LABCELL_X85_Y24_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( counter(14) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~18\ = CARRY(( counter(14) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(14),
	cin => \Add1~38\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X85_Y24_N14
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LABCELL_X85_Y24_N15
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( counter(15) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~34\ = CARRY(( counter(15) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(15),
	cin => \Add1~18\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X85_Y24_N17
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LABCELL_X85_Y24_N18
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( counter(16) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~30\ = CARRY(( counter(16) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(16),
	cin => \Add1~34\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X85_Y24_N20
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LABCELL_X85_Y24_N21
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( counter(17) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( counter(17) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(17),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X85_Y24_N23
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LABCELL_X85_Y24_N24
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( counter(18) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( counter(18) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(18),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X85_Y24_N26
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LABCELL_X85_Y24_N27
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( counter(19) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~86\ = CARRY(( counter(19) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(19),
	cin => \Add1~22\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X85_Y24_N29
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LABCELL_X85_Y24_N30
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( counter(20) ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~82\ = CARRY(( counter(20) ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(20),
	cin => \Add1~86\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X85_Y24_N32
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LABCELL_X85_Y24_N33
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( counter(21) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~74\ = CARRY(( counter(21) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(21),
	cin => \Add1~82\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X85_Y24_N35
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: IOIBUF_X89_Y25_N55
\VEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VEL(1),
	o => \VEL[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\VEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VEL(0),
	o => \VEL[0]~input_o\);

-- Location: LABCELL_X85_Y24_N36
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( counter(22) ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~78\ = CARRY(( counter(22) ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(22),
	cin => \Add1~74\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X85_Y24_N38
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: MLABCELL_X84_Y24_N54
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( !counter(19) & ( counter(20) & ( (!counter(21) & (\VEL[1]~input_o\ & (!\VEL[0]~input_o\ & !counter(22)))) ) ) ) # ( counter(19) & ( !counter(20) & ( (!counter(21) & (!\VEL[1]~input_o\ & (!\VEL[0]~input_o\ & counter(22)))) ) ) ) # 
-- ( !counter(19) & ( !counter(20) & ( (\VEL[0]~input_o\ & (!counter(22) & (!counter(21) $ (!\VEL[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000000000000001000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(21),
	datab => \ALT_INV_VEL[1]~input_o\,
	datac => \ALT_INV_VEL[0]~input_o\,
	datad => ALT_INV_counter(22),
	datae => ALT_INV_counter(19),
	dataf => ALT_INV_counter(20),
	combout => \LessThan0~9_combout\);

-- Location: LABCELL_X85_Y24_N39
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( counter(23) ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~2\ = CARRY(( counter(23) ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(23),
	cin => \Add1~78\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X85_Y24_N41
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LABCELL_X85_Y24_N42
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( counter(24) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( counter(24) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(24),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X85_Y24_N44
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LABCELL_X85_Y24_N45
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( counter(25) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(25),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\);

-- Location: FF_X85_Y24_N47
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: MLABCELL_X84_Y24_N36
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( counter(19) & ( counter(20) & ( (!\VEL[1]~input_o\ & (!counter(22) & ((!counter(21)) # (!\VEL[0]~input_o\)))) ) ) ) # ( !counter(19) & ( counter(20) & ( (!\VEL[1]~input_o\ & (!counter(22) & ((!counter(21)) # 
-- (!\VEL[0]~input_o\)))) ) ) ) # ( counter(19) & ( !counter(20) & ( (!counter(22) & ((!counter(21) & ((!\VEL[1]~input_o\) # (!\VEL[0]~input_o\))) # (counter(21) & (!\VEL[1]~input_o\ & !\VEL[0]~input_o\)))) ) ) ) # ( !counter(19) & ( !counter(20) & ( 
-- (!counter(21) & ((!\VEL[1]~input_o\ & ((!\VEL[0]~input_o\) # (!counter(22)))) # (\VEL[1]~input_o\ & (!\VEL[0]~input_o\ & !counter(22))))) # (counter(21) & (!\VEL[1]~input_o\ & (!\VEL[0]~input_o\ & !counter(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010000000111010000000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(21),
	datab => \ALT_INV_VEL[1]~input_o\,
	datac => \ALT_INV_VEL[0]~input_o\,
	datad => ALT_INV_counter(22),
	datae => ALT_INV_counter(19),
	dataf => ALT_INV_counter(20),
	combout => \LessThan0~10_combout\);

-- Location: MLABCELL_X84_Y24_N27
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( counter(15) & ( counter(16) & ( (\VEL[0]~input_o\ & (\VEL[1]~input_o\ & (!counter(18) & !counter(17)))) ) ) ) # ( !counter(15) & ( counter(16) & ( (!\VEL[0]~input_o\ & (\VEL[1]~input_o\ & (!counter(18) & counter(17)))) ) ) ) # ( 
-- !counter(15) & ( !counter(16) & ( (!\VEL[1]~input_o\ & (counter(18) & (!\VEL[0]~input_o\ $ (counter(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000000000000000000000000001000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VEL[0]~input_o\,
	datab => \ALT_INV_VEL[1]~input_o\,
	datac => ALT_INV_counter(18),
	datad => ALT_INV_counter(17),
	datae => ALT_INV_counter(15),
	dataf => ALT_INV_counter(16),
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X84_Y24_N9
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \LessThan0~0_combout\ & ( counter(14) & ( (!\VEL[0]~input_o\ & (!\VEL[1]~input_o\ & !counter(13))) ) ) ) # ( \LessThan0~0_combout\ & ( !counter(14) & ( (!\VEL[1]~input_o\ & (\VEL[0]~input_o\ & counter(13))) # (\VEL[1]~input_o\ & 
-- ((!counter(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110101000000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VEL[0]~input_o\,
	datac => \ALT_INV_VEL[1]~input_o\,
	datad => ALT_INV_counter(13),
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => ALT_INV_counter(14),
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X84_Y24_N30
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( counter(15) & ( counter(16) & ( (!counter(17) & ((!\VEL[0]~input_o\ & ((!counter(18)))) # (\VEL[0]~input_o\ & (!\VEL[1]~input_o\)))) # (counter(17) & (((!\VEL[1]~input_o\ & !counter(18))))) ) ) ) # ( !counter(15) & ( counter(16) 
-- & ( (!\VEL[1]~input_o\ & ((!counter(18)) # ((\VEL[0]~input_o\ & !counter(17))))) # (\VEL[1]~input_o\ & (((!counter(17) & !counter(18))))) ) ) ) # ( counter(15) & ( !counter(16) & ( (!\VEL[0]~input_o\ & (((!counter(18))))) # (\VEL[0]~input_o\ & 
-- ((!\VEL[1]~input_o\ & ((!counter(17)) # (!counter(18)))) # (\VEL[1]~input_o\ & (!counter(17) & !counter(18))))) ) ) ) # ( !counter(15) & ( !counter(16) & ( (!counter(17) & (((!\VEL[1]~input_o\) # (!counter(18))))) # (counter(17) & ((!\VEL[0]~input_o\ & 
-- ((!counter(18)))) # (\VEL[0]~input_o\ & (!\VEL[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011000100111111100100000011111100010000001110110001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VEL[0]~input_o\,
	datab => \ALT_INV_VEL[1]~input_o\,
	datac => ALT_INV_counter(17),
	datad => ALT_INV_counter(18),
	datae => ALT_INV_counter(15),
	dataf => ALT_INV_counter(16),
	combout => \LessThan0~12_combout\);

-- Location: MLABCELL_X84_Y24_N12
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( counter(13) & ( \LessThan0~12_combout\ & ( (!counter(18)) # ((!\VEL[0]~input_o\ & ((!counter(14)))) # (\VEL[0]~input_o\ & (!counter(17)))) ) ) ) # ( !counter(13) & ( \LessThan0~12_combout\ & ( (!counter(18)) # ((!counter(14)) # 
-- ((\VEL[0]~input_o\ & !counter(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110111001111111011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VEL[0]~input_o\,
	datab => ALT_INV_counter(18),
	datac => ALT_INV_counter(17),
	datad => ALT_INV_counter(14),
	datae => ALT_INV_counter(13),
	dataf => \ALT_INV_LessThan0~12_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X85_Y25_N0
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( counter(5) & ( (\VEL[1]~input_o\ & counter(7)) ) ) # ( !counter(5) & ( (\VEL[1]~input_o\ & (counter(7) & ((counter(4)) # (\VEL[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VEL[1]~input_o\,
	datab => \ALT_INV_VEL[0]~input_o\,
	datac => ALT_INV_counter(4),
	datad => ALT_INV_counter(7),
	dataf => ALT_INV_counter(5),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X85_Y25_N6
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( counter(8) & ( counter(6) & ( (!\VEL[1]~input_o\ & (!counter(7) & \VEL[0]~input_o\)) ) ) ) # ( !counter(8) & ( counter(6) & ( (!\VEL[1]~input_o\ & (!counter(7) & \VEL[0]~input_o\)) ) ) ) # ( counter(8) & ( !counter(6) & ( 
-- (!\VEL[1]~input_o\ & ((!counter(7)) # ((\VEL[0]~input_o\ & !counter(5))))) ) ) ) # ( !counter(8) & ( !counter(6) & ( (!\VEL[0]~input_o\) # ((!counter(5)) # ((!\VEL[1]~input_o\ & !counter(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111000100010101000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VEL[1]~input_o\,
	datab => ALT_INV_counter(7),
	datac => \ALT_INV_VEL[0]~input_o\,
	datad => ALT_INV_counter(5),
	datae => ALT_INV_counter(8),
	dataf => ALT_INV_counter(6),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X85_Y25_N21
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( !counter(9) & ( counter(11) & ( (!\VEL[1]~input_o\ & (!\VEL[0]~input_o\ & !counter(10))) ) ) ) # ( counter(9) & ( !counter(11) & ( (!\VEL[0]~input_o\ & (!\VEL[1]~input_o\)) # (\VEL[0]~input_o\ & ((!counter(10)))) ) ) ) # ( 
-- !counter(9) & ( !counter(11) & ( (!counter(10)) # (!\VEL[1]~input_o\ $ (\VEL[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111111001101110001011100010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VEL[1]~input_o\,
	datab => \ALT_INV_VEL[0]~input_o\,
	datac => ALT_INV_counter(10),
	datae => ALT_INV_counter(9),
	dataf => ALT_INV_counter(11),
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X85_Y25_N15
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( counter(11) & ( (!\VEL[1]~input_o\ & (counter(9) & (!counter(10) & !\VEL[0]~input_o\))) ) ) # ( !counter(11) & ( (!\VEL[1]~input_o\ & (!counter(9) & (counter(10) & \VEL[0]~input_o\))) # (\VEL[1]~input_o\ & (counter(9) & 
-- (!counter(10) $ (\VEL[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000001001000100000000100100100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VEL[1]~input_o\,
	datab => ALT_INV_counter(9),
	datac => ALT_INV_counter(10),
	datad => \ALT_INV_VEL[0]~input_o\,
	dataf => ALT_INV_counter(11),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X85_Y25_N24
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( !\LessThan0~5_combout\ & ( \LessThan0~4_combout\ & ( (!\LessThan0~3_combout\ & ((\LessThan0~2_combout\) # (counter(8)))) ) ) ) # ( !\LessThan0~5_combout\ & ( !\LessThan0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000001011111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(8),
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => \ALT_INV_LessThan0~5_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X85_Y24_N54
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( !\LessThan0~7_combout\ & ( \LessThan0~6_combout\ & ( (((!\VEL[1]~input_o\) # (!\LessThan0~1_combout\)) # (counter(12))) # (\VEL[0]~input_o\) ) ) ) # ( !\LessThan0~7_combout\ & ( !\LessThan0~6_combout\ & ( (!\LessThan0~1_combout\) 
-- # ((counter(12) & ((!\VEL[1]~input_o\) # (\VEL[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110001000000000000000011111111111101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VEL[0]~input_o\,
	datab => ALT_INV_counter(12),
	datac => \ALT_INV_VEL[1]~input_o\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_LessThan0~7_combout\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LABCELL_X85_Y24_N51
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( \LessThan0~8_combout\ & ( counter(24) ) ) # ( !\LessThan0~8_combout\ & ( counter(24) ) ) # ( \LessThan0~8_combout\ & ( !counter(24) & ( ((!\LessThan0~10_combout\) # (counter(23))) # (counter(25)) ) ) ) # ( !\LessThan0~8_combout\ 
-- & ( !counter(24) & ( (((!\LessThan0~9_combout\ & !\LessThan0~10_combout\)) # (counter(23))) # (counter(25)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100111111111111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~9_combout\,
	datab => ALT_INV_counter(25),
	datac => ALT_INV_counter(23),
	datad => \ALT_INV_LessThan0~10_combout\,
	datae => \ALT_INV_LessThan0~8_combout\,
	dataf => ALT_INV_counter(24),
	combout => \LessThan0~11_combout\);

-- Location: FF_X85_Y24_N50
enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	asdata => \LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable~q\);

-- Location: MLABCELL_X84_Y21_N33
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \enable~q\ & ( \EN~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EN~input_o\,
	datae => \ALT_INV_enable~q\,
	combout => \process_0~0_combout\);

-- Location: LABCELL_X85_Y21_N0
\passos[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \passos[0]~0_combout\ = ( passos(0) & ( \Equal0~4_combout\ ) ) # ( passos(0) & ( !\Equal0~4_combout\ & ( (!\enable~q\) # (!\EN~input_o\) ) ) ) # ( !passos(0) & ( !\Equal0~4_combout\ & ( (\enable~q\ & \EN~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111001111110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable~q\,
	datac => \ALT_INV_EN~input_o\,
	datae => ALT_INV_passos(0),
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \passos[0]~0_combout\);

-- Location: FF_X85_Y21_N2
\passos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \passos[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(0));

-- Location: LABCELL_X85_Y21_N30
\Add0~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~102_cout\ = CARRY(( passos(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_passos(0),
	cin => GND,
	cout => \Add0~102_cout\);

-- Location: LABCELL_X85_Y21_N33
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( passos(1) ) + ( VCC ) + ( \Add0~102_cout\ ))
-- \Add0~58\ = CARRY(( passos(1) ) + ( VCC ) + ( \Add0~102_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_passos(1),
	cin => \Add0~102_cout\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: MLABCELL_X84_Y20_N24
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( !\Equal0~4_combout\ & ( (\enable~q\ & \EN~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable~q\,
	datac => \ALT_INV_EN~input_o\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \process_0~1_combout\);

-- Location: FF_X85_Y21_N35
\passos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(1));

-- Location: LABCELL_X85_Y21_N36
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( passos(2) ) + ( VCC ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( passos(2) ) + ( VCC ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_passos(2),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X85_Y21_N38
\passos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(2));

-- Location: LABCELL_X85_Y21_N39
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( passos(3) ) + ( VCC ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( passos(3) ) + ( VCC ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_passos(3),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X85_Y21_N41
\passos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(3));

-- Location: LABCELL_X85_Y21_N42
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( passos(4) ) + ( VCC ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( passos(4) ) + ( VCC ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_passos(4),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X85_Y21_N44
\passos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(4));

-- Location: LABCELL_X85_Y21_N45
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( passos(5) ) + ( VCC ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( passos(5) ) + ( VCC ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_passos(5),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X85_Y21_N47
\passos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(5));

-- Location: LABCELL_X85_Y21_N48
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( passos(6) ) + ( VCC ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( passos(6) ) + ( VCC ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_passos(6),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X85_Y21_N50
\passos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(6));

-- Location: LABCELL_X85_Y21_N51
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( !passos(7) ) + ( VCC ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( !passos(7) ) + ( VCC ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_passos(7),
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: MLABCELL_X84_Y20_N0
\passos[7]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \passos[7]~12_combout\ = ( !\Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~81_sumout\,
	combout => \passos[7]~12_combout\);

-- Location: FF_X84_Y20_N2
\passos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \passos[7]~12_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(7));

-- Location: LABCELL_X85_Y21_N54
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( passos(8) ) + ( VCC ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( passos(8) ) + ( VCC ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_passos(8),
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X85_Y21_N56
\passos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(8));

-- Location: LABCELL_X85_Y21_N57
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( passos(9) ) + ( VCC ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( passos(9) ) + ( VCC ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_passos(9),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X85_Y21_N59
\passos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(9));

-- Location: LABCELL_X85_Y20_N0
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( passos(10) ) + ( VCC ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( passos(10) ) + ( VCC ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_passos(10),
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X85_Y20_N2
\passos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(10));

-- Location: LABCELL_X85_Y20_N3
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( passos(11) ) + ( VCC ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( passos(11) ) + ( VCC ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_passos(11),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X85_Y20_N5
\passos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(11));

-- Location: LABCELL_X85_Y20_N6
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !passos(12) ) + ( VCC ) + ( \Add0~98\ ))
-- \Add0~34\ = CARRY(( !passos(12) ) + ( VCC ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_passos(12),
	cin => \Add0~98\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: MLABCELL_X84_Y20_N45
\passos[12]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \passos[12]~7_combout\ = ( !\Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add0~33_sumout\,
	combout => \passos[12]~7_combout\);

-- Location: FF_X84_Y20_N47
\passos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \passos[12]~7_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(12));

-- Location: LABCELL_X85_Y20_N9
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !passos(13) ) + ( VCC ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !passos(13) ) + ( VCC ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_passos(13),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: MLABCELL_X84_Y20_N3
\passos[13]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \passos[13]~8_combout\ = ( !\Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \passos[13]~8_combout\);

-- Location: FF_X84_Y20_N5
\passos[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \passos[13]~8_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(13));

-- Location: LABCELL_X85_Y20_N12
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( !passos(14) ) + ( VCC ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( !passos(14) ) + ( VCC ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_passos(14),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: MLABCELL_X84_Y20_N21
\passos[14]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \passos[14]~9_combout\ = ( !\Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \passos[14]~9_combout\);

-- Location: FF_X84_Y20_N23
\passos[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \passos[14]~9_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(14));

-- Location: LABCELL_X85_Y20_N15
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !passos(15) ) + ( VCC ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( !passos(15) ) + ( VCC ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_passos(15),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: MLABCELL_X84_Y20_N27
\passos[15]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \passos[15]~10_combout\ = ( !\Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~45_sumout\,
	combout => \passos[15]~10_combout\);

-- Location: FF_X84_Y20_N29
\passos[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \passos[15]~10_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(15));

-- Location: LABCELL_X85_Y20_N18
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( passos(16) ) + ( VCC ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( passos(16) ) + ( VCC ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_passos(16),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X85_Y20_N20
\passos[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(16));

-- Location: LABCELL_X85_Y20_N21
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( !passos(17) ) + ( VCC ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( !passos(17) ) + ( VCC ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_passos(17),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: MLABCELL_X84_Y20_N15
\passos[17]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \passos[17]~11_combout\ = !\Add0~53_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~53_sumout\,
	combout => \passos[17]~11_combout\);

-- Location: FF_X84_Y20_N17
\passos[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \passos[17]~11_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(17));

-- Location: LABCELL_X85_Y20_N24
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( passos(18) ) + ( VCC ) + ( \Add0~54\ ))
-- \Add0~10\ = CARRY(( passos(18) ) + ( VCC ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_passos(18),
	cin => \Add0~54\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X85_Y20_N26
\passos[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(18));

-- Location: LABCELL_X85_Y20_N27
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !passos(19) ) + ( VCC ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !passos(19) ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_passos(19),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X84_Y20_N12
\passos[19]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \passos[19]~2_combout\ = ( !\Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \passos[19]~2_combout\);

-- Location: FF_X84_Y20_N14
\passos[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \passos[19]~2_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(19));

-- Location: LABCELL_X85_Y20_N30
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !passos(20) ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !passos(20) ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_passos(20),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X84_Y20_N18
\passos[20]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \passos[20]~3_combout\ = ( !\Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \passos[20]~3_combout\);

-- Location: FF_X84_Y20_N20
\passos[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \passos[20]~3_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(20));

-- Location: LABCELL_X85_Y20_N33
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !passos(21) ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !passos(21) ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_passos(21),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X85_Y20_N51
\passos[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \passos[21]~4_combout\ = ( !\Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \passos[21]~4_combout\);

-- Location: FF_X85_Y20_N53
\passos[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \passos[21]~4_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(21));

-- Location: LABCELL_X85_Y20_N36
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !passos(22) ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !passos(22) ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_passos(22),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X84_Y20_N36
\passos[22]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \passos[22]~5_combout\ = ( !\Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \passos[22]~5_combout\);

-- Location: FF_X84_Y20_N38
\passos[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \passos[22]~5_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(22));

-- Location: LABCELL_X85_Y20_N39
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !passos(23) ) + ( VCC ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !passos(23) ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_passos(23),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X85_Y20_N54
\passos[23]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \passos[23]~6_combout\ = ( !\Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \passos[23]~6_combout\);

-- Location: FF_X85_Y20_N56
\passos[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \passos[23]~6_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(23));

-- Location: LABCELL_X85_Y20_N42
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( passos(24) ) + ( VCC ) + ( \Add0~30\ ))
-- \Add0~2\ = CARRY(( passos(24) ) + ( VCC ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_passos(24),
	cin => \Add0~30\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X85_Y20_N44
\passos[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(24));

-- Location: MLABCELL_X84_Y20_N6
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( passos(22) & ( !passos(18) & ( (passos(20) & (passos(19) & (passos(21) & passos(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_passos(20),
	datab => ALT_INV_passos(19),
	datac => ALT_INV_passos(21),
	datad => ALT_INV_passos(23),
	datae => ALT_INV_passos(22),
	dataf => ALT_INV_passos(18),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X84_Y20_N48
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( passos(13) & ( !passos(16) & ( (passos(15) & (passos(12) & (passos(14) & passos(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_passos(15),
	datab => ALT_INV_passos(12),
	datac => ALT_INV_passos(14),
	datad => ALT_INV_passos(17),
	datae => ALT_INV_passos(13),
	dataf => ALT_INV_passos(16),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X85_Y20_N45
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !passos(25) ) + ( VCC ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_passos(25),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\);

-- Location: LABCELL_X85_Y20_N48
\passos[25]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \passos[25]~1_combout\ = ( !\Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \passos[25]~1_combout\);

-- Location: FF_X85_Y20_N50
\passos[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \passos[25]~1_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => passos(25));

-- Location: MLABCELL_X84_Y20_N54
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !passos(9) & ( !passos(6) & ( (!passos(10) & (!passos(11) & (passos(7) & !passos(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_passos(10),
	datab => ALT_INV_passos(11),
	datac => ALT_INV_passos(7),
	datad => ALT_INV_passos(8),
	datae => ALT_INV_passos(9),
	dataf => ALT_INV_passos(6),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X85_Y21_N24
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !passos(5) & ( !passos(1) & ( (!passos(0) & (!passos(4) & (!passos(2) & !passos(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_passos(0),
	datab => ALT_INV_passos(4),
	datac => ALT_INV_passos(2),
	datad => ALT_INV_passos(3),
	datae => ALT_INV_passos(5),
	dataf => ALT_INV_passos(1),
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X84_Y20_N30
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \Equal0~3_combout\ & ( \Equal0~2_combout\ & ( (!passos(24) & (\Equal0~0_combout\ & (\Equal0~1_combout\ & passos(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_passos(24),
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => ALT_INV_passos(25),
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: IOIBUF_X89_Y25_N21
\DIR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIR,
	o => \DIR~input_o\);

-- Location: MLABCELL_X84_Y21_N27
\Selector0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = ( \state.s0~q\ & ( !\state.s2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s2~q\,
	dataf => \ALT_INV_state.s0~q\,
	combout => \Selector0~3_combout\);

-- Location: MLABCELL_X84_Y21_N42
\Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ( \state.s3~q\ & ( \Selector0~3_combout\ & ( (!\Selector3~0_combout\) # ((!\process_0~0_combout\) # (\Equal0~4_combout\)) ) ) ) # ( \state.s3~q\ & ( !\Selector0~3_combout\ & ( (!\process_0~0_combout\) # ((!\DIR~input_o\ $ 
-- (!\Selector3~0_combout\)) # (\Equal0~4_combout\)) ) ) ) # ( !\state.s3~q\ & ( !\Selector0~3_combout\ & ( (\process_0~0_combout\ & (!\Equal0~4_combout\ & (!\DIR~input_o\ $ (!\Selector3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000000111101101111111100000000000000001111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIR~input_o\,
	datab => \ALT_INV_Selector3~0_combout\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_Equal0~4_combout\,
	datae => \ALT_INV_state.s3~q\,
	dataf => \ALT_INV_Selector0~3_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X84_Y21_N44
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: MLABCELL_X84_Y21_N15
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( !\state.s1~q\ & ( !\state.s3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.s3~q\,
	dataf => \ALT_INV_state.s1~q\,
	combout => \Selector0~0_combout\);

-- Location: MLABCELL_X84_Y21_N0
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \state.s2~q\ & ( \Selector0~0_combout\ & ( (!\process_0~0_combout\) # ((!\Selector0~1_combout\) # (\Equal0~4_combout\)) ) ) ) # ( \state.s2~q\ & ( !\Selector0~0_combout\ & ( (!\process_0~0_combout\) # ((!\DIR~input_o\ $ 
-- (\Selector0~1_combout\)) # (\Equal0~4_combout\)) ) ) ) # ( !\state.s2~q\ & ( !\Selector0~0_combout\ & ( (\process_0~0_combout\ & (!\Equal0~4_combout\ & (!\DIR~input_o\ $ (\Selector0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000100111110111011111100000000000000001111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_DIR~input_o\,
	datad => \ALT_INV_Selector0~1_combout\,
	datae => \ALT_INV_state.s2~q\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X84_Y21_N2
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: MLABCELL_X84_Y21_N24
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \state.s1~q\ & ( !\state.s2~q\ ) ) # ( !\state.s1~q\ & ( (!\state.s2~q\ & ((!\state.s0~q\) # (\state.s3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s2~q\,
	datab => \ALT_INV_state.s3~q\,
	datac => \ALT_INV_state.s0~q\,
	dataf => \ALT_INV_state.s1~q\,
	combout => \Selector3~0_combout\);

-- Location: MLABCELL_X84_Y21_N9
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \state.s1~q\ & ( \Selector0~3_combout\ & ( ((!\Selector3~0_combout\) # (!\process_0~0_combout\)) # (\Equal0~4_combout\) ) ) ) # ( \state.s1~q\ & ( !\Selector0~3_combout\ & ( ((!\process_0~0_combout\) # (!\DIR~input_o\ $ 
-- (\Selector3~0_combout\))) # (\Equal0~4_combout\) ) ) ) # ( !\state.s1~q\ & ( !\Selector0~3_combout\ & ( (!\Equal0~4_combout\ & (\process_0~0_combout\ & (!\DIR~input_o\ $ (\Selector3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000100111111111011011100000000000000001111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIR~input_o\,
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_state.s1~q\,
	dataf => \ALT_INV_Selector0~3_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X84_Y21_N11
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: MLABCELL_X84_Y21_N12
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( !\state.s3~q\ & ( ((!\state.s0~q\) # (\state.s2~q\)) # (\state.s1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111100111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.s1~q\,
	datac => \ALT_INV_state.s0~q\,
	datad => \ALT_INV_state.s2~q\,
	dataf => \ALT_INV_state.s3~q\,
	combout => \Selector0~1_combout\);

-- Location: MLABCELL_X84_Y21_N48
\Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = ( \state.s0~q\ & ( \Selector0~0_combout\ ) ) # ( !\state.s0~q\ & ( \Selector0~0_combout\ & ( (\process_0~0_combout\ & (!\Equal0~4_combout\ & \Selector0~1_combout\)) ) ) ) # ( \state.s0~q\ & ( !\Selector0~0_combout\ & ( 
-- (!\process_0~0_combout\) # ((!\DIR~input_o\ $ (\Selector0~1_combout\)) # (\Equal0~4_combout\)) ) ) ) # ( !\state.s0~q\ & ( !\Selector0~0_combout\ & ( (\process_0~0_combout\ & (!\Equal0~4_combout\ & (!\DIR~input_o\ $ (\Selector0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000100111110111011111100000000010001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_DIR~input_o\,
	datad => \ALT_INV_Selector0~1_combout\,
	datae => \ALT_INV_state.s0~q\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X84_Y21_N50
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk_50~inputCLKENA0_outclk\,
	d => \Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: LABCELL_X53_Y2_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


