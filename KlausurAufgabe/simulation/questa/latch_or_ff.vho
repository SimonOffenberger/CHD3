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

-- DATE "11/26/2025 21:01:10"

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

ENTITY 	latch_or_ff IS
    PORT (
	iclk : IN std_logic;
	id : IN std_logic;
	iq : OUT std_logic
	);
END latch_or_ff;

-- Design Ports Information
-- iq	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- id	=>  Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iclk	=>  Location: PIN_AD30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF latch_or_ff IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iclk : std_logic;
SIGNAL ww_id : std_logic;
SIGNAL ww_iq : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \id~input_o\ : std_logic;
SIGNAL \iclk~input_o\ : std_logic;
SIGNAL \iq$latch~combout\ : std_logic;
SIGNAL \ALT_INV_iclk~input_o\ : std_logic;
SIGNAL \ALT_INV_id~input_o\ : std_logic;
SIGNAL \ALT_INV_iq$latch~combout\ : std_logic;

BEGIN

ww_iclk <= iclk;
ww_id <= id;
iq <= ww_iq;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_iclk~input_o\ <= NOT \iclk~input_o\;
\ALT_INV_id~input_o\ <= NOT \id~input_o\;
\ALT_INV_iq$latch~combout\ <= NOT \iq$latch~combout\;

-- Location: IOOBUF_X89_Y25_N5
\iq~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \iq$latch~combout\,
	devoe => ww_devoe,
	o => ww_iq);

-- Location: IOIBUF_X89_Y25_N21
\id~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_id,
	o => \id~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\iclk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iclk,
	o => \iclk~input_o\);

-- Location: LABCELL_X88_Y25_N30
\iq$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \iq$latch~combout\ = ( \iclk~input_o\ & ( \id~input_o\ ) ) # ( !\iclk~input_o\ & ( \iq$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_id~input_o\,
	datad => \ALT_INV_iq$latch~combout\,
	dataf => \ALT_INV_iclk~input_o\,
	combout => \iq$latch~combout\);

-- Location: LABCELL_X64_Y8_N3
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


