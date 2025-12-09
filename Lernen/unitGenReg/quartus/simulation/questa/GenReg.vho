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

-- DATE "12/08/2025 17:19:40"

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

ENTITY 	GenReg IS
    PORT (
	iClk : IN std_logic;
	inResetAsync : IN std_logic;
	iD : IN std_logic_vector(7 DOWNTO 0);
	oQ : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END GenReg;

-- Design Ports Information
-- oQ[0]	=>  Location: PIN_AJ27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[1]	=>  Location: PIN_AH25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[2]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[3]	=>  Location: PIN_AK27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[4]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[5]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[6]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[7]	=>  Location: PIN_AE29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[8]	=>  Location: PIN_AJ24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[9]	=>  Location: PIN_AJ25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[10]	=>  Location: PIN_AD20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[11]	=>  Location: PIN_AK29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[12]	=>  Location: PIN_AA28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[13]	=>  Location: PIN_AD29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[14]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oQ[15]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- iD[6]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iD[7]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iClk	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inResetAsync	=>  Location: PIN_AK28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iD[0]	=>  Location: PIN_AB30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iD[1]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iD[4]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iD[5]	=>  Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iD[2]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iD[3]	=>  Location: PIN_AK23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF GenReg IS
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
SIGNAL ww_inResetAsync : std_logic;
SIGNAL ww_iD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_oQ : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \iD[6]~input_o\ : std_logic;
SIGNAL \iD[7]~input_o\ : std_logic;
SIGNAL \iClk~input_o\ : std_logic;
SIGNAL \iClk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inResetAsync~input_o\ : std_logic;
SIGNAL \oQ[2]~reg0_q\ : std_logic;
SIGNAL \oQ[3]~reg0feeder_combout\ : std_logic;
SIGNAL \oQ[3]~reg0_q\ : std_logic;
SIGNAL \iD[0]~input_o\ : std_logic;
SIGNAL \oQ[6]$latch~combout\ : std_logic;
SIGNAL \iD[1]~input_o\ : std_logic;
SIGNAL \oQ[7]$latch~combout\ : std_logic;
SIGNAL \iD[4]~input_o\ : std_logic;
SIGNAL \oQ[8]~reg0feeder_combout\ : std_logic;
SIGNAL \oQ[8]~reg0_q\ : std_logic;
SIGNAL \iD[5]~input_o\ : std_logic;
SIGNAL \oQ[9]~reg0_q\ : std_logic;
SIGNAL \oQ[10]~reg0_q\ : std_logic;
SIGNAL \oQ[11]~reg0feeder_combout\ : std_logic;
SIGNAL \oQ[11]~reg0_q\ : std_logic;
SIGNAL \oQ[12]~reg0feeder_combout\ : std_logic;
SIGNAL \oQ[12]~reg0_q\ : std_logic;
SIGNAL \oQ[13]~reg0_q\ : std_logic;
SIGNAL \iD[2]~input_o\ : std_logic;
SIGNAL \oQ[14]~reg0feeder_combout\ : std_logic;
SIGNAL \oQ[14]~reg0_q\ : std_logic;
SIGNAL \iD[3]~input_o\ : std_logic;
SIGNAL \oQ[15]~reg0feeder_combout\ : std_logic;
SIGNAL \oQ[15]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_oQ[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_oQ[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_oQ[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_iClk~input_o\ : std_logic;
SIGNAL \ALT_INV_oQ[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_iD[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_iD[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_iD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_iD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_iClk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_iD[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_iD[1]~input_o\ : std_logic;

BEGIN

ww_iClk <= iClk;
ww_inResetAsync <= inResetAsync;
ww_iD <= iD;
oQ <= ww_oQ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_oQ[2]~reg0_q\ <= NOT \oQ[2]~reg0_q\;
\ALT_INV_oQ[6]$latch~combout\ <= NOT \oQ[6]$latch~combout\;
\ALT_INV_oQ[3]~reg0_q\ <= NOT \oQ[3]~reg0_q\;
\ALT_INV_iClk~input_o\ <= NOT \iClk~input_o\;
\ALT_INV_oQ[7]$latch~combout\ <= NOT \oQ[7]$latch~combout\;
\ALT_INV_iD[3]~input_o\ <= NOT \iD[3]~input_o\;
\ALT_INV_iD[7]~input_o\ <= NOT \iD[7]~input_o\;
\ALT_INV_iD[0]~input_o\ <= NOT \iD[0]~input_o\;
\ALT_INV_iD[2]~input_o\ <= NOT \iD[2]~input_o\;
\ALT_INV_iClk~inputCLKENA0_outclk\ <= NOT \iClk~inputCLKENA0_outclk\;
\ALT_INV_iD[4]~input_o\ <= NOT \iD[4]~input_o\;
\ALT_INV_iD[1]~input_o\ <= NOT \iD[1]~input_o\;

-- Location: IOOBUF_X80_Y0_N36
\oQ[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \iD[6]~input_o\,
	devoe => ww_devoe,
	o => ww_oQ(0));

-- Location: IOOBUF_X78_Y0_N53
\oQ[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \iD[7]~input_o\,
	devoe => ww_devoe,
	o => ww_oQ(1));

-- Location: IOOBUF_X82_Y0_N59
\oQ[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_oQ[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oQ(2));

-- Location: IOOBUF_X80_Y0_N53
\oQ[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_oQ[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oQ(3));

-- Location: IOOBUF_X14_Y81_N2
\oQ[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oQ(4));

-- Location: IOOBUF_X6_Y0_N19
\oQ[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oQ(5));

-- Location: IOOBUF_X89_Y23_N5
\oQ[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oQ[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_oQ(6));

-- Location: IOOBUF_X89_Y23_N39
\oQ[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oQ[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_oQ(7));

-- Location: IOOBUF_X74_Y0_N76
\oQ[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oQ[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oQ(8));

-- Location: IOOBUF_X74_Y0_N93
\oQ[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oQ[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oQ(9));

-- Location: IOOBUF_X82_Y0_N42
\oQ[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oQ[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oQ(10));

-- Location: IOOBUF_X82_Y0_N93
\oQ[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oQ[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oQ(11));

-- Location: IOOBUF_X89_Y21_N56
\oQ[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oQ[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oQ(12));

-- Location: IOOBUF_X89_Y23_N56
\oQ[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oQ[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oQ(13));

-- Location: IOOBUF_X88_Y0_N20
\oQ[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oQ[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oQ(14));

-- Location: IOOBUF_X72_Y0_N2
\oQ[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oQ[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_oQ(15));

-- Location: IOIBUF_X80_Y0_N1
\iD[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iD(6),
	o => \iD[6]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\iD[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iD(7),
	o => \iD[7]~input_o\);

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

-- Location: IOIBUF_X82_Y0_N75
\inResetAsync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inResetAsync,
	o => \inResetAsync~input_o\);

-- Location: FF_X81_Y1_N1
\oQ[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iClk~inputCLKENA0_outclk\,
	asdata => \iD[6]~input_o\,
	clrn => \inResetAsync~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oQ[2]~reg0_q\);

-- Location: LABCELL_X81_Y1_N39
\oQ[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \oQ[3]~reg0feeder_combout\ = ( \iD[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_iD[7]~input_o\,
	combout => \oQ[3]~reg0feeder_combout\);

-- Location: FF_X81_Y1_N41
\oQ[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iClk~inputCLKENA0_outclk\,
	d => \oQ[3]~reg0feeder_combout\,
	clrn => \inResetAsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oQ[3]~reg0_q\);

-- Location: IOIBUF_X89_Y21_N4
\iD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iD(0),
	o => \iD[0]~input_o\);

-- Location: LABCELL_X88_Y23_N6
\oQ[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \oQ[6]$latch~combout\ = ( \iClk~input_o\ & ( \oQ[6]$latch~combout\ & ( !\iD[0]~input_o\ ) ) ) # ( !\iClk~input_o\ & ( \oQ[6]$latch~combout\ ) ) # ( \iClk~input_o\ & ( !\oQ[6]$latch~combout\ & ( !\iD[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_iD[0]~input_o\,
	datae => \ALT_INV_iClk~input_o\,
	dataf => \ALT_INV_oQ[6]$latch~combout\,
	combout => \oQ[6]$latch~combout\);

-- Location: IOIBUF_X89_Y21_N38
\iD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iD(1),
	o => \iD[1]~input_o\);

-- Location: LABCELL_X88_Y23_N12
\oQ[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \oQ[7]$latch~combout\ = ( \iClk~input_o\ & ( \oQ[7]$latch~combout\ & ( !\iD[1]~input_o\ ) ) ) # ( !\iClk~input_o\ & ( \oQ[7]$latch~combout\ ) ) # ( \iClk~input_o\ & ( !\oQ[7]$latch~combout\ & ( !\iD[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_iD[1]~input_o\,
	datae => \ALT_INV_iClk~input_o\,
	dataf => \ALT_INV_oQ[7]$latch~combout\,
	combout => \oQ[7]$latch~combout\);

-- Location: IOIBUF_X74_Y0_N41
\iD[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iD(4),
	o => \iD[4]~input_o\);

-- Location: LABCELL_X74_Y1_N0
\oQ[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \oQ[8]~reg0feeder_combout\ = ( \iD[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_iD[4]~input_o\,
	combout => \oQ[8]~reg0feeder_combout\);

-- Location: FF_X74_Y1_N1
\oQ[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \oQ[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oQ[8]~reg0_q\);

-- Location: IOIBUF_X74_Y0_N58
\iD[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iD(5),
	o => \iD[5]~input_o\);

-- Location: FF_X74_Y1_N8
\oQ[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	asdata => \iD[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oQ[9]~reg0_q\);

-- Location: FF_X81_Y1_N43
\oQ[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	asdata => \iD[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oQ[10]~reg0_q\);

-- Location: LABCELL_X81_Y1_N51
\oQ[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \oQ[11]~reg0feeder_combout\ = ( \iD[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_iD[7]~input_o\,
	combout => \oQ[11]~reg0feeder_combout\);

-- Location: FF_X81_Y1_N53
\oQ[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \oQ[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oQ[11]~reg0_q\);

-- Location: LABCELL_X88_Y21_N33
\oQ[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \oQ[12]~reg0feeder_combout\ = ( \iD[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_iD[0]~input_o\,
	combout => \oQ[12]~reg0feeder_combout\);

-- Location: FF_X88_Y21_N34
\oQ[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \oQ[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oQ[12]~reg0_q\);

-- Location: FF_X88_Y23_N34
\oQ[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	asdata => \iD[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oQ[13]~reg0_q\);

-- Location: IOIBUF_X88_Y0_N2
\iD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iD(2),
	o => \iD[2]~input_o\);

-- Location: LABCELL_X88_Y1_N0
\oQ[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \oQ[14]~reg0feeder_combout\ = ( \iD[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_iD[2]~input_o\,
	combout => \oQ[14]~reg0feeder_combout\);

-- Location: FF_X88_Y1_N2
\oQ[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \oQ[14]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oQ[14]~reg0_q\);

-- Location: IOIBUF_X72_Y0_N35
\iD[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iD(3),
	o => \iD[3]~input_o\);

-- Location: MLABCELL_X72_Y1_N30
\oQ[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \oQ[15]~reg0feeder_combout\ = ( \iD[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_iD[3]~input_o\,
	combout => \oQ[15]~reg0feeder_combout\);

-- Location: FF_X72_Y1_N32
\oQ[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \oQ[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oQ[15]~reg0_q\);

-- Location: LABCELL_X40_Y13_N0
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


