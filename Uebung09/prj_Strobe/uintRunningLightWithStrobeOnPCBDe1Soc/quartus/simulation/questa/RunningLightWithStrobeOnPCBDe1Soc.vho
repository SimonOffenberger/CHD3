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

-- DATE "12/01/2025 21:06:15"

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

ENTITY 	RunningLightWithStrobeOnPCBDe1Soc IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN IEEE.STD_LOGIC_1164.std_ulogic_vector(0 DOWNTO 0);
	LEDR : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(2 DOWNTO 0)
	);
END RunningLightWithStrobeOnPCBDe1Soc;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF RunningLightWithStrobeOnPCBDe1Soc IS
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
SIGNAL ww_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \EntityRunningLightCase2P|Mux0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~5_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~6\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~1_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~2\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~101_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~102\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~97_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~98\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~93_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~94\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~89_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~90\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~85_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~86\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~81_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Equal0~3_combout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~82\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~77_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~78\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~73_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~74\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~69_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~70\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~65_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~66\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~61_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~62\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~57_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Equal0~2_combout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~58\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~53_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~54\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~49_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~50\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~45_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~46\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~41_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~42\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~37_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~38\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~33_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Equal0~1_combout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~34\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~29_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~30\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~25_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~26\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~21_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~22\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~17_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~18\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~13_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~14\ : std_logic;
SIGNAL \EntityStrobeGen|Add0~9_sumout\ : std_logic;
SIGNAL \EntityStrobeGen|Equal0~0_combout\ : std_logic;
SIGNAL \EntityStrobeGen|Equal0~4_combout\ : std_logic;
SIGNAL \EntityStrobeGen|oStrobe~q\ : std_logic;
SIGNAL \EntityRunningLightCase2P|Mux1~0_combout\ : std_logic;
SIGNAL \EntityRunningLightCase2P|Mux2~0_combout\ : std_logic;
SIGNAL \EntityStrobeGen|Count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \EntityRunningLightCase2P|oState\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \EntityStrobeGen|ALT_INV_Count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \EntityRunningLightCase2P|ALT_INV_oState\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \EntityStrobeGen|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \EntityStrobeGen|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \EntityStrobeGen|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \EntityStrobeGen|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(KEY);
LEDR <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_LEDR);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\EntityStrobeGen|ALT_INV_Count\(24) <= NOT \EntityStrobeGen|Count\(24);
\EntityStrobeGen|ALT_INV_Count\(15) <= NOT \EntityStrobeGen|Count\(15);
\EntityStrobeGen|ALT_INV_Count\(14) <= NOT \EntityStrobeGen|Count\(14);
\EntityStrobeGen|ALT_INV_Count\(23) <= NOT \EntityStrobeGen|Count\(23);
\EntityStrobeGen|ALT_INV_Count\(16) <= NOT \EntityStrobeGen|Count\(16);
\EntityStrobeGen|ALT_INV_Count\(13) <= NOT \EntityStrobeGen|Count\(13);
\EntityStrobeGen|ALT_INV_Count\(12) <= NOT \EntityStrobeGen|Count\(12);
\EntityStrobeGen|ALT_INV_Count\(10) <= NOT \EntityStrobeGen|Count\(10);
\EntityStrobeGen|ALT_INV_Count\(0) <= NOT \EntityStrobeGen|Count\(0);
\EntityStrobeGen|ALT_INV_Count\(9) <= NOT \EntityStrobeGen|Count\(9);
\EntityStrobeGen|ALT_INV_Count\(1) <= NOT \EntityStrobeGen|Count\(1);
\EntityStrobeGen|ALT_INV_Count\(21) <= NOT \EntityStrobeGen|Count\(21);
\EntityStrobeGen|ALT_INV_Count\(20) <= NOT \EntityStrobeGen|Count\(20);
\EntityStrobeGen|ALT_INV_Count\(25) <= NOT \EntityStrobeGen|Count\(25);
\EntityStrobeGen|ALT_INV_Count\(19) <= NOT \EntityStrobeGen|Count\(19);
\EntityStrobeGen|ALT_INV_Count\(18) <= NOT \EntityStrobeGen|Count\(18);
\EntityStrobeGen|ALT_INV_Count\(17) <= NOT \EntityStrobeGen|Count\(17);
\EntityStrobeGen|ALT_INV_Count\(11) <= NOT \EntityStrobeGen|Count\(11);
\EntityStrobeGen|ALT_INV_Count\(22) <= NOT \EntityStrobeGen|Count\(22);
\EntityStrobeGen|ALT_INV_Count\(5) <= NOT \EntityStrobeGen|Count\(5);
\EntityRunningLightCase2P|ALT_INV_oState\(1) <= NOT \EntityRunningLightCase2P|oState\(1);
\EntityRunningLightCase2P|ALT_INV_oState\(2) <= NOT \EntityRunningLightCase2P|oState\(2);
\EntityStrobeGen|ALT_INV_Count\(3) <= NOT \EntityStrobeGen|Count\(3);
\EntityStrobeGen|ALT_INV_Count\(6) <= NOT \EntityStrobeGen|Count\(6);
\EntityStrobeGen|ALT_INV_Count\(4) <= NOT \EntityStrobeGen|Count\(4);
\EntityStrobeGen|ALT_INV_Count\(2) <= NOT \EntityStrobeGen|Count\(2);
\EntityStrobeGen|ALT_INV_Count\(8) <= NOT \EntityStrobeGen|Count\(8);
\EntityStrobeGen|ALT_INV_Count\(7) <= NOT \EntityStrobeGen|Count\(7);
\EntityRunningLightCase2P|ALT_INV_oState\(0) <= NOT \EntityRunningLightCase2P|oState\(0);
\EntityStrobeGen|ALT_INV_Equal0~3_combout\ <= NOT \EntityStrobeGen|Equal0~3_combout\;
\EntityStrobeGen|ALT_INV_Equal0~2_combout\ <= NOT \EntityStrobeGen|Equal0~2_combout\;
\EntityStrobeGen|ALT_INV_Equal0~0_combout\ <= NOT \EntityStrobeGen|Equal0~0_combout\;
\EntityStrobeGen|ALT_INV_Equal0~1_combout\ <= NOT \EntityStrobeGen|Equal0~1_combout\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityRunningLightCase2P|oState\(0),
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
	i => \EntityRunningLightCase2P|oState\(1),
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
	i => \EntityRunningLightCase2P|oState\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

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

