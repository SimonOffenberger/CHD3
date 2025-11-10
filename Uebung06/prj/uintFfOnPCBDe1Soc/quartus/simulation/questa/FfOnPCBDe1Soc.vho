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

-- DATE "11/10/2025 18:47:03"

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

ENTITY 	FfOnPCBDe1Soc IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END FfOnPCBDe1Soc;

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
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF FfOnPCBDe1Soc IS
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
SIGNAL ww_LEDR : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|oQ_A~0_combout\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|oQ_A~q\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|oQ_B~combout\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|oQ_C~q\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|oQ_D~feeder_combout\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|oQ_D~q\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|F~feeder_combout\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|F~q\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|oQ_F~q\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|oQ_G~combout\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|oQ_H~feeder_combout\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|oQ_H~q\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|oQ_I~feeder_combout\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|oQ_I~q\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|ALT_INV_oQ_G~combout\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|ALT_INV_oQ_B~combout\ : std_logic;
SIGNAL \Entity_FF_OR_Latch|ALT_INV_F~q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_CLOCK_50~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Entity_FF_OR_Latch|ALT_INV_oQ_G~combout\ <= NOT \Entity_FF_OR_Latch|oQ_G~combout\;
\Entity_FF_OR_Latch|ALT_INV_oQ_B~combout\ <= NOT \Entity_FF_OR_Latch|oQ_B~combout\;
\Entity_FF_OR_Latch|ALT_INV_F~q\ <= NOT \Entity_FF_OR_Latch|F~q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_CLOCK_50~input_o\ <= NOT \CLOCK_50~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Entity_FF_OR_Latch|oQ_A~q\,
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
	i => \Entity_FF_OR_Latch|oQ_B~combout\,
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
	i => \Entity_FF_OR_Latch|oQ_C~q\,
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
	i => \Entity_FF_OR_Latch|oQ_D~q\,
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
	i => \Entity_FF_OR_Latch|oQ_B~combout\,
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
	i => \Entity_FF_OR_Latch|oQ_F~q\,
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
	i => \Entity_FF_OR_Latch|oQ_G~combout\,
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
	i => \Entity_FF_OR_Latch|oQ_H~q\,
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
	i => \Entity_FF_OR_Latch|oQ_I~q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

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

-- Location: LABCELL_X57_Y1_N33
\Entity_FF_OR_Latch|oQ_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_FF_OR_Latch|oQ_A~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	combout => \Entity_FF_OR_Latch|oQ_A~0_combout\);

-- Location: FF_X57_Y1_N35
\Entity_FF_OR_Latch|oQ_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Entity_FF_OR_Latch|oQ_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_FF_OR_Latch|oQ_A~q\);

-- Location: LABCELL_X31_Y1_N33
\Entity_FF_OR_Latch|oQ_B\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_FF_OR_Latch|oQ_B~combout\ = ( \Entity_FF_OR_Latch|oQ_B~combout\ & ( (!\CLOCK_50~input_o\) # (\KEY[0]~input_o\) ) ) # ( !\Entity_FF_OR_Latch|oQ_B~combout\ & ( (\KEY[0]~input_o\ & \CLOCK_50~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_CLOCK_50~input_o\,
	dataf => \Entity_FF_OR_Latch|ALT_INV_oQ_B~combout\,
	combout => \Entity_FF_OR_Latch|oQ_B~combout\);

-- Location: FF_X57_Y1_N37
\Entity_FF_OR_Latch|oQ_C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_FF_OR_Latch|oQ_C~q\);

-- Location: LABCELL_X83_Y4_N0
\Entity_FF_OR_Latch|oQ_D~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_FF_OR_Latch|oQ_D~feeder_combout\ = ( \KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \Entity_FF_OR_Latch|oQ_D~feeder_combout\);

-- Location: FF_X83_Y4_N1
\Entity_FF_OR_Latch|oQ_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Entity_FF_OR_Latch|oQ_D~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_FF_OR_Latch|oQ_D~q\);

-- Location: LABCELL_X83_Y4_N15
\Entity_FF_OR_Latch|F~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_FF_OR_Latch|F~feeder_combout\ = ( \KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \Entity_FF_OR_Latch|F~feeder_combout\);

-- Location: FF_X83_Y4_N17
\Entity_FF_OR_Latch|F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Entity_FF_OR_Latch|F~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_FF_OR_Latch|F~q\);

-- Location: FF_X83_Y4_N37
\Entity_FF_OR_Latch|oQ_F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Entity_FF_OR_Latch|F~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_FF_OR_Latch|oQ_F~q\);

-- Location: LABCELL_X31_Y1_N6
\Entity_FF_OR_Latch|oQ_G\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_FF_OR_Latch|oQ_G~combout\ = ( \Entity_FF_OR_Latch|oQ_G~combout\ & ( \CLOCK_50~input_o\ & ( \Entity_FF_OR_Latch|oQ_B~combout\ ) ) ) # ( !\Entity_FF_OR_Latch|oQ_G~combout\ & ( \CLOCK_50~input_o\ & ( \Entity_FF_OR_Latch|oQ_B~combout\ ) ) ) # ( 
-- \Entity_FF_OR_Latch|oQ_G~combout\ & ( !\CLOCK_50~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Entity_FF_OR_Latch|ALT_INV_oQ_B~combout\,
	datae => \Entity_FF_OR_Latch|ALT_INV_oQ_G~combout\,
	dataf => \ALT_INV_CLOCK_50~input_o\,
	combout => \Entity_FF_OR_Latch|oQ_G~combout\);

-- Location: LABCELL_X83_Y4_N12
\Entity_FF_OR_Latch|oQ_H~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_FF_OR_Latch|oQ_H~feeder_combout\ = \Entity_FF_OR_Latch|F~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Entity_FF_OR_Latch|ALT_INV_F~q\,
	combout => \Entity_FF_OR_Latch|oQ_H~feeder_combout\);

-- Location: FF_X83_Y4_N13
\Entity_FF_OR_Latch|oQ_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Entity_FF_OR_Latch|oQ_H~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_FF_OR_Latch|oQ_H~q\);

-- Location: LABCELL_X83_Y4_N21
\Entity_FF_OR_Latch|oQ_I~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_FF_OR_Latch|oQ_I~feeder_combout\ = ( \KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \Entity_FF_OR_Latch|oQ_I~feeder_combout\);

-- Location: FF_X83_Y4_N22
\Entity_FF_OR_Latch|oQ_I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Entity_FF_OR_Latch|oQ_I~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_FF_OR_Latch|oQ_I~q\);

-- Location: LABCELL_X31_Y36_N0
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


