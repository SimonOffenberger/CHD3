-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "11/24/2025 13:05:21"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CounterOnPCBDe1Soc IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END CounterOnPCBDe1Soc;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CounterOnPCBDe1Soc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \EntityCounter|oCount[1]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \EntityCounter|Add0~97_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~98\ : std_logic;
SIGNAL \EntityCounter|Add0~93_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~94\ : std_logic;
SIGNAL \EntityCounter|Add0~89_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~90\ : std_logic;
SIGNAL \EntityCounter|Add0~85_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~86\ : std_logic;
SIGNAL \EntityCounter|Add0~81_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~82\ : std_logic;
SIGNAL \EntityCounter|Add0~77_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~78\ : std_logic;
SIGNAL \EntityCounter|Add0~73_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~74\ : std_logic;
SIGNAL \EntityCounter|Add0~69_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~70\ : std_logic;
SIGNAL \EntityCounter|Add0~65_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~66\ : std_logic;
SIGNAL \EntityCounter|Add0~61_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~62\ : std_logic;
SIGNAL \EntityCounter|Add0~57_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~58\ : std_logic;
SIGNAL \EntityCounter|Add0~53_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~54\ : std_logic;
SIGNAL \EntityCounter|Add0~49_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~50\ : std_logic;
SIGNAL \EntityCounter|Add0~45_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~46\ : std_logic;
SIGNAL \EntityCounter|Add0~41_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~42\ : std_logic;
SIGNAL \EntityCounter|Add0~1_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~2\ : std_logic;
SIGNAL \EntityCounter|Add0~5_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~6\ : std_logic;
SIGNAL \EntityCounter|Add0~9_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~10\ : std_logic;
SIGNAL \EntityCounter|Add0~13_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~14\ : std_logic;
SIGNAL \EntityCounter|Add0~17_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~18\ : std_logic;
SIGNAL \EntityCounter|Add0~21_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~22\ : std_logic;
SIGNAL \EntityCounter|Add0~25_sumout\ : std_logic;
SIGNAL \EntityCounter|oCount[23]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityCounter|Add0~26\ : std_logic;
SIGNAL \EntityCounter|Add0~29_sumout\ : std_logic;
SIGNAL \EntityCounter|Add0~30\ : std_logic;
SIGNAL \EntityCounter|Add0~33_sumout\ : std_logic;
SIGNAL \EntityCounter|oCount[25]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityCounter|Add0~34\ : std_logic;
SIGNAL \EntityCounter|Add0~37_sumout\ : std_logic;
SIGNAL \EntityCounter|oCount\ : std_logic_vector(26 DOWNTO 1);
SIGNAL \EntityCounter|ALT_INV_oCount\ : std_logic_vector(26 DOWNTO 1);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\EntityCounter|ALT_INV_oCount\(19) <= NOT \EntityCounter|oCount\(19);
\EntityCounter|ALT_INV_oCount\(2) <= NOT \EntityCounter|oCount\(2);
\EntityCounter|ALT_INV_oCount\(7) <= NOT \EntityCounter|oCount\(7);
\EntityCounter|ALT_INV_oCount\(15) <= NOT \EntityCounter|oCount\(15);
\EntityCounter|ALT_INV_oCount\(22) <= NOT \EntityCounter|oCount\(22);
\EntityCounter|ALT_INV_oCount\(6) <= NOT \EntityCounter|oCount\(6);
\EntityCounter|ALT_INV_oCount\(13) <= NOT \EntityCounter|oCount\(13);
\EntityCounter|ALT_INV_oCount\(4) <= NOT \EntityCounter|oCount\(4);
\EntityCounter|ALT_INV_oCount\(17) <= NOT \EntityCounter|oCount\(17);
\EntityCounter|ALT_INV_oCount\(21) <= NOT \EntityCounter|oCount\(21);
\EntityCounter|ALT_INV_oCount\(26) <= NOT \EntityCounter|oCount\(26);
\EntityCounter|ALT_INV_oCount\(12) <= NOT \EntityCounter|oCount\(12);
\EntityCounter|ALT_INV_oCount\(10) <= NOT \EntityCounter|oCount\(10);
\EntityCounter|ALT_INV_oCount\(3) <= NOT \EntityCounter|oCount\(3);
\EntityCounter|ALT_INV_oCount\(23) <= NOT \EntityCounter|oCount\(23);
\EntityCounter|ALT_INV_oCount\(1) <= NOT \EntityCounter|oCount\(1);
\EntityCounter|ALT_INV_oCount\(11) <= NOT \EntityCounter|oCount\(11);
\EntityCounter|ALT_INV_oCount\(9) <= NOT \EntityCounter|oCount\(9);
\EntityCounter|ALT_INV_oCount\(14) <= NOT \EntityCounter|oCount\(14);
\EntityCounter|ALT_INV_oCount\(5) <= NOT \EntityCounter|oCount\(5);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\EntityCounter|ALT_INV_oCount\(18) <= NOT \EntityCounter|oCount\(18);
\EntityCounter|ALT_INV_oCount\(20) <= NOT \EntityCounter|oCount\(20);
\EntityCounter|ALT_INV_oCount\(25) <= NOT \EntityCounter|oCount\(25);
\EntityCounter|ALT_INV_oCount\(24) <= NOT \EntityCounter|oCount\(24);
\EntityCounter|ALT_INV_oCount\(8) <= NOT \EntityCounter|oCount\(8);
\EntityCounter|ALT_INV_oCount\(16) <= NOT \EntityCounter|oCount\(16);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityCounter|oCount\(17),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityCounter|oCount\(18),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityCounter|oCount\(19),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityCounter|oCount\(20),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityCounter|oCount\(21),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityCounter|oCount\(22),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityCounter|oCount[23]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityCounter|oCount\(24),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityCounter|oCount[25]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityCounter|oCount\(26),
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X80_Y3_N0
\EntityCounter|oCount[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|oCount[1]~0_combout\ = ( !\EntityCounter|oCount\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \EntityCounter|ALT_INV_oCount\(1),
	combout => \EntityCounter|oCount[1]~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X80_Y3_N2
\EntityCounter|oCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|oCount[1]~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(1));

-- Location: LABCELL_X80_Y3_N30
\EntityCounter|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~97_sumout\ = SUM(( \EntityCounter|oCount\(1) ) + ( \EntityCounter|oCount\(2) ) + ( !VCC ))
-- \EntityCounter|Add0~98\ = CARRY(( \EntityCounter|oCount\(1) ) + ( \EntityCounter|oCount\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityCounter|ALT_INV_oCount\(2),
	datac => \EntityCounter|ALT_INV_oCount\(1),
	cin => GND,
	sumout => \EntityCounter|Add0~97_sumout\,
	cout => \EntityCounter|Add0~98\);

-- Location: FF_X80_Y3_N32
\EntityCounter|oCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~97_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(2));

-- Location: LABCELL_X80_Y3_N33
\EntityCounter|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~93_sumout\ = SUM(( \EntityCounter|oCount\(3) ) + ( GND ) + ( \EntityCounter|Add0~98\ ))
-- \EntityCounter|Add0~94\ = CARRY(( \EntityCounter|oCount\(3) ) + ( GND ) + ( \EntityCounter|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityCounter|ALT_INV_oCount\(3),
	cin => \EntityCounter|Add0~98\,
	sumout => \EntityCounter|Add0~93_sumout\,
	cout => \EntityCounter|Add0~94\);

-- Location: FF_X80_Y3_N35
\EntityCounter|oCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~93_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(3));

-- Location: LABCELL_X80_Y3_N36
\EntityCounter|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~89_sumout\ = SUM(( \EntityCounter|oCount\(4) ) + ( GND ) + ( \EntityCounter|Add0~94\ ))
-- \EntityCounter|Add0~90\ = CARRY(( \EntityCounter|oCount\(4) ) + ( GND ) + ( \EntityCounter|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityCounter|ALT_INV_oCount\(4),
	cin => \EntityCounter|Add0~94\,
	sumout => \EntityCounter|Add0~89_sumout\,
	cout => \EntityCounter|Add0~90\);

-- Location: FF_X80_Y3_N38
\EntityCounter|oCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~89_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(4));

-- Location: LABCELL_X80_Y3_N39
\EntityCounter|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~85_sumout\ = SUM(( \EntityCounter|oCount\(5) ) + ( GND ) + ( \EntityCounter|Add0~90\ ))
-- \EntityCounter|Add0~86\ = CARRY(( \EntityCounter|oCount\(5) ) + ( GND ) + ( \EntityCounter|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityCounter|ALT_INV_oCount\(5),
	cin => \EntityCounter|Add0~90\,
	sumout => \EntityCounter|Add0~85_sumout\,
	cout => \EntityCounter|Add0~86\);

-- Location: FF_X80_Y3_N41
\EntityCounter|oCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~85_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(5));

-- Location: LABCELL_X80_Y3_N42
\EntityCounter|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~81_sumout\ = SUM(( \EntityCounter|oCount\(6) ) + ( GND ) + ( \EntityCounter|Add0~86\ ))
-- \EntityCounter|Add0~82\ = CARRY(( \EntityCounter|oCount\(6) ) + ( GND ) + ( \EntityCounter|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityCounter|ALT_INV_oCount\(6),
	cin => \EntityCounter|Add0~86\,
	sumout => \EntityCounter|Add0~81_sumout\,
	cout => \EntityCounter|Add0~82\);

-- Location: FF_X80_Y3_N44
\EntityCounter|oCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~81_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(6));

-- Location: LABCELL_X80_Y3_N45
\EntityCounter|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~77_sumout\ = SUM(( \EntityCounter|oCount\(7) ) + ( GND ) + ( \EntityCounter|Add0~82\ ))
-- \EntityCounter|Add0~78\ = CARRY(( \EntityCounter|oCount\(7) ) + ( GND ) + ( \EntityCounter|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityCounter|ALT_INV_oCount\(7),
	cin => \EntityCounter|Add0~82\,
	sumout => \EntityCounter|Add0~77_sumout\,
	cout => \EntityCounter|Add0~78\);

-- Location: FF_X80_Y3_N47
\EntityCounter|oCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~77_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(7));

-- Location: LABCELL_X80_Y3_N48
\EntityCounter|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~73_sumout\ = SUM(( \EntityCounter|oCount\(8) ) + ( GND ) + ( \EntityCounter|Add0~78\ ))
-- \EntityCounter|Add0~74\ = CARRY(( \EntityCounter|oCount\(8) ) + ( GND ) + ( \EntityCounter|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityCounter|ALT_INV_oCount\(8),
	cin => \EntityCounter|Add0~78\,
	sumout => \EntityCounter|Add0~73_sumout\,
	cout => \EntityCounter|Add0~74\);

-- Location: FF_X80_Y3_N50
\EntityCounter|oCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~73_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(8));

-- Location: LABCELL_X80_Y3_N51
\EntityCounter|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~69_sumout\ = SUM(( \EntityCounter|oCount\(9) ) + ( GND ) + ( \EntityCounter|Add0~74\ ))
-- \EntityCounter|Add0~70\ = CARRY(( \EntityCounter|oCount\(9) ) + ( GND ) + ( \EntityCounter|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityCounter|ALT_INV_oCount\(9),
	cin => \EntityCounter|Add0~74\,
	sumout => \EntityCounter|Add0~69_sumout\,
	cout => \EntityCounter|Add0~70\);

-- Location: FF_X80_Y3_N53
\EntityCounter|oCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~69_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(9));

-- Location: LABCELL_X80_Y3_N54
\EntityCounter|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~65_sumout\ = SUM(( \EntityCounter|oCount\(10) ) + ( GND ) + ( \EntityCounter|Add0~70\ ))
-- \EntityCounter|Add0~66\ = CARRY(( \EntityCounter|oCount\(10) ) + ( GND ) + ( \EntityCounter|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityCounter|ALT_INV_oCount\(10),
	cin => \EntityCounter|Add0~70\,
	sumout => \EntityCounter|Add0~65_sumout\,
	cout => \EntityCounter|Add0~66\);

-- Location: FF_X80_Y3_N56
\EntityCounter|oCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~65_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(10));

-- Location: LABCELL_X80_Y3_N57
\EntityCounter|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~61_sumout\ = SUM(( \EntityCounter|oCount\(11) ) + ( GND ) + ( \EntityCounter|Add0~66\ ))
-- \EntityCounter|Add0~62\ = CARRY(( \EntityCounter|oCount\(11) ) + ( GND ) + ( \EntityCounter|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityCounter|ALT_INV_oCount\(11),
	cin => \EntityCounter|Add0~66\,
	sumout => \EntityCounter|Add0~61_sumout\,
	cout => \EntityCounter|Add0~62\);

-- Location: FF_X80_Y3_N59
\EntityCounter|oCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~61_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(11));

-- Location: LABCELL_X80_Y2_N0
\EntityCounter|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~57_sumout\ = SUM(( \EntityCounter|oCount\(12) ) + ( GND ) + ( \EntityCounter|Add0~62\ ))
-- \EntityCounter|Add0~58\ = CARRY(( \EntityCounter|oCount\(12) ) + ( GND ) + ( \EntityCounter|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityCounter|ALT_INV_oCount\(12),
	cin => \EntityCounter|Add0~62\,
	sumout => \EntityCounter|Add0~57_sumout\,
	cout => \EntityCounter|Add0~58\);

-- Location: FF_X80_Y2_N2
\EntityCounter|oCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~57_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(12));

-- Location: LABCELL_X80_Y2_N3
\EntityCounter|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~53_sumout\ = SUM(( \EntityCounter|oCount\(13) ) + ( GND ) + ( \EntityCounter|Add0~58\ ))
-- \EntityCounter|Add0~54\ = CARRY(( \EntityCounter|oCount\(13) ) + ( GND ) + ( \EntityCounter|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityCounter|ALT_INV_oCount\(13),
	cin => \EntityCounter|Add0~58\,
	sumout => \EntityCounter|Add0~53_sumout\,
	cout => \EntityCounter|Add0~54\);

-- Location: FF_X80_Y2_N5
\EntityCounter|oCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~53_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(13));

-- Location: LABCELL_X80_Y2_N6
\EntityCounter|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~49_sumout\ = SUM(( \EntityCounter|oCount\(14) ) + ( GND ) + ( \EntityCounter|Add0~54\ ))
-- \EntityCounter|Add0~50\ = CARRY(( \EntityCounter|oCount\(14) ) + ( GND ) + ( \EntityCounter|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityCounter|ALT_INV_oCount\(14),
	cin => \EntityCounter|Add0~54\,
	sumout => \EntityCounter|Add0~49_sumout\,
	cout => \EntityCounter|Add0~50\);

-- Location: FF_X80_Y2_N8
\EntityCounter|oCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~49_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(14));

-- Location: LABCELL_X80_Y2_N9
\EntityCounter|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~45_sumout\ = SUM(( \EntityCounter|oCount\(15) ) + ( GND ) + ( \EntityCounter|Add0~50\ ))
-- \EntityCounter|Add0~46\ = CARRY(( \EntityCounter|oCount\(15) ) + ( GND ) + ( \EntityCounter|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityCounter|ALT_INV_oCount\(15),
	cin => \EntityCounter|Add0~50\,
	sumout => \EntityCounter|Add0~45_sumout\,
	cout => \EntityCounter|Add0~46\);

-- Location: FF_X80_Y2_N11
\EntityCounter|oCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~45_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(15));

-- Location: LABCELL_X80_Y2_N12
\EntityCounter|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~41_sumout\ = SUM(( \EntityCounter|oCount\(16) ) + ( GND ) + ( \EntityCounter|Add0~46\ ))
-- \EntityCounter|Add0~42\ = CARRY(( \EntityCounter|oCount\(16) ) + ( GND ) + ( \EntityCounter|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityCounter|ALT_INV_oCount\(16),
	cin => \EntityCounter|Add0~46\,
	sumout => \EntityCounter|Add0~41_sumout\,
	cout => \EntityCounter|Add0~42\);

-- Location: FF_X80_Y2_N14
\EntityCounter|oCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~41_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(16));

-- Location: LABCELL_X80_Y2_N15
\EntityCounter|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~1_sumout\ = SUM(( \EntityCounter|oCount\(17) ) + ( GND ) + ( \EntityCounter|Add0~42\ ))
-- \EntityCounter|Add0~2\ = CARRY(( \EntityCounter|oCount\(17) ) + ( GND ) + ( \EntityCounter|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityCounter|ALT_INV_oCount\(17),
	cin => \EntityCounter|Add0~42\,
	sumout => \EntityCounter|Add0~1_sumout\,
	cout => \EntityCounter|Add0~2\);

-- Location: FF_X80_Y2_N16
\EntityCounter|oCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~1_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(17));

-- Location: LABCELL_X80_Y2_N18
\EntityCounter|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~5_sumout\ = SUM(( \EntityCounter|oCount\(18) ) + ( GND ) + ( \EntityCounter|Add0~2\ ))
-- \EntityCounter|Add0~6\ = CARRY(( \EntityCounter|oCount\(18) ) + ( GND ) + ( \EntityCounter|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityCounter|ALT_INV_oCount\(18),
	cin => \EntityCounter|Add0~2\,
	sumout => \EntityCounter|Add0~5_sumout\,
	cout => \EntityCounter|Add0~6\);

-- Location: FF_X80_Y2_N19
\EntityCounter|oCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~5_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(18));

-- Location: LABCELL_X80_Y2_N21
\EntityCounter|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~9_sumout\ = SUM(( \EntityCounter|oCount\(19) ) + ( GND ) + ( \EntityCounter|Add0~6\ ))
-- \EntityCounter|Add0~10\ = CARRY(( \EntityCounter|oCount\(19) ) + ( GND ) + ( \EntityCounter|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityCounter|ALT_INV_oCount\(19),
	cin => \EntityCounter|Add0~6\,
	sumout => \EntityCounter|Add0~9_sumout\,
	cout => \EntityCounter|Add0~10\);

-- Location: FF_X80_Y2_N23
\EntityCounter|oCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~9_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(19));

-- Location: LABCELL_X80_Y2_N24
\EntityCounter|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~13_sumout\ = SUM(( \EntityCounter|oCount\(20) ) + ( GND ) + ( \EntityCounter|Add0~10\ ))
-- \EntityCounter|Add0~14\ = CARRY(( \EntityCounter|oCount\(20) ) + ( GND ) + ( \EntityCounter|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityCounter|ALT_INV_oCount\(20),
	cin => \EntityCounter|Add0~10\,
	sumout => \EntityCounter|Add0~13_sumout\,
	cout => \EntityCounter|Add0~14\);

-- Location: FF_X80_Y2_N25
\EntityCounter|oCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~13_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(20));

-- Location: LABCELL_X80_Y2_N27
\EntityCounter|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~17_sumout\ = SUM(( \EntityCounter|oCount\(21) ) + ( GND ) + ( \EntityCounter|Add0~14\ ))
-- \EntityCounter|Add0~18\ = CARRY(( \EntityCounter|oCount\(21) ) + ( GND ) + ( \EntityCounter|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityCounter|ALT_INV_oCount\(21),
	cin => \EntityCounter|Add0~14\,
	sumout => \EntityCounter|Add0~17_sumout\,
	cout => \EntityCounter|Add0~18\);

-- Location: FF_X80_Y2_N28
\EntityCounter|oCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~17_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(21));

-- Location: LABCELL_X80_Y2_N30
\EntityCounter|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~21_sumout\ = SUM(( \EntityCounter|oCount\(22) ) + ( GND ) + ( \EntityCounter|Add0~18\ ))
-- \EntityCounter|Add0~22\ = CARRY(( \EntityCounter|oCount\(22) ) + ( GND ) + ( \EntityCounter|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityCounter|ALT_INV_oCount\(22),
	cin => \EntityCounter|Add0~18\,
	sumout => \EntityCounter|Add0~21_sumout\,
	cout => \EntityCounter|Add0~22\);

-- Location: FF_X80_Y2_N32
\EntityCounter|oCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~21_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(22));

-- Location: FF_X80_Y2_N35
\EntityCounter|oCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~25_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(23));

