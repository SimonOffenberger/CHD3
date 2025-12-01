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

-- DATE "12/01/2025 20:00:21"

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

ENTITY 	StrobeOnPCBDe1Soc IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END StrobeOnPCBDe1Soc;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF StrobeOnPCBDe1Soc IS
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
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \EntityStrobeGen|Count[0]~5_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \EntityStrobeGen|Count[2]~3_combout\ : std_logic;
SIGNAL \EntityStrobeGen|Count[3]~2_combout\ : std_logic;
SIGNAL \EntityStrobeGen|Count~1_combout\ : std_logic;
SIGNAL \EntityStrobeGen|Count~0_combout\ : std_logic;
SIGNAL \EntityStrobeGen|Count~4_combout\ : std_logic;
SIGNAL \EntityStrobeGen|Equal0~0_combout\ : std_logic;
SIGNAL \EntityStrobeGen|oStrobe~q\ : std_logic;
SIGNAL \EntityStrobeGen|Count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \EntityStrobeGen|ALT_INV_Count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\EntityStrobeGen|ALT_INV_Count\(3) <= NOT \EntityStrobeGen|Count\(3);
\EntityStrobeGen|ALT_INV_Count\(4) <= NOT \EntityStrobeGen|Count\(4);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\EntityStrobeGen|ALT_INV_Count\(0) <= NOT \EntityStrobeGen|Count\(0);
\EntityStrobeGen|ALT_INV_Count\(1) <= NOT \EntityStrobeGen|Count\(1);
\EntityStrobeGen|ALT_INV_Count\(2) <= NOT \EntityStrobeGen|Count\(2);
\EntityStrobeGen|ALT_INV_Count\(5) <= NOT \EntityStrobeGen|Count\(5);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityStrobeGen|oStrobe~q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

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

-- Location: LABCELL_X42_Y2_N36
\EntityStrobeGen|Count[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Count[0]~5_combout\ = ( !\EntityStrobeGen|Count\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \EntityStrobeGen|ALT_INV_Count\(0),
	combout => \EntityStrobeGen|Count[0]~5_combout\);

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

-- Location: FF_X42_Y2_N38
\EntityStrobeGen|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Count[0]~5_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(0));

-- Location: LABCELL_X42_Y2_N24
\EntityStrobeGen|Count[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Count[2]~3_combout\ = ( \EntityStrobeGen|Count\(2) & ( \EntityStrobeGen|Count\(1) & ( !\EntityStrobeGen|Count\(0) ) ) ) # ( !\EntityStrobeGen|Count\(2) & ( \EntityStrobeGen|Count\(1) & ( \EntityStrobeGen|Count\(0) ) ) ) # ( 
-- \EntityStrobeGen|Count\(2) & ( !\EntityStrobeGen|Count\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityStrobeGen|ALT_INV_Count\(0),
	datae => \EntityStrobeGen|ALT_INV_Count\(2),
	dataf => \EntityStrobeGen|ALT_INV_Count\(1),
	combout => \EntityStrobeGen|Count[2]~3_combout\);

-- Location: FF_X42_Y2_N26
\EntityStrobeGen|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Count[2]~3_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(2));

-- Location: LABCELL_X42_Y2_N21
\EntityStrobeGen|Count[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Count[3]~2_combout\ = ( \EntityStrobeGen|Count\(3) & ( \EntityStrobeGen|Count\(2) & ( (!\EntityStrobeGen|Count\(1)) # (!\EntityStrobeGen|Count\(0)) ) ) ) # ( !\EntityStrobeGen|Count\(3) & ( \EntityStrobeGen|Count\(2) & ( 
-- (\EntityStrobeGen|Count\(1) & \EntityStrobeGen|Count\(0)) ) ) ) # ( \EntityStrobeGen|Count\(3) & ( !\EntityStrobeGen|Count\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010101011111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(1),
	datad => \EntityStrobeGen|ALT_INV_Count\(0),
	datae => \EntityStrobeGen|ALT_INV_Count\(3),
	dataf => \EntityStrobeGen|ALT_INV_Count\(2),
	combout => \EntityStrobeGen|Count[3]~2_combout\);

-- Location: FF_X42_Y2_N23
\EntityStrobeGen|Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Count[3]~2_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(3));

