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

-- DATE "10/20/2025 19:18:59"

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

ENTITY 	LargeMuxesOnPCBDe1Soc IS
    PORT (
	GPIO_0 : IN std_logic_vector(15 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END LargeMuxesOnPCBDe1Soc;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- GPIO_0[15]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[8]	=>  Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[9]	=>  Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[10]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[11]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[12]	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[13]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[14]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[4]	=>  Location: PIN_AK16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[5]	=>  Location: PIN_AK18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[6]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[7]	=>  Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[0]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[1]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[3]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF LargeMuxesOnPCBDe1Soc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_GPIO_0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \GPIO_0[2]~input_o\ : std_logic;
SIGNAL \GPIO_0[0]~input_o\ : std_logic;
SIGNAL \GPIO_0[13]~input_o\ : std_logic;
SIGNAL \GPIO_0[1]~input_o\ : std_logic;
SIGNAL \GPIO_0[12]~input_o\ : std_logic;
SIGNAL \GPIO_0[3]~input_o\ : std_logic;
SIGNAL \AllMpx|MpxUniversal|Mux0~2_combout\ : std_logic;
SIGNAL \GPIO_0[15]~input_o\ : std_logic;
SIGNAL \GPIO_0[4]~input_o\ : std_logic;
SIGNAL \GPIO_0[6]~input_o\ : std_logic;
SIGNAL \GPIO_0[5]~input_o\ : std_logic;
SIGNAL \GPIO_0[7]~input_o\ : std_logic;
SIGNAL \AllMpx|MpxUniversal|Mux0~1_combout\ : std_logic;
SIGNAL \GPIO_0[14]~input_o\ : std_logic;
SIGNAL \GPIO_0[9]~input_o\ : std_logic;
SIGNAL \GPIO_0[11]~input_o\ : std_logic;
SIGNAL \GPIO_0[10]~input_o\ : std_logic;
SIGNAL \GPIO_0[8]~input_o\ : std_logic;
SIGNAL \AllMpx|MpxUniversal|Mux0~0_combout\ : std_logic;
SIGNAL \AllMpx|MpxUniversal|Mux0~3_combout\ : std_logic;
SIGNAL \AllMpx|MpxUsingIf|oY~0_combout\ : std_logic;
SIGNAL \AllMpx|MpxUniversal|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \AllMpx|MpxUniversal|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[13]~input_o\ : std_logic;
SIGNAL \AllMpx|MpxUniversal|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO_0[7]~input_o\ : std_logic;

BEGIN

ww_GPIO_0 <= GPIO_0;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\AllMpx|MpxUniversal|ALT_INV_Mux0~1_combout\ <= NOT \AllMpx|MpxUniversal|Mux0~1_combout\;
\AllMpx|MpxUniversal|ALT_INV_Mux0~0_combout\ <= NOT \AllMpx|MpxUniversal|Mux0~0_combout\;
\ALT_INV_GPIO_0[8]~input_o\ <= NOT \GPIO_0[8]~input_o\;
\ALT_INV_GPIO_0[10]~input_o\ <= NOT \GPIO_0[10]~input_o\;
\ALT_INV_GPIO_0[11]~input_o\ <= NOT \GPIO_0[11]~input_o\;
\ALT_INV_GPIO_0[12]~input_o\ <= NOT \GPIO_0[12]~input_o\;
\ALT_INV_GPIO_0[15]~input_o\ <= NOT \GPIO_0[15]~input_o\;
\ALT_INV_GPIO_0[13]~input_o\ <= NOT \GPIO_0[13]~input_o\;
\AllMpx|MpxUniversal|ALT_INV_Mux0~2_combout\ <= NOT \AllMpx|MpxUniversal|Mux0~2_combout\;
\ALT_INV_GPIO_0[9]~input_o\ <= NOT \GPIO_0[9]~input_o\;
\ALT_INV_GPIO_0[14]~input_o\ <= NOT \GPIO_0[14]~input_o\;
\ALT_INV_GPIO_0[4]~input_o\ <= NOT \GPIO_0[4]~input_o\;
\ALT_INV_GPIO_0[5]~input_o\ <= NOT \GPIO_0[5]~input_o\;
\ALT_INV_GPIO_0[6]~input_o\ <= NOT \GPIO_0[6]~input_o\;
\ALT_INV_GPIO_0[0]~input_o\ <= NOT \GPIO_0[0]~input_o\;
\ALT_INV_GPIO_0[2]~input_o\ <= NOT \GPIO_0[2]~input_o\;
\ALT_INV_GPIO_0[3]~input_o\ <= NOT \GPIO_0[3]~input_o\;
\ALT_INV_GPIO_0[1]~input_o\ <= NOT \GPIO_0[1]~input_o\;
\ALT_INV_GPIO_0[7]~input_o\ <= NOT \GPIO_0[7]~input_o\;

-- Location: IOOBUF_X58_Y0_N93
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AllMpx|MpxUniversal|Mux0~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X56_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AllMpx|MpxUsingIf|oY~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X58_Y0_N76
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AllMpx|MpxUniversal|Mux0~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOIBUF_X56_Y0_N1
\GPIO_0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(2),
	o => \GPIO_0[2]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\GPIO_0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(0),
	o => \GPIO_0[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\GPIO_0[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(13),
	o => \GPIO_0[13]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\GPIO_0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(1),
	o => \GPIO_0[1]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\GPIO_0[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(12),
	o => \GPIO_0[12]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\GPIO_0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(3),
	o => \GPIO_0[3]~input_o\);

-- Location: LABCELL_X56_Y1_N42
\AllMpx|MpxUniversal|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AllMpx|MpxUniversal|Mux0~2_combout\ = ( \GPIO_0[12]~input_o\ & ( \GPIO_0[3]~input_o\ & ( (\GPIO_0[1]~input_o\) # (\GPIO_0[13]~input_o\) ) ) ) # ( !\GPIO_0[12]~input_o\ & ( \GPIO_0[3]~input_o\ & ( (!\GPIO_0[13]~input_o\ & ((\GPIO_0[0]~input_o\))) # 
-- (\GPIO_0[13]~input_o\ & (\GPIO_0[2]~input_o\)) ) ) ) # ( \GPIO_0[12]~input_o\ & ( !\GPIO_0[3]~input_o\ & ( (!\GPIO_0[13]~input_o\ & \GPIO_0[1]~input_o\) ) ) ) # ( !\GPIO_0[12]~input_o\ & ( !\GPIO_0[3]~input_o\ & ( (!\GPIO_0[13]~input_o\ & 
-- ((\GPIO_0[0]~input_o\))) # (\GPIO_0[13]~input_o\ & (\GPIO_0[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_GPIO_0[2]~input_o\,
	datab => \ALT_INV_GPIO_0[0]~input_o\,
	datac => \ALT_INV_GPIO_0[13]~input_o\,
	datad => \ALT_INV_GPIO_0[1]~input_o\,
	datae => \ALT_INV_GPIO_0[12]~input_o\,
	dataf => \ALT_INV_GPIO_0[3]~input_o\,
	combout => \AllMpx|MpxUniversal|Mux0~2_combout\);

-- Location: IOIBUF_X50_Y0_N92
\GPIO_0[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(15),
	o => \GPIO_0[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\GPIO_0[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(4),
	o => \GPIO_0[4]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\GPIO_0[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(6),
	o => \GPIO_0[6]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\GPIO_0[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(5),
	o => \GPIO_0[5]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\GPIO_0[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(7),
	o => \GPIO_0[7]~input_o\);

-- Location: LABCELL_X56_Y1_N6
\AllMpx|MpxUniversal|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AllMpx|MpxUniversal|Mux0~1_combout\ = ( \GPIO_0[13]~input_o\ & ( \GPIO_0[7]~input_o\ & ( (\GPIO_0[12]~input_o\) # (\GPIO_0[6]~input_o\) ) ) ) # ( !\GPIO_0[13]~input_o\ & ( \GPIO_0[7]~input_o\ & ( (!\GPIO_0[12]~input_o\ & (\GPIO_0[4]~input_o\)) # 
-- (\GPIO_0[12]~input_o\ & ((\GPIO_0[5]~input_o\))) ) ) ) # ( \GPIO_0[13]~input_o\ & ( !\GPIO_0[7]~input_o\ & ( (\GPIO_0[6]~input_o\ & !\GPIO_0[12]~input_o\) ) ) ) # ( !\GPIO_0[13]~input_o\ & ( !\GPIO_0[7]~input_o\ & ( (!\GPIO_0[12]~input_o\ & 
-- (\GPIO_0[4]~input_o\)) # (\GPIO_0[12]~input_o\ & ((\GPIO_0[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_GPIO_0[4]~input_o\,
	datab => \ALT_INV_GPIO_0[6]~input_o\,
	datac => \ALT_INV_GPIO_0[5]~input_o\,
	datad => \ALT_INV_GPIO_0[12]~input_o\,
	datae => \ALT_INV_GPIO_0[13]~input_o\,
	dataf => \ALT_INV_GPIO_0[7]~input_o\,
	combout => \AllMpx|MpxUniversal|Mux0~1_combout\);

-- Location: IOIBUF_X52_Y0_N52
\GPIO_0[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(14),
	o => \GPIO_0[14]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\GPIO_0[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(9),
	o => \GPIO_0[9]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\GPIO_0[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(11),
	o => \GPIO_0[11]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\GPIO_0[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(10),
	o => \GPIO_0[10]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\GPIO_0[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(8),
	o => \GPIO_0[8]~input_o\);

-- Location: LABCELL_X56_Y1_N30
\AllMpx|MpxUniversal|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AllMpx|MpxUniversal|Mux0~0_combout\ = ( \GPIO_0[12]~input_o\ & ( \GPIO_0[8]~input_o\ & ( (!\GPIO_0[13]~input_o\ & (\GPIO_0[9]~input_o\)) # (\GPIO_0[13]~input_o\ & ((\GPIO_0[11]~input_o\))) ) ) ) # ( !\GPIO_0[12]~input_o\ & ( \GPIO_0[8]~input_o\ & ( 
-- (!\GPIO_0[13]~input_o\) # (\GPIO_0[10]~input_o\) ) ) ) # ( \GPIO_0[12]~input_o\ & ( !\GPIO_0[8]~input_o\ & ( (!\GPIO_0[13]~input_o\ & (\GPIO_0[9]~input_o\)) # (\GPIO_0[13]~input_o\ & ((\GPIO_0[11]~input_o\))) ) ) ) # ( !\GPIO_0[12]~input_o\ & ( 
-- !\GPIO_0[8]~input_o\ & ( (\GPIO_0[13]~input_o\ & \GPIO_0[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_GPIO_0[9]~input_o\,
	datab => \ALT_INV_GPIO_0[11]~input_o\,
	datac => \ALT_INV_GPIO_0[13]~input_o\,
	datad => \ALT_INV_GPIO_0[10]~input_o\,
	datae => \ALT_INV_GPIO_0[12]~input_o\,
	dataf => \ALT_INV_GPIO_0[8]~input_o\,
	combout => \AllMpx|MpxUniversal|Mux0~0_combout\);

-- Location: LABCELL_X56_Y1_N48
\AllMpx|MpxUniversal|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AllMpx|MpxUniversal|Mux0~3_combout\ = ( \GPIO_0[14]~input_o\ & ( \AllMpx|MpxUniversal|Mux0~0_combout\ & ( (\AllMpx|MpxUniversal|Mux0~1_combout\) # (\GPIO_0[15]~input_o\) ) ) ) # ( !\GPIO_0[14]~input_o\ & ( \AllMpx|MpxUniversal|Mux0~0_combout\ & ( 
-- (\GPIO_0[15]~input_o\) # (\AllMpx|MpxUniversal|Mux0~2_combout\) ) ) ) # ( \GPIO_0[14]~input_o\ & ( !\AllMpx|MpxUniversal|Mux0~0_combout\ & ( (!\GPIO_0[15]~input_o\ & \AllMpx|MpxUniversal|Mux0~1_combout\) ) ) ) # ( !\GPIO_0[14]~input_o\ & ( 
-- !\AllMpx|MpxUniversal|Mux0~0_combout\ & ( (\AllMpx|MpxUniversal|Mux0~2_combout\ & !\GPIO_0[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000001111000000111111001111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AllMpx|MpxUniversal|ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_GPIO_0[15]~input_o\,
	datad => \AllMpx|MpxUniversal|ALT_INV_Mux0~1_combout\,
	datae => \ALT_INV_GPIO_0[14]~input_o\,
	dataf => \AllMpx|MpxUniversal|ALT_INV_Mux0~0_combout\,
	combout => \AllMpx|MpxUniversal|Mux0~3_combout\);

-- Location: LABCELL_X56_Y1_N24
\AllMpx|MpxUsingIf|oY~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AllMpx|MpxUsingIf|oY~0_combout\ = ( \GPIO_0[11]~input_o\ & ( \AllMpx|MpxUniversal|Mux0~0_combout\ & ( ((!\GPIO_0[14]~input_o\ & ((\AllMpx|MpxUniversal|Mux0~2_combout\))) # (\GPIO_0[14]~input_o\ & (\AllMpx|MpxUniversal|Mux0~1_combout\))) # 
-- (\GPIO_0[15]~input_o\) ) ) ) # ( !\GPIO_0[11]~input_o\ & ( \AllMpx|MpxUniversal|Mux0~0_combout\ & ( (!\GPIO_0[14]~input_o\ & (((\AllMpx|MpxUniversal|Mux0~2_combout\) # (\GPIO_0[15]~input_o\)))) # (\GPIO_0[14]~input_o\ & 
-- (\AllMpx|MpxUniversal|Mux0~1_combout\ & (!\GPIO_0[15]~input_o\))) ) ) ) # ( \GPIO_0[11]~input_o\ & ( !\AllMpx|MpxUniversal|Mux0~0_combout\ & ( (!\GPIO_0[14]~input_o\ & (((!\GPIO_0[15]~input_o\ & \AllMpx|MpxUniversal|Mux0~2_combout\)))) # 
-- (\GPIO_0[14]~input_o\ & (((\GPIO_0[15]~input_o\)) # (\AllMpx|MpxUniversal|Mux0~1_combout\))) ) ) ) # ( !\GPIO_0[11]~input_o\ & ( !\AllMpx|MpxUniversal|Mux0~0_combout\ & ( (!\GPIO_0[15]~input_o\ & ((!\GPIO_0[14]~input_o\ & 
-- ((\AllMpx|MpxUniversal|Mux0~2_combout\))) # (\GPIO_0[14]~input_o\ & (\AllMpx|MpxUniversal|Mux0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_GPIO_0[14]~input_o\,
	datab => \AllMpx|MpxUniversal|ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_GPIO_0[15]~input_o\,
	datad => \AllMpx|MpxUniversal|ALT_INV_Mux0~2_combout\,
	datae => \ALT_INV_GPIO_0[11]~input_o\,
	dataf => \AllMpx|MpxUniversal|ALT_INV_Mux0~0_combout\,
	combout => \AllMpx|MpxUsingIf|oY~0_combout\);

-- Location: LABCELL_X70_Y7_N3
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