-- Location: LABCELL_X80_Y2_N33
\EntityCounter|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~25_sumout\ = SUM(( \EntityCounter|oCount\(23) ) + ( GND ) + ( \EntityCounter|Add0~22\ ))
-- \EntityCounter|Add0~26\ = CARRY(( \EntityCounter|oCount\(23) ) + ( GND ) + ( \EntityCounter|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityCounter|ALT_INV_oCount\(23),
	cin => \EntityCounter|Add0~22\,
	sumout => \EntityCounter|Add0~25_sumout\,
	cout => \EntityCounter|Add0~26\);

-- Location: FF_X80_Y2_N34
\EntityCounter|oCount[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~25_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount[23]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y2_N36
\EntityCounter|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~29_sumout\ = SUM(( \EntityCounter|oCount\(24) ) + ( GND ) + ( \EntityCounter|Add0~26\ ))
-- \EntityCounter|Add0~30\ = CARRY(( \EntityCounter|oCount\(24) ) + ( GND ) + ( \EntityCounter|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityCounter|ALT_INV_oCount\(24),
	cin => \EntityCounter|Add0~26\,
	sumout => \EntityCounter|Add0~29_sumout\,
	cout => \EntityCounter|Add0~30\);

-- Location: FF_X80_Y2_N37
\EntityCounter|oCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~29_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(24));

-- Location: FF_X80_Y2_N41
\EntityCounter|oCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~33_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(25));

-- Location: LABCELL_X80_Y2_N39
\EntityCounter|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~33_sumout\ = SUM(( \EntityCounter|oCount\(25) ) + ( GND ) + ( \EntityCounter|Add0~30\ ))
-- \EntityCounter|Add0~34\ = CARRY(( \EntityCounter|oCount\(25) ) + ( GND ) + ( \EntityCounter|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityCounter|ALT_INV_oCount\(25),
	cin => \EntityCounter|Add0~30\,
	sumout => \EntityCounter|Add0~33_sumout\,
	cout => \EntityCounter|Add0~34\);

-- Location: FF_X80_Y2_N40
\EntityCounter|oCount[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~33_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount[25]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y2_N42
\EntityCounter|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityCounter|Add0~37_sumout\ = SUM(( \EntityCounter|oCount\(26) ) + ( GND ) + ( \EntityCounter|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityCounter|ALT_INV_oCount\(26),
	cin => \EntityCounter|Add0~34\,
	sumout => \EntityCounter|Add0~37_sumout\);

-- Location: FF_X80_Y2_N43
\EntityCounter|oCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityCounter|Add0~37_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityCounter|oCount\(26));

-- Location: LABCELL_X37_Y30_N0
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


