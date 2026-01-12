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

-- DATE "01/08/2026 11:02:12"

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
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Counter IS
    PORT (
	iClk : IN std_logic;
	iEnable : IN std_logic;
	inResetAsync : IN std_logic;
	iZero : IN std_logic;
	oOverflow : OUT std_logic;
	oCount : OUT IEEE.NUMERIC_STD.unsigned(4 DOWNTO 1)
	);
END Counter;

-- Design Ports Information
-- oOverflow	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oCount[1]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oCount[2]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oCount[3]	=>  Location: PIN_AE26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oCount[4]	=>  Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- iEnable	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iZero	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iClk	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inResetAsync	=>  Location: PIN_AJ29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iClk : std_logic;
SIGNAL ww_iEnable : std_logic;
SIGNAL ww_inResetAsync : std_logic;
SIGNAL ww_iZero : std_logic;
SIGNAL ww_oOverflow : std_logic;
SIGNAL ww_oCount : std_logic_vector(4 DOWNTO 1);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \iEnable~input_o\ : std_logic;
SIGNAL \iClk~input_o\ : std_logic;
SIGNAL \iClk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \iZero~input_o\ : std_logic;
SIGNAL \oCount~0_combout\ : std_logic;
SIGNAL \inResetAsync~input_o\ : std_logic;
SIGNAL \oCount[1]~1_combout\ : std_logic;
SIGNAL \oCount[1]~reg0_q\ : std_logic;
SIGNAL \oCount~4_combout\ : std_logic;
SIGNAL \oCount[2]~reg0_q\ : std_logic;
SIGNAL \oCount~3_combout\ : std_logic;
SIGNAL \oCount[3]~reg0_q\ : std_logic;
SIGNAL \oCount~2_combout\ : std_logic;
SIGNAL \oCount[4]~reg0_q\ : std_logic;
SIGNAL \oOverflow~0_combout\ : std_logic;
SIGNAL \ALT_INV_oCount[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_iEnable~input_o\ : std_logic;
SIGNAL \ALT_INV_iZero~input_o\ : std_logic;
SIGNAL \ALT_INV_oCount[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_oCount[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_oCount[4]~reg0_q\ : std_logic;

BEGIN

ww_iClk <= iClk;
ww_iEnable <= iEnable;
ww_inResetAsync <= inResetAsync;
ww_iZero <= iZero;
oOverflow <= ww_oOverflow;
oCount <= IEEE.NUMERIC_STD.UNSIGNED(ww_oCount);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_oCount[2]~reg0_q\ <= NOT \oCount[2]~reg0_q\;
\ALT_INV_iEnable~input_o\ <= NOT \iEnable~input_o\;
\ALT_INV_iZero~input_o\ <= NOT \iZero~input_o\;
\ALT_INV_oCount[3]~reg0_q\ <= NOT \oCount[3]~reg0_q\;
\ALT_INV_oCount[1]~reg0_q\ <= NOT \oCount[1]~reg0_q\;
\ALT_INV_oCount[4]~reg0_q\ <= NOT \oCount[4]~reg0_q\;

-- Location: IOOBUF_X89_Y8_N22
\oOverflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oOverflow~0_combout\,
	devoe => ww_devoe,
	o => ww_oOverflow);

-- Location: IOOBUF_X89_Y8_N5
\oCount[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oCount[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oCount(1));

-- Location: IOOBUF_X89_Y8_N56
\oCount[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oCount[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oCount(2));

-- Location: IOOBUF_X89_Y8_N39
\oCount[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oCount[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oCount(3));

-- Location: IOOBUF_X89_Y6_N56
\oCount[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oCount[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oCount(4));

-- Location: IOIBUF_X89_Y6_N4
\iEnable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iEnable,
	o => \iEnable~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\iClk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iClk,
	o => \iClk~input_o\);

-- Location: CLKCTRL_G10
\iClk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \iClk~input_o\,
	outclk => \iClk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y6_N21
\iZero~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iZero,
	o => \iZero~input_o\);

-- Location: MLABCELL_X87_Y8_N51
\oCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \oCount~0_combout\ = ( !\oCount[1]~reg0_q\ & ( !\iZero~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_oCount[1]~reg0_q\,
	dataf => \ALT_INV_iZero~input_o\,
	combout => \oCount~0_combout\);

-- Location: IOIBUF_X89_Y6_N38
\inResetAsync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inResetAsync,
	o => \inResetAsync~input_o\);

-- Location: MLABCELL_X87_Y8_N33
\oCount[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \oCount[1]~1_combout\ = ( \iZero~input_o\ ) # ( !\iZero~input_o\ & ( \iEnable~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iEnable~input_o\,
	dataf => \ALT_INV_iZero~input_o\,
	combout => \oCount[1]~1_combout\);

-- Location: FF_X87_Y8_N53
\oCount[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \oCount~0_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oCount[1]~reg0_q\);

-- Location: MLABCELL_X87_Y8_N42
\oCount~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \oCount~4_combout\ = ( !\oCount[2]~reg0_q\ & ( \oCount[1]~reg0_q\ & ( (!\iZero~input_o\ & ((!\oCount[4]~reg0_q\) # (\oCount[3]~reg0_q\))) ) ) ) # ( \oCount[2]~reg0_q\ & ( !\oCount[1]~reg0_q\ & ( !\iZero~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_iZero~input_o\,
	datac => \ALT_INV_oCount[4]~reg0_q\,
	datad => \ALT_INV_oCount[3]~reg0_q\,
	datae => \ALT_INV_oCount[2]~reg0_q\,
	dataf => \ALT_INV_oCount[1]~reg0_q\,
	combout => \oCount~4_combout\);

-- Location: FF_X87_Y8_N44
\oCount[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \oCount~4_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oCount[2]~reg0_q\);

-- Location: MLABCELL_X87_Y8_N15
\oCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \oCount~3_combout\ = ( \oCount[3]~reg0_q\ & ( \oCount[1]~reg0_q\ & ( (!\iZero~input_o\ & !\oCount[2]~reg0_q\) ) ) ) # ( !\oCount[3]~reg0_q\ & ( \oCount[1]~reg0_q\ & ( (!\iZero~input_o\ & \oCount[2]~reg0_q\) ) ) ) # ( \oCount[3]~reg0_q\ & ( 
-- !\oCount[1]~reg0_q\ & ( !\iZero~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000001100000011001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_iZero~input_o\,
	datac => \ALT_INV_oCount[2]~reg0_q\,
	datae => \ALT_INV_oCount[3]~reg0_q\,
	dataf => \ALT_INV_oCount[1]~reg0_q\,
	combout => \oCount~3_combout\);

-- Location: FF_X87_Y8_N17
\oCount[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \oCount~3_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oCount[3]~reg0_q\);

-- Location: MLABCELL_X87_Y8_N18
\oCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \oCount~2_combout\ = ( \oCount[4]~reg0_q\ & ( \oCount[2]~reg0_q\ & ( (!\iZero~input_o\ & ((!\oCount[1]~reg0_q\) # (!\oCount[3]~reg0_q\))) ) ) ) # ( !\oCount[4]~reg0_q\ & ( \oCount[2]~reg0_q\ & ( (!\iZero~input_o\ & (\oCount[1]~reg0_q\ & 
-- \oCount[3]~reg0_q\)) ) ) ) # ( \oCount[4]~reg0_q\ & ( !\oCount[2]~reg0_q\ & ( (!\iZero~input_o\ & ((!\oCount[1]~reg0_q\) # (\oCount[3]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100110000000000000011001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_iZero~input_o\,
	datac => \ALT_INV_oCount[1]~reg0_q\,
	datad => \ALT_INV_oCount[3]~reg0_q\,
	datae => \ALT_INV_oCount[4]~reg0_q\,
	dataf => \ALT_INV_oCount[2]~reg0_q\,
	combout => \oCount~2_combout\);

-- Location: FF_X87_Y8_N20
\oCount[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \oCount~2_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oCount[4]~reg0_q\);

-- Location: MLABCELL_X87_Y8_N36
\oOverflow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \oOverflow~0_combout\ = ( !\oCount[2]~reg0_q\ & ( !\oCount[3]~reg0_q\ & ( (\iEnable~input_o\ & (\oCount[1]~reg0_q\ & (!\iZero~input_o\ & \oCount[4]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iEnable~input_o\,
	datab => \ALT_INV_oCount[1]~reg0_q\,
	datac => \ALT_INV_iZero~input_o\,
	datad => \ALT_INV_oCount[4]~reg0_q\,
	datae => \ALT_INV_oCount[2]~reg0_q\,
	dataf => \ALT_INV_oCount[3]~reg0_q\,
	combout => \oOverflow~0_combout\);

-- Location: MLABCELL_X34_Y2_N3
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


