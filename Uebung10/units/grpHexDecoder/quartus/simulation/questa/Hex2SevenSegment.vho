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

-- DATE "01/08/2026 11:20:15"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Hex2SevenSegment IS
    PORT (
	iHexValue : IN std_logic_vector(3 DOWNTO 0);
	o7SegCode : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Hex2SevenSegment;

-- Design Ports Information
-- o7SegCode[0]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SegCode[1]	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SegCode[2]	=>  Location: PIN_AB30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SegCode[3]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SegCode[4]	=>  Location: PIN_AA28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SegCode[5]	=>  Location: PIN_AA30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SegCode[6]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- iHexValue[0]	=>  Location: PIN_AD29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iHexValue[1]	=>  Location: PIN_AC29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iHexValue[2]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iHexValue[3]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Hex2SevenSegment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iHexValue : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o7SegCode : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \iHexValue[0]~input_o\ : std_logic;
SIGNAL \iHexValue[3]~input_o\ : std_logic;
SIGNAL \iHexValue[2]~input_o\ : std_logic;
SIGNAL \iHexValue[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_iHexValue[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_iHexValue[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_iHexValue[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_iHexValue[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

ww_iHexValue <= iHexValue;
o7SegCode <= ww_o7SegCode;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_iHexValue[0]~input_o\ <= NOT \iHexValue[0]~input_o\;
\ALT_INV_iHexValue[2]~input_o\ <= NOT \iHexValue[2]~input_o\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_iHexValue[1]~input_o\ <= NOT \iHexValue[1]~input_o\;
\ALT_INV_iHexValue[3]~input_o\ <= NOT \iHexValue[3]~input_o\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;

-- Location: IOOBUF_X89_Y20_N45
\o7SegCode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_o7SegCode(0));

-- Location: IOOBUF_X89_Y23_N22
\o7SegCode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_o7SegCode(1));

-- Location: IOOBUF_X89_Y21_N5
\o7SegCode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_o7SegCode(2));

-- Location: IOOBUF_X89_Y21_N39
\o7SegCode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_o7SegCode(3));

-- Location: IOOBUF_X89_Y21_N56
\o7SegCode[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_o7SegCode(4));

-- Location: IOOBUF_X89_Y21_N22
\o7SegCode[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_o7SegCode(5));

-- Location: IOOBUF_X89_Y23_N5
\o7SegCode[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_o7SegCode(6));

-- Location: IOIBUF_X89_Y23_N55
\iHexValue[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iHexValue(0),
	o => \iHexValue[0]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\iHexValue[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iHexValue(3),
	o => \iHexValue[3]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\iHexValue[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iHexValue(2),
	o => \iHexValue[2]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\iHexValue[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iHexValue(1),
	o => \iHexValue[1]~input_o\);

-- Location: LABCELL_X88_Y21_N0
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \iHexValue[1]~input_o\ & ( (\iHexValue[0]~input_o\ & (\iHexValue[3]~input_o\ & !\iHexValue[2]~input_o\)) ) ) # ( !\iHexValue[1]~input_o\ & ( (!\iHexValue[0]~input_o\ & (!\iHexValue[3]~input_o\ & \iHexValue[2]~input_o\)) # 
-- (\iHexValue[0]~input_o\ & (!\iHexValue[3]~input_o\ $ (\iHexValue[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001000100000001000001001001010010010001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iHexValue[0]~input_o\,
	datab => \ALT_INV_iHexValue[3]~input_o\,
	datac => \ALT_INV_iHexValue[2]~input_o\,
	datae => \ALT_INV_iHexValue[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X88_Y21_N9
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \iHexValue[1]~input_o\ & ( (!\iHexValue[0]~input_o\ & (\iHexValue[2]~input_o\)) # (\iHexValue[0]~input_o\ & ((\iHexValue[3]~input_o\))) ) ) # ( !\iHexValue[1]~input_o\ & ( (\iHexValue[2]~input_o\ & (!\iHexValue[3]~input_o\ $ 
-- (!\iHexValue[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000010101010000111100000101010100000101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iHexValue[2]~input_o\,
	datac => \ALT_INV_iHexValue[3]~input_o\,
	datad => \ALT_INV_iHexValue[0]~input_o\,
	datae => \ALT_INV_iHexValue[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y21_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \iHexValue[1]~input_o\ & ( (!\iHexValue[3]~input_o\ & (!\iHexValue[0]~input_o\ & !\iHexValue[2]~input_o\)) # (\iHexValue[3]~input_o\ & ((\iHexValue[2]~input_o\))) ) ) # ( !\iHexValue[1]~input_o\ & ( (!\iHexValue[0]~input_o\ & 
-- (\iHexValue[3]~input_o\ & \iHexValue[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010100000111000001100000010000000101000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iHexValue[0]~input_o\,
	datab => \ALT_INV_iHexValue[3]~input_o\,
	datac => \ALT_INV_iHexValue[2]~input_o\,
	datae => \ALT_INV_iHexValue[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y21_N21
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \iHexValue[1]~input_o\ & ( (!\iHexValue[2]~input_o\ & (\iHexValue[3]~input_o\ & !\iHexValue[0]~input_o\)) # (\iHexValue[2]~input_o\ & ((\iHexValue[0]~input_o\))) ) ) # ( !\iHexValue[1]~input_o\ & ( (!\iHexValue[3]~input_o\ & 
-- (!\iHexValue[2]~input_o\ $ (!\iHexValue[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000000010100101010101010000101000000000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iHexValue[2]~input_o\,
	datac => \ALT_INV_iHexValue[3]~input_o\,
	datad => \ALT_INV_iHexValue[0]~input_o\,
	datae => \ALT_INV_iHexValue[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X88_Y21_N24
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \iHexValue[1]~input_o\ & ( (\iHexValue[0]~input_o\ & !\iHexValue[3]~input_o\) ) ) # ( !\iHexValue[1]~input_o\ & ( (!\iHexValue[2]~input_o\ & (\iHexValue[0]~input_o\)) # (\iHexValue[2]~input_o\ & ((!\iHexValue[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001011100010001000100010001011100010111000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iHexValue[0]~input_o\,
	datab => \ALT_INV_iHexValue[3]~input_o\,
	datac => \ALT_INV_iHexValue[2]~input_o\,
	datae => \ALT_INV_iHexValue[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y21_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \iHexValue[1]~input_o\ & ( (!\iHexValue[3]~input_o\ & ((!\iHexValue[2]~input_o\) # (\iHexValue[0]~input_o\))) ) ) # ( !\iHexValue[1]~input_o\ & ( (\iHexValue[0]~input_o\ & (!\iHexValue[2]~input_o\ $ (\iHexValue[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101101000001111000000000000101001011010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iHexValue[2]~input_o\,
	datac => \ALT_INV_iHexValue[3]~input_o\,
	datad => \ALT_INV_iHexValue[0]~input_o\,
	datae => \ALT_INV_iHexValue[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y21_N36
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \iHexValue[1]~input_o\ & ( (!\iHexValue[0]~input_o\) # ((!\iHexValue[2]~input_o\) # (\iHexValue[3]~input_o\)) ) ) # ( !\iHexValue[1]~input_o\ & ( (!\iHexValue[3]~input_o\ & ((\iHexValue[2]~input_o\))) # (\iHexValue[3]~input_o\ & 
-- ((!\iHexValue[2]~input_o\) # (\iHexValue[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110100111101111110111111101100111101001111011111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iHexValue[0]~input_o\,
	datab => \ALT_INV_iHexValue[3]~input_o\,
	datac => \ALT_INV_iHexValue[2]~input_o\,
	datae => \ALT_INV_iHexValue[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X18_Y40_N3
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


