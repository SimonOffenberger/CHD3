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

-- DATE "11/11/2025 20:25:37"

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

ENTITY 	ShiftRegOnPCBDe1Soc IS
    PORT (
	KEY : IN IEEE.STD_LOGIC_1164.std_ulogic_vector(2 DOWNTO 0);
	LEDR : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(8 DOWNTO 0)
	);
END ShiftRegOnPCBDe1Soc;

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
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegOnPCBDe1Soc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Entity_DFF|oQ[1]~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \Entity_DFF|oQ[4]~feeder_combout\ : std_logic;
SIGNAL \Entity_DFF|oQ[5]~feeder_combout\ : std_logic;
SIGNAL \Entity_DFF|oQ[6]~feeder_combout\ : std_logic;
SIGNAL \Entity_DFF|oQ[7]~feeder_combout\ : std_logic;
SIGNAL \Entity_DFF|oQ[8]~feeder_combout\ : std_logic;
SIGNAL \Entity_DFF|oQ[9]~feeder_combout\ : std_logic;
SIGNAL \Entity_DFF|oQ\ : std_logic_vector(9 DOWNTO 1);
SIGNAL \Entity_DFF|ALT_INV_oQ\ : std_logic_vector(8 DOWNTO 3);
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;

BEGIN

ww_KEY <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(KEY);
LEDR <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_LEDR);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Entity_DFF|ALT_INV_oQ\(8) <= NOT \Entity_DFF|oQ\(8);
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\Entity_DFF|ALT_INV_oQ\(4) <= NOT \Entity_DFF|oQ\(4);
\Entity_DFF|ALT_INV_oQ\(3) <= NOT \Entity_DFF|oQ\(3);
\Entity_DFF|ALT_INV_oQ\(6) <= NOT \Entity_DFF|oQ\(6);
\Entity_DFF|ALT_INV_oQ\(7) <= NOT \Entity_DFF|oQ\(7);
\Entity_DFF|ALT_INV_oQ\(5) <= NOT \Entity_DFF|oQ\(5);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Entity_DFF|oQ\(1),
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
	i => \Entity_DFF|oQ\(2),
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
	i => \Entity_DFF|oQ\(3),
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
	i => \Entity_DFF|oQ\(4),
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
	i => \Entity_DFF|oQ\(5),
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
	i => \Entity_DFF|oQ\(6),
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
	i => \Entity_DFF|oQ\(7),
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
	i => \Entity_DFF|oQ\(8),
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
	i => \Entity_DFF|oQ\(9),
	devoe => ww_devoe,
	o => ww_LEDR(8));

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

-- Location: LABCELL_X63_Y2_N42
\Entity_DFF|oQ[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_DFF|oQ[1]~0_combout\ = ( !\KEY[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[1]~input_o\,
	combout => \Entity_DFF|oQ[1]~0_combout\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: FF_X63_Y2_N44
\Entity_DFF|oQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Entity_DFF|oQ[1]~0_combout\,
	clrn => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_DFF|oQ\(1));

-- Location: FF_X63_Y2_N35
\Entity_DFF|oQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \Entity_DFF|oQ\(1),
	clrn => \ALT_INV_KEY[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_DFF|oQ\(2));

-- Location: FF_X63_Y2_N50
\Entity_DFF|oQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \Entity_DFF|oQ\(2),
	clrn => \ALT_INV_KEY[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_DFF|oQ\(3));

-- Location: LABCELL_X63_Y2_N27
\Entity_DFF|oQ[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_DFF|oQ[4]~feeder_combout\ = ( \Entity_DFF|oQ\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Entity_DFF|ALT_INV_oQ\(3),
	combout => \Entity_DFF|oQ[4]~feeder_combout\);

-- Location: FF_X63_Y2_N29
\Entity_DFF|oQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Entity_DFF|oQ[4]~feeder_combout\,
	clrn => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_DFF|oQ\(4));

-- Location: LABCELL_X63_Y2_N18
\Entity_DFF|oQ[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_DFF|oQ[5]~feeder_combout\ = ( \Entity_DFF|oQ\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Entity_DFF|ALT_INV_oQ\(4),
	combout => \Entity_DFF|oQ[5]~feeder_combout\);

-- Location: FF_X63_Y2_N20
\Entity_DFF|oQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Entity_DFF|oQ[5]~feeder_combout\,
	clrn => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_DFF|oQ\(5));

-- Location: LABCELL_X63_Y2_N57
\Entity_DFF|oQ[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_DFF|oQ[6]~feeder_combout\ = ( \Entity_DFF|oQ\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Entity_DFF|ALT_INV_oQ\(5),
	combout => \Entity_DFF|oQ[6]~feeder_combout\);

-- Location: FF_X63_Y2_N59
\Entity_DFF|oQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Entity_DFF|oQ[6]~feeder_combout\,
	clrn => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_DFF|oQ\(6));

-- Location: LABCELL_X63_Y2_N12
\Entity_DFF|oQ[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_DFF|oQ[7]~feeder_combout\ = ( \Entity_DFF|oQ\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Entity_DFF|ALT_INV_oQ\(6),
	combout => \Entity_DFF|oQ[7]~feeder_combout\);

-- Location: FF_X63_Y2_N14
\Entity_DFF|oQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Entity_DFF|oQ[7]~feeder_combout\,
	clrn => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_DFF|oQ\(7));

-- Location: LABCELL_X63_Y2_N36
\Entity_DFF|oQ[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_DFF|oQ[8]~feeder_combout\ = ( \Entity_DFF|oQ\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Entity_DFF|ALT_INV_oQ\(7),
	combout => \Entity_DFF|oQ[8]~feeder_combout\);

-- Location: FF_X63_Y2_N38
\Entity_DFF|oQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Entity_DFF|oQ[8]~feeder_combout\,
	clrn => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_DFF|oQ\(8));

-- Location: LABCELL_X63_Y2_N39
\Entity_DFF|oQ[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Entity_DFF|oQ[9]~feeder_combout\ = ( \Entity_DFF|oQ\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Entity_DFF|ALT_INV_oQ\(8),
	combout => \Entity_DFF|oQ[9]~feeder_combout\);

-- Location: FF_X63_Y2_N40
\Entity_DFF|oQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Entity_DFF|oQ[9]~feeder_combout\,
	clrn => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Entity_DFF|oQ\(9));

-- Location: LABCELL_X45_Y66_N3
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