-- Location: LABCELL_X42_Y2_N42
\EntityStrobeGen|Count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Count~1_combout\ = ( \EntityStrobeGen|Count\(4) & ( \EntityStrobeGen|Count\(2) & ( (!\EntityStrobeGen|Count\(0)) # ((!\EntityStrobeGen|Count\(1)) # (!\EntityStrobeGen|Count\(3))) ) ) ) # ( !\EntityStrobeGen|Count\(4) & ( 
-- \EntityStrobeGen|Count\(2) & ( (\EntityStrobeGen|Count\(0) & (\EntityStrobeGen|Count\(1) & \EntityStrobeGen|Count\(3))) ) ) ) # ( \EntityStrobeGen|Count\(4) & ( !\EntityStrobeGen|Count\(2) & ( (!\EntityStrobeGen|Count\(0)) # 
-- (((!\EntityStrobeGen|Count\(5)) # (\EntityStrobeGen|Count\(3))) # (\EntityStrobeGen|Count\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000001000000011111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(0),
	datab => \EntityStrobeGen|ALT_INV_Count\(1),
	datac => \EntityStrobeGen|ALT_INV_Count\(3),
	datad => \EntityStrobeGen|ALT_INV_Count\(5),
	datae => \EntityStrobeGen|ALT_INV_Count\(4),
	dataf => \EntityStrobeGen|ALT_INV_Count\(2),
	combout => \EntityStrobeGen|Count~1_combout\);

-- Location: FF_X42_Y2_N44
\EntityStrobeGen|Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Count~1_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(4));

-- Location: LABCELL_X42_Y2_N6
\EntityStrobeGen|Count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Count~0_combout\ = ( \EntityStrobeGen|Count\(5) & ( \EntityStrobeGen|Count\(2) & ( (!\EntityStrobeGen|Count\(0)) # ((!\EntityStrobeGen|Count\(1)) # ((!\EntityStrobeGen|Count\(3)) # (!\EntityStrobeGen|Count\(4)))) ) ) ) # ( 
-- !\EntityStrobeGen|Count\(5) & ( \EntityStrobeGen|Count\(2) & ( (\EntityStrobeGen|Count\(0) & (\EntityStrobeGen|Count\(1) & (\EntityStrobeGen|Count\(3) & \EntityStrobeGen|Count\(4)))) ) ) ) # ( \EntityStrobeGen|Count\(5) & ( !\EntityStrobeGen|Count\(2) & ( 
-- (!\EntityStrobeGen|Count\(0)) # (((!\EntityStrobeGen|Count\(4)) # (\EntityStrobeGen|Count\(3))) # (\EntityStrobeGen|Count\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(0),
	datab => \EntityStrobeGen|ALT_INV_Count\(1),
	datac => \EntityStrobeGen|ALT_INV_Count\(3),
	datad => \EntityStrobeGen|ALT_INV_Count\(4),
	datae => \EntityStrobeGen|ALT_INV_Count\(5),
	dataf => \EntityStrobeGen|ALT_INV_Count\(2),
	combout => \EntityStrobeGen|Count~0_combout\);

-- Location: FF_X42_Y2_N8
\EntityStrobeGen|Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Count~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(5));

-- Location: LABCELL_X42_Y2_N0
\EntityStrobeGen|Count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Count~4_combout\ = ( \EntityStrobeGen|Count\(1) & ( \EntityStrobeGen|Count\(2) & ( !\EntityStrobeGen|Count\(0) ) ) ) # ( !\EntityStrobeGen|Count\(1) & ( \EntityStrobeGen|Count\(2) & ( \EntityStrobeGen|Count\(0) ) ) ) # ( 
-- \EntityStrobeGen|Count\(1) & ( !\EntityStrobeGen|Count\(2) & ( !\EntityStrobeGen|Count\(0) ) ) ) # ( !\EntityStrobeGen|Count\(1) & ( !\EntityStrobeGen|Count\(2) & ( (\EntityStrobeGen|Count\(0) & ((!\EntityStrobeGen|Count\(5)) # 
-- ((!\EntityStrobeGen|Count\(4)) # (\EntityStrobeGen|Count\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(0),
	datab => \EntityStrobeGen|ALT_INV_Count\(5),
	datac => \EntityStrobeGen|ALT_INV_Count\(3),
	datad => \EntityStrobeGen|ALT_INV_Count\(4),
	datae => \EntityStrobeGen|ALT_INV_Count\(1),
	dataf => \EntityStrobeGen|ALT_INV_Count\(2),
	combout => \EntityStrobeGen|Count~4_combout\);

-- Location: FF_X42_Y2_N2
\EntityStrobeGen|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Count~4_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|Count\(1));

-- Location: LABCELL_X42_Y2_N30
\EntityStrobeGen|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityStrobeGen|Equal0~0_combout\ = ( !\EntityStrobeGen|Count\(3) & ( \EntityStrobeGen|Count\(5) & ( (!\EntityStrobeGen|Count\(1) & (\EntityStrobeGen|Count\(0) & (!\EntityStrobeGen|Count\(2) & \EntityStrobeGen|Count\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityStrobeGen|ALT_INV_Count\(1),
	datab => \EntityStrobeGen|ALT_INV_Count\(0),
	datac => \EntityStrobeGen|ALT_INV_Count\(2),
	datad => \EntityStrobeGen|ALT_INV_Count\(4),
	datae => \EntityStrobeGen|ALT_INV_Count\(3),
	dataf => \EntityStrobeGen|ALT_INV_Count\(5),
	combout => \EntityStrobeGen|Equal0~0_combout\);

-- Location: FF_X42_Y2_N31
\EntityStrobeGen|oStrobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityStrobeGen|Equal0~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityStrobeGen|oStrobe~q\);

-- Location: LABCELL_X31_Y55_N0
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