-- Location: LABCELL_X51_Y2_N3
\EntityRunningLightCase2P|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityRunningLightCase2P|Mux0~0_combout\ = (!\EntityRunningLightCase2P|oState\(2) & (!\EntityRunningLightCase2P|oState\(0) $ (\EntityRunningLightCase2P|oState\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityRunningLightCase2P|ALT_INV_oState\(0),
	datac => \EntityRunningLightCase2P|ALT_INV_oState\(1),
	datad => \EntityRunningLightCase2P|ALT_INV_oState\(2),
	combout => \EntityRunningLightCase2P|Mux0~0_combout\);

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

-- Location: LABCELL_X51_Y2_N30
\EntityStrobeGen|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~5_sumout\ = SUM(( \EntityStrobeGen|Count\(0) ) + ( VCC ) + ( !VCC ))
-- \EntityStrobeGen|Add0~6\ = CARRY(( \EntityStrobeGen|Count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityStrobeGen|ALT_INV_Count\(0),
	cin => GND,
	sumout => \EntityStrobeGen|Add0~5_sumout\,
	cout => \EntityStrobeGen|Add0~6\);

-- Location: FF_X51_Y2_N32
\EntityStrobeGen|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~5_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(0));

-- Location: LABCELL_X51_Y2_N33
\EntityStrobeGen|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~1_sumout\ = SUM(( \EntityStrobeGen|Count\(1) ) + ( GND ) + ( \EntityStrobeGen|Add0~6\ ))
-- \EntityStrobeGen|Add0~2\ = CARRY(( \EntityStrobeGen|Count\(1) ) + ( GND ) + ( \EntityStrobeGen|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(1),
	cin => \EntityStrobeGen|Add0~6\,
	sumout => \EntityStrobeGen|Add0~1_sumout\,
	cout => \EntityStrobeGen|Add0~2\);

-- Location: FF_X51_Y2_N35
\EntityStrobeGen|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~1_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(1));

-- Location: LABCELL_X51_Y2_N36
\EntityStrobeGen|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~101_sumout\ = SUM(( \EntityStrobeGen|Count\(2) ) + ( GND ) + ( \EntityStrobeGen|Add0~2\ ))
-- \EntityStrobeGen|Add0~102\ = CARRY(( \EntityStrobeGen|Count\(2) ) + ( GND ) + ( \EntityStrobeGen|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(2),
	cin => \EntityStrobeGen|Add0~2\,
	sumout => \EntityStrobeGen|Add0~101_sumout\,
	cout => \EntityStrobeGen|Add0~102\);

-- Location: FF_X51_Y2_N38
\EntityStrobeGen|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~101_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(2));

-- Location: LABCELL_X51_Y2_N39
\EntityStrobeGen|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~97_sumout\ = SUM(( \EntityStrobeGen|Count\(3) ) + ( GND ) + ( \EntityStrobeGen|Add0~102\ ))
-- \EntityStrobeGen|Add0~98\ = CARRY(( \EntityStrobeGen|Count\(3) ) + ( GND ) + ( \EntityStrobeGen|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(3),
	cin => \EntityStrobeGen|Add0~102\,
	sumout => \EntityStrobeGen|Add0~97_sumout\,
	cout => \EntityStrobeGen|Add0~98\);

-- Location: FF_X51_Y2_N41
\EntityStrobeGen|Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~97_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(3));

-- Location: LABCELL_X51_Y2_N42
\EntityStrobeGen|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~93_sumout\ = SUM(( \EntityStrobeGen|Count\(4) ) + ( GND ) + ( \EntityStrobeGen|Add0~98\ ))
-- \EntityStrobeGen|Add0~94\ = CARRY(( \EntityStrobeGen|Count\(4) ) + ( GND ) + ( \EntityStrobeGen|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityStrobeGen|ALT_INV_Count\(4),
	cin => \EntityStrobeGen|Add0~98\,
	sumout => \EntityStrobeGen|Add0~93_sumout\,
	cout => \EntityStrobeGen|Add0~94\);

-- Location: FF_X51_Y2_N44
\EntityStrobeGen|Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~93_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(4));

-- Location: LABCELL_X51_Y2_N45
\EntityStrobeGen|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~89_sumout\ = SUM(( \EntityStrobeGen|Count\(5) ) + ( GND ) + ( \EntityStrobeGen|Add0~94\ ))
-- \EntityStrobeGen|Add0~90\ = CARRY(( \EntityStrobeGen|Count\(5) ) + ( GND ) + ( \EntityStrobeGen|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(5),
	cin => \EntityStrobeGen|Add0~94\,
	sumout => \EntityStrobeGen|Add0~89_sumout\,
	cout => \EntityStrobeGen|Add0~90\);

-- Location: FF_X51_Y2_N47
\EntityStrobeGen|Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~89_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(5));

-- Location: LABCELL_X51_Y2_N48
\EntityStrobeGen|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~85_sumout\ = SUM(( \EntityStrobeGen|Count\(6) ) + ( GND ) + ( \EntityStrobeGen|Add0~90\ ))
-- \EntityStrobeGen|Add0~86\ = CARRY(( \EntityStrobeGen|Count\(6) ) + ( GND ) + ( \EntityStrobeGen|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(6),
	cin => \EntityStrobeGen|Add0~90\,
	sumout => \EntityStrobeGen|Add0~85_sumout\,
	cout => \EntityStrobeGen|Add0~86\);

-- Location: FF_X51_Y2_N50
\EntityStrobeGen|Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~85_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(6));

-- Location: LABCELL_X51_Y2_N51
\EntityStrobeGen|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~81_sumout\ = SUM(( \EntityStrobeGen|Count\(7) ) + ( GND ) + ( \EntityStrobeGen|Add0~86\ ))
-- \EntityStrobeGen|Add0~82\ = CARRY(( \EntityStrobeGen|Count\(7) ) + ( GND ) + ( \EntityStrobeGen|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(7),
	cin => \EntityStrobeGen|Add0~86\,
	sumout => \EntityStrobeGen|Add0~81_sumout\,
	cout => \EntityStrobeGen|Add0~82\);

-- Location: FF_X51_Y2_N53
\EntityStrobeGen|Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~81_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(7));

-- Location: LABCELL_X51_Y2_N18
\EntityStrobeGen|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Equal0~3_combout\ = ( \EntityStrobeGen|Count\(5) & ( \EntityStrobeGen|Count\(6) & ( (\EntityStrobeGen|Count\(2) & (\EntityStrobeGen|Count\(3) & (!\EntityStrobeGen|Count\(7) & \EntityStrobeGen|Count\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(2),
	datab => \EntityStrobeGen|ALT_INV_Count\(3),
	datac => \EntityStrobeGen|ALT_INV_Count\(7),
	datad => \EntityStrobeGen|ALT_INV_Count\(4),
	datae => \EntityStrobeGen|ALT_INV_Count\(5),
	dataf => \EntityStrobeGen|ALT_INV_Count\(6),
	combout => \EntityStrobeGen|Equal0~3_combout\);

-- Location: LABCELL_X51_Y2_N54
\EntityStrobeGen|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~77_sumout\ = SUM(( \EntityStrobeGen|Count\(8) ) + ( GND ) + ( \EntityStrobeGen|Add0~82\ ))
-- \EntityStrobeGen|Add0~78\ = CARRY(( \EntityStrobeGen|Count\(8) ) + ( GND ) + ( \EntityStrobeGen|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(8),
	cin => \EntityStrobeGen|Add0~82\,
	sumout => \EntityStrobeGen|Add0~77_sumout\,
	cout => \EntityStrobeGen|Add0~78\);

-- Location: FF_X51_Y2_N56
\EntityStrobeGen|Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~77_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(8));

-- Location: LABCELL_X51_Y2_N57
\EntityStrobeGen|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~73_sumout\ = SUM(( \EntityStrobeGen|Count\(9) ) + ( GND ) + ( \EntityStrobeGen|Add0~78\ ))
-- \EntityStrobeGen|Add0~74\ = CARRY(( \EntityStrobeGen|Count\(9) ) + ( GND ) + ( \EntityStrobeGen|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(9),
	cin => \EntityStrobeGen|Add0~78\,
	sumout => \EntityStrobeGen|Add0~73_sumout\,
	cout => \EntityStrobeGen|Add0~74\);

-- Location: FF_X51_Y2_N59
\EntityStrobeGen|Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~73_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(9));

-- Location: LABCELL_X51_Y1_N0
\EntityStrobeGen|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~69_sumout\ = SUM(( \EntityStrobeGen|Count\(10) ) + ( GND ) + ( \EntityStrobeGen|Add0~74\ ))
-- \EntityStrobeGen|Add0~70\ = CARRY(( \EntityStrobeGen|Count\(10) ) + ( GND ) + ( \EntityStrobeGen|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(10),
	cin => \EntityStrobeGen|Add0~74\,
	sumout => \EntityStrobeGen|Add0~69_sumout\,
	cout => \EntityStrobeGen|Add0~70\);

-- Location: FF_X51_Y1_N2
\EntityStrobeGen|Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~69_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(10));

-- Location: LABCELL_X51_Y1_N3
\EntityStrobeGen|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~65_sumout\ = SUM(( \EntityStrobeGen|Count\(11) ) + ( GND ) + ( \EntityStrobeGen|Add0~70\ ))
-- \EntityStrobeGen|Add0~66\ = CARRY(( \EntityStrobeGen|Count\(11) ) + ( GND ) + ( \EntityStrobeGen|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(11),
	cin => \EntityStrobeGen|Add0~70\,
	sumout => \EntityStrobeGen|Add0~65_sumout\,
	cout => \EntityStrobeGen|Add0~66\);

-- Location: FF_X51_Y1_N5
\EntityStrobeGen|Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~65_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(11));

-- Location: LABCELL_X51_Y1_N6
\EntityStrobeGen|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~61_sumout\ = SUM(( \EntityStrobeGen|Count\(12) ) + ( GND ) + ( \EntityStrobeGen|Add0~66\ ))
-- \EntityStrobeGen|Add0~62\ = CARRY(( \EntityStrobeGen|Count\(12) ) + ( GND ) + ( \EntityStrobeGen|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityStrobeGen|ALT_INV_Count\(12),
	cin => \EntityStrobeGen|Add0~66\,
	sumout => \EntityStrobeGen|Add0~61_sumout\,
	cout => \EntityStrobeGen|Add0~62\);

-- Location: FF_X51_Y1_N8
\EntityStrobeGen|Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~61_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(12));

-- Location: LABCELL_X51_Y1_N9
\EntityStrobeGen|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~57_sumout\ = SUM(( \EntityStrobeGen|Count\(13) ) + ( GND ) + ( \EntityStrobeGen|Add0~62\ ))
-- \EntityStrobeGen|Add0~58\ = CARRY(( \EntityStrobeGen|Count\(13) ) + ( GND ) + ( \EntityStrobeGen|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(13),
	cin => \EntityStrobeGen|Add0~62\,
	sumout => \EntityStrobeGen|Add0~57_sumout\,
	cout => \EntityStrobeGen|Add0~58\);

-- Location: FF_X51_Y1_N11
\EntityStrobeGen|Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~57_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(13));

-- Location: LABCELL_X50_Y1_N0
\EntityStrobeGen|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Equal0~2_combout\ = ( !\EntityStrobeGen|Count\(10) & ( !\EntityStrobeGen|Count\(8) & ( (\EntityStrobeGen|Count\(12) & (!\EntityStrobeGen|Count\(9) & (!\EntityStrobeGen|Count\(11) & \EntityStrobeGen|Count\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(12),
	datab => \EntityStrobeGen|ALT_INV_Count\(9),
	datac => \EntityStrobeGen|ALT_INV_Count\(11),
	datad => \EntityStrobeGen|ALT_INV_Count\(13),
	datae => \EntityStrobeGen|ALT_INV_Count\(10),
	dataf => \EntityStrobeGen|ALT_INV_Count\(8),
	combout => \EntityStrobeGen|Equal0~2_combout\);

-- Location: LABCELL_X51_Y1_N12
\EntityStrobeGen|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~53_sumout\ = SUM(( \EntityStrobeGen|Count\(14) ) + ( GND ) + ( \EntityStrobeGen|Add0~58\ ))
-- \EntityStrobeGen|Add0~54\ = CARRY(( \EntityStrobeGen|Count\(14) ) + ( GND ) + ( \EntityStrobeGen|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityStrobeGen|ALT_INV_Count\(14),
	cin => \EntityStrobeGen|Add0~58\,
	sumout => \EntityStrobeGen|Add0~53_sumout\,
	cout => \EntityStrobeGen|Add0~54\);

-- Location: FF_X51_Y1_N14
\EntityStrobeGen|Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~53_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(14));

-- Location: LABCELL_X51_Y1_N15
\EntityStrobeGen|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~49_sumout\ = SUM(( \EntityStrobeGen|Count\(15) ) + ( GND ) + ( \EntityStrobeGen|Add0~54\ ))
-- \EntityStrobeGen|Add0~50\ = CARRY(( \EntityStrobeGen|Count\(15) ) + ( GND ) + ( \EntityStrobeGen|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(15),
	cin => \EntityStrobeGen|Add0~54\,
	sumout => \EntityStrobeGen|Add0~49_sumout\,
	cout => \EntityStrobeGen|Add0~50\);

-- Location: FF_X51_Y1_N17
\EntityStrobeGen|Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~49_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(15));

-- Location: LABCELL_X51_Y1_N18
\EntityStrobeGen|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~45_sumout\ = SUM(( \EntityStrobeGen|Count\(16) ) + ( GND ) + ( \EntityStrobeGen|Add0~50\ ))
-- \EntityStrobeGen|Add0~46\ = CARRY(( \EntityStrobeGen|Count\(16) ) + ( GND ) + ( \EntityStrobeGen|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(16),
	cin => \EntityStrobeGen|Add0~50\,
	sumout => \EntityStrobeGen|Add0~45_sumout\,
	cout => \EntityStrobeGen|Add0~46\);

-- Location: FF_X51_Y1_N20
\EntityStrobeGen|Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~45_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(16));

-- Location: LABCELL_X51_Y1_N21
\EntityStrobeGen|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~41_sumout\ = SUM(( \EntityStrobeGen|Count\(17) ) + ( GND ) + ( \EntityStrobeGen|Add0~46\ ))
-- \EntityStrobeGen|Add0~42\ = CARRY(( \EntityStrobeGen|Count\(17) ) + ( GND ) + ( \EntityStrobeGen|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(17),
	cin => \EntityStrobeGen|Add0~46\,
	sumout => \EntityStrobeGen|Add0~41_sumout\,
	cout => \EntityStrobeGen|Add0~42\);

-- Location: FF_X51_Y1_N23
\EntityStrobeGen|Count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~41_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(17));

-- Location: LABCELL_X51_Y1_N24
\EntityStrobeGen|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~37_sumout\ = SUM(( \EntityStrobeGen|Count\(18) ) + ( GND ) + ( \EntityStrobeGen|Add0~42\ ))
-- \EntityStrobeGen|Add0~38\ = CARRY(( \EntityStrobeGen|Count\(18) ) + ( GND ) + ( \EntityStrobeGen|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(18),
	cin => \EntityStrobeGen|Add0~42\,
	sumout => \EntityStrobeGen|Add0~37_sumout\,
	cout => \EntityStrobeGen|Add0~38\);

-- Location: FF_X51_Y1_N26
\EntityStrobeGen|Count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~37_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(18));

-- Location: LABCELL_X51_Y1_N27
\EntityStrobeGen|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~33_sumout\ = SUM(( \EntityStrobeGen|Count\(19) ) + ( GND ) + ( \EntityStrobeGen|Add0~38\ ))
-- \EntityStrobeGen|Add0~34\ = CARRY(( \EntityStrobeGen|Count\(19) ) + ( GND ) + ( \EntityStrobeGen|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(19),
	cin => \EntityStrobeGen|Add0~38\,
	sumout => \EntityStrobeGen|Add0~33_sumout\,
	cout => \EntityStrobeGen|Add0~34\);

-- Location: FF_X51_Y1_N29
\EntityStrobeGen|Count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~33_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(19));

-- Location: LABCELL_X51_Y1_N54
\EntityStrobeGen|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Equal0~1_combout\ = ( \EntityStrobeGen|Count\(17) & ( !\EntityStrobeGen|Count\(18) & ( (\EntityStrobeGen|Count\(19) & (\EntityStrobeGen|Count\(14) & (!\EntityStrobeGen|Count\(16) & \EntityStrobeGen|Count\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(19),
	datab => \EntityStrobeGen|ALT_INV_Count\(14),
	datac => \EntityStrobeGen|ALT_INV_Count\(16),
	datad => \EntityStrobeGen|ALT_INV_Count\(15),
	datae => \EntityStrobeGen|ALT_INV_Count\(17),
	dataf => \EntityStrobeGen|ALT_INV_Count\(18),
	combout => \EntityStrobeGen|Equal0~1_combout\);

-- Location: LABCELL_X51_Y1_N30
\EntityStrobeGen|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~29_sumout\ = SUM(( \EntityStrobeGen|Count\(20) ) + ( GND ) + ( \EntityStrobeGen|Add0~34\ ))
-- \EntityStrobeGen|Add0~30\ = CARRY(( \EntityStrobeGen|Count\(20) ) + ( GND ) + ( \EntityStrobeGen|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityStrobeGen|ALT_INV_Count\(20),
	cin => \EntityStrobeGen|Add0~34\,
	sumout => \EntityStrobeGen|Add0~29_sumout\,
	cout => \EntityStrobeGen|Add0~30\);

-- Location: FF_X51_Y1_N32
\EntityStrobeGen|Count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~29_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(20));

-- Location: LABCELL_X51_Y1_N33
\EntityStrobeGen|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~25_sumout\ = SUM(( \EntityStrobeGen|Count\(21) ) + ( GND ) + ( \EntityStrobeGen|Add0~30\ ))
-- \EntityStrobeGen|Add0~26\ = CARRY(( \EntityStrobeGen|Count\(21) ) + ( GND ) + ( \EntityStrobeGen|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(21),
	cin => \EntityStrobeGen|Add0~30\,
	sumout => \EntityStrobeGen|Add0~25_sumout\,
	cout => \EntityStrobeGen|Add0~26\);

-- Location: FF_X51_Y1_N35
\EntityStrobeGen|Count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~25_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(21));

-- Location: LABCELL_X51_Y1_N36
\EntityStrobeGen|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~21_sumout\ = SUM(( \EntityStrobeGen|Count\(22) ) + ( GND ) + ( \EntityStrobeGen|Add0~26\ ))
-- \EntityStrobeGen|Add0~22\ = CARRY(( \EntityStrobeGen|Count\(22) ) + ( GND ) + ( \EntityStrobeGen|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(22),
	cin => \EntityStrobeGen|Add0~26\,
	sumout => \EntityStrobeGen|Add0~21_sumout\,
	cout => \EntityStrobeGen|Add0~22\);

-- Location: FF_X51_Y1_N38
\EntityStrobeGen|Count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~21_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(22));

-- Location: LABCELL_X51_Y1_N39
\EntityStrobeGen|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~17_sumout\ = SUM(( \EntityStrobeGen|Count\(23) ) + ( GND ) + ( \EntityStrobeGen|Add0~22\ ))
-- \EntityStrobeGen|Add0~18\ = CARRY(( \EntityStrobeGen|Count\(23) ) + ( GND ) + ( \EntityStrobeGen|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(23),
	cin => \EntityStrobeGen|Add0~22\,
	sumout => \EntityStrobeGen|Add0~17_sumout\,
	cout => \EntityStrobeGen|Add0~18\);

-- Location: FF_X51_Y1_N41
\EntityStrobeGen|Count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~17_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(23));

-- Location: LABCELL_X51_Y1_N42
\EntityStrobeGen|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~13_sumout\ = SUM(( \EntityStrobeGen|Count\(24) ) + ( GND ) + ( \EntityStrobeGen|Add0~18\ ))
-- \EntityStrobeGen|Add0~14\ = CARRY(( \EntityStrobeGen|Count\(24) ) + ( GND ) + ( \EntityStrobeGen|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityStrobeGen|ALT_INV_Count\(24),
	cin => \EntityStrobeGen|Add0~18\,
	sumout => \EntityStrobeGen|Add0~13_sumout\,
	cout => \EntityStrobeGen|Add0~14\);

-- Location: FF_X51_Y1_N44
\EntityStrobeGen|Count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~13_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(24));

-- Location: LABCELL_X51_Y1_N45
\EntityStrobeGen|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Add0~9_sumout\ = SUM(( \EntityStrobeGen|Count\(25) ) + ( GND ) + ( \EntityStrobeGen|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(25),
	cin => \EntityStrobeGen|Add0~14\,
	sumout => \EntityStrobeGen|Add0~9_sumout\);

-- Location: FF_X51_Y1_N47
\EntityStrobeGen|Count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Add0~9_sumout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sclr => \EntityStrobeGen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(25));

-- Location: LABCELL_X51_Y1_N48
\EntityStrobeGen|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Equal0~0_combout\ = ( \EntityStrobeGen|Count\(25) & ( \EntityStrobeGen|Count\(23) & ( (\EntityStrobeGen|Count\(22) & (\EntityStrobeGen|Count\(20) & (\EntityStrobeGen|Count\(21) & !\EntityStrobeGen|Count\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(22),
	datab => \EntityStrobeGen|ALT_INV_Count\(20),
	datac => \EntityStrobeGen|ALT_INV_Count\(21),
	datad => \EntityStrobeGen|ALT_INV_Count\(24),
	datae => \EntityStrobeGen|ALT_INV_Count\(25),
	dataf => \EntityStrobeGen|ALT_INV_Count\(23),
	combout => \EntityStrobeGen|Equal0~0_combout\);

-- Location: LABCELL_X51_Y2_N15
\EntityStrobeGen|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Equal0~4_combout\ = ( \EntityStrobeGen|Equal0~1_combout\ & ( \EntityStrobeGen|Equal0~0_combout\ & ( (\EntityStrobeGen|Equal0~3_combout\ & (\EntityStrobeGen|Equal0~2_combout\ & (\EntityStrobeGen|Count\(0) & \EntityStrobeGen|Count\(1)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Equal0~3_combout\,
	datab => \EntityStrobeGen|ALT_INV_Equal0~2_combout\,
	datac => \EntityStrobeGen|ALT_INV_Count\(0),
	datad => \EntityStrobeGen|ALT_INV_Count\(1),
	datae => \EntityStrobeGen|ALT_INV_Equal0~1_combout\,
	dataf => \EntityStrobeGen|ALT_INV_Equal0~0_combout\,
	combout => \EntityStrobeGen|Equal0~4_combout\);

-- Location: FF_X51_Y2_N13
\EntityStrobeGen|oStrobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \EntityStrobeGen|Equal0~4_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|oStrobe~q\);

-- Location: FF_X51_Y2_N5
\EntityRunningLightCase2P|oState[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityRunningLightCase2P|Mux0~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	ena => \EntityStrobeGen|oStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityRunningLightCase2P|oState\(2));

-- Location: LABCELL_X51_Y2_N6
\EntityRunningLightCase2P|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityRunningLightCase2P|Mux1~0_combout\ = !\EntityRunningLightCase2P|oState\(2) $ (!\EntityRunningLightCase2P|oState\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityRunningLightCase2P|ALT_INV_oState\(2),
	datac => \EntityRunningLightCase2P|ALT_INV_oState\(0),
	combout => \EntityRunningLightCase2P|Mux1~0_combout\);

-- Location: FF_X51_Y2_N8
\EntityRunningLightCase2P|oState[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityRunningLightCase2P|Mux1~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	ena => \EntityStrobeGen|oStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityRunningLightCase2P|oState\(1));

-- Location: LABCELL_X51_Y2_N0
\EntityRunningLightCase2P|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityRunningLightCase2P|Mux2~0_combout\ = (!\EntityRunningLightCase2P|oState\(2) & ((\EntityRunningLightCase2P|oState\(0)) # (\EntityRunningLightCase2P|oState\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityRunningLightCase2P|ALT_INV_oState\(1),
	datac => \EntityRunningLightCase2P|ALT_INV_oState\(2),
	datad => \EntityRunningLightCase2P|ALT_INV_oState\(0),
	combout => \EntityRunningLightCase2P|Mux2~0_combout\);

-- Location: FF_X51_Y2_N2
\EntityRunningLightCase2P|oState[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityRunningLightCase2P|Mux2~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	ena => \EntityStrobeGen|oStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityRunningLightCase2P|oState\(0));

-- Location: LABCELL_X30_Y60_N0
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


