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

-- DATE "11/20/2025 17:44:22"

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

ENTITY 	RunningLightHandmadeOnPCBDe1Soc IS
    PORT (
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END RunningLightHandmadeOnPCBDe1Soc;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF RunningLightHandmadeOnPCBDe1Soc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \EntityRunningLightHandmade|NextState[1]~1_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \EntityRunningLightHandmade|NextState[2]~2_combout\ : std_logic;
SIGNAL \EntityRunningLightHandmade|NextState[0]~0_combout\ : std_logic;
SIGNAL \EntityRunningLightHandmade|oState\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \EntityRunningLightHandmade|ALT_INV_oState\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;

BEGIN

ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\EntityRunningLightHandmade|ALT_INV_oState\(1) <= NOT \EntityRunningLightHandmade|oState\(1);
\EntityRunningLightHandmade|ALT_INV_oState\(2) <= NOT \EntityRunningLightHandmade|oState\(2);
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\EntityRunningLightHandmade|ALT_INV_oState\(0) <= NOT \EntityRunningLightHandmade|oState\(0);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityRunningLightHandmade|oState\(0),
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
	i => \EntityRunningLightHandmade|oState\(1),
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
	i => \EntityRunningLightHandmade|oState\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

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

-- Location: CLKCTRL_G4
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: MLABCELL_X52_Y2_N36
\EntityRunningLightHandmade|NextState[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityRunningLightHandmade|NextState[1]~1_combout\ = ( \EntityRunningLightHandmade|oState\(1) & ( \EntityRunningLightHandmade|oState\(0) & ( !\EntityRunningLightHandmade|oState\(2) ) ) ) # ( !\EntityRunningLightHandmade|oState\(1) & ( 
-- \EntityRunningLightHandmade|oState\(0) & ( !\EntityRunningLightHandmade|oState\(2) ) ) ) # ( !\EntityRunningLightHandmade|oState\(1) & ( !\EntityRunningLightHandmade|oState\(0) & ( \EntityRunningLightHandmade|oState\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \EntityRunningLightHandmade|ALT_INV_oState\(2),
	datae => \EntityRunningLightHandmade|ALT_INV_oState\(1),
	dataf => \EntityRunningLightHandmade|ALT_INV_oState\(0),
	combout => \EntityRunningLightHandmade|NextState[1]~1_combout\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X52_Y2_N38
\EntityRunningLightHandmade|oState[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \EntityRunningLightHandmade|NextState[1]~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityRunningLightHandmade|oState\(1));

-- Location: MLABCELL_X52_Y2_N57
\EntityRunningLightHandmade|NextState[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityRunningLightHandmade|NextState[2]~2_combout\ = ( !\EntityRunningLightHandmade|oState\(2) & ( \EntityRunningLightHandmade|oState\(1) & ( \EntityRunningLightHandmade|oState\(0) ) ) ) # ( !\EntityRunningLightHandmade|oState\(2) & ( 
-- !\EntityRunningLightHandmade|oState\(1) & ( !\EntityRunningLightHandmade|oState\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityRunningLightHandmade|ALT_INV_oState\(0),
	datae => \EntityRunningLightHandmade|ALT_INV_oState\(2),
	dataf => \EntityRunningLightHandmade|ALT_INV_oState\(1),
	combout => \EntityRunningLightHandmade|NextState[2]~2_combout\);

-- Location: FF_X52_Y2_N59
\EntityRunningLightHandmade|oState[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \EntityRunningLightHandmade|NextState[2]~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityRunningLightHandmade|oState\(2));

-- Location: MLABCELL_X52_Y2_N48
\EntityRunningLightHandmade|NextState[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityRunningLightHandmade|NextState[0]~0_combout\ = ( \EntityRunningLightHandmade|oState\(0) & ( \EntityRunningLightHandmade|oState\(1) & ( !\EntityRunningLightHandmade|oState\(2) ) ) ) # ( !\EntityRunningLightHandmade|oState\(0) & ( 
-- \EntityRunningLightHandmade|oState\(1) & ( !\EntityRunningLightHandmade|oState\(2) ) ) ) # ( \EntityRunningLightHandmade|oState\(0) & ( !\EntityRunningLightHandmade|oState\(1) & ( !\EntityRunningLightHandmade|oState\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \EntityRunningLightHandmade|ALT_INV_oState\(2),
	datae => \EntityRunningLightHandmade|ALT_INV_oState\(0),
	dataf => \EntityRunningLightHandmade|ALT_INV_oState\(1),
	combout => \EntityRunningLightHandmade|NextState[0]~0_combout\);

-- Location: FF_X52_Y2_N50
\EntityRunningLightHandmade|oState[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \EntityRunningLightHandmade|NextState[0]~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityRunningLightHandmade|oState\(0));

-- Location: MLABCELL_X65_Y20_N0
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


