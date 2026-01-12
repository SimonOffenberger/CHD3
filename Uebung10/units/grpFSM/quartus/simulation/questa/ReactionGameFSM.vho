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

-- DATE "01/08/2026 10:21:47"

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

ENTITY 	ReactionGameFSM IS
    PORT (
	iClk : IN std_logic;
	inResetAsync : IN std_logic;
	iEnable : IN std_logic;
	iA_Sync : IN std_logic;
	iB_Sync : IN std_logic;
	oLEDs : BUFFER std_logic_vector(3 DOWNTO 0);
	oZero : BUFFER std_logic;
	oEnableCounter : BUFFER std_logic
	);
END ReactionGameFSM;

-- Design Ports Information
-- oLEDs[0]	=>  Location: PIN_AD20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oLEDs[1]	=>  Location: PIN_AJ27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oLEDs[2]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oLEDs[3]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oZero	=>  Location: PIN_AK29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oEnableCounter	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- iClk	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inResetAsync	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iEnable	=>  Location: PIN_AK27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iB_Sync	=>  Location: PIN_AH25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iA_Sync	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ReactionGameFSM IS
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
SIGNAL ww_iEnable : std_logic;
SIGNAL ww_iA_Sync : std_logic;
SIGNAL ww_iB_Sync : std_logic;
SIGNAL ww_oLEDs : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_oZero : std_logic;
SIGNAL ww_oEnableCounter : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \iClk~input_o\ : std_logic;
SIGNAL \iClk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \State.Unlocked~0_combout\ : std_logic;
SIGNAL \inResetAsync~input_o\ : std_logic;
SIGNAL \iB_Sync~input_o\ : std_logic;
SIGNAL \iA_Sync~input_o\ : std_logic;
SIGNAL \iEnable~input_o\ : std_logic;
SIGNAL \State~13_combout\ : std_logic;
SIGNAL \State.Unlocked~q\ : std_logic;
SIGNAL \State.CountUpTime~feeder_combout\ : std_logic;
SIGNAL \State~12_combout\ : std_logic;
SIGNAL \State.CountUpTime~q\ : std_logic;
SIGNAL \State.ShowResult~q\ : std_logic;
SIGNAL \State.Locked~0_combout\ : std_logic;
SIGNAL \State.Locked~q\ : std_logic;
SIGNAL \ALT_INV_iB_Sync~input_o\ : std_logic;
SIGNAL \ALT_INV_State.Unlocked~q\ : std_logic;
SIGNAL \ALT_INV_State.ShowResult~q\ : std_logic;
SIGNAL \ALT_INV_State.Locked~q\ : std_logic;
SIGNAL \ALT_INV_iEnable~input_o\ : std_logic;
SIGNAL \ALT_INV_iA_Sync~input_o\ : std_logic;
SIGNAL \ALT_INV_State.CountUpTime~q\ : std_logic;

BEGIN

ww_iClk <= iClk;
ww_inResetAsync <= inResetAsync;
ww_iEnable <= iEnable;
ww_iA_Sync <= iA_Sync;
ww_iB_Sync <= iB_Sync;
oLEDs <= ww_oLEDs;
oZero <= ww_oZero;
oEnableCounter <= ww_oEnableCounter;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_iB_Sync~input_o\ <= NOT \iB_Sync~input_o\;
\ALT_INV_State.Unlocked~q\ <= NOT \State.Unlocked~q\;
\ALT_INV_State.ShowResult~q\ <= NOT \State.ShowResult~q\;
\ALT_INV_State.Locked~q\ <= NOT \State.Locked~q\;
\ALT_INV_iEnable~input_o\ <= NOT \iEnable~input_o\;
\ALT_INV_iA_Sync~input_o\ <= NOT \iA_Sync~input_o\;
\ALT_INV_State.CountUpTime~q\ <= NOT \State.CountUpTime~q\;

-- Location: IOOBUF_X82_Y0_N42
\oLEDs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_State.Locked~q\,
	devoe => ww_devoe,
	o => ww_oLEDs(0));

-- Location: IOOBUF_X80_Y0_N36
\oLEDs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \State.Unlocked~q\,
	devoe => ww_devoe,
	o => ww_oLEDs(1));

-- Location: IOOBUF_X78_Y0_N19
\oLEDs[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \State.CountUpTime~q\,
	devoe => ww_devoe,
	o => ww_oLEDs(2));

-- Location: IOOBUF_X82_Y0_N59
\oLEDs[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \State.ShowResult~q\,
	devoe => ww_devoe,
	o => ww_oLEDs(3));

-- Location: IOOBUF_X82_Y0_N93
\oZero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_State.Locked~q\,
	devoe => ww_devoe,
	o => ww_oZero);

-- Location: IOOBUF_X78_Y0_N36
\oEnableCounter~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \State.CountUpTime~q\,
	devoe => ww_devoe,
	o => ww_oEnableCounter);

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

-- Location: LABCELL_X80_Y1_N57
\State.Unlocked~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State.Unlocked~0_combout\ = ( !\State.Locked~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_State.Locked~q\,
	combout => \State.Unlocked~0_combout\);

-- Location: IOIBUF_X80_Y0_N1
\inResetAsync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inResetAsync,
	o => \inResetAsync~input_o\);

-- Location: IOIBUF_X78_Y0_N52
\iB_Sync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB_Sync,
	o => \iB_Sync~input_o\);

-- Location: IOIBUF_X80_Y0_N18
\iA_Sync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA_Sync,
	o => \iA_Sync~input_o\);

-- Location: IOIBUF_X80_Y0_N52
\iEnable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iEnable,
	o => \iEnable~input_o\);

-- Location: LABCELL_X80_Y1_N0
\State~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~13_combout\ = ( \State.Unlocked~q\ & ( \State.ShowResult~q\ & ( (\iB_Sync~input_o\ & \iEnable~input_o\) ) ) ) # ( !\State.Unlocked~q\ & ( \State.ShowResult~q\ & ( (\iB_Sync~input_o\ & \iEnable~input_o\) ) ) ) # ( \State.Unlocked~q\ & ( 
-- !\State.ShowResult~q\ & ( (\iB_Sync~input_o\ & \iEnable~input_o\) ) ) ) # ( !\State.Unlocked~q\ & ( !\State.ShowResult~q\ & ( (\iA_Sync~input_o\ & \iEnable~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_iB_Sync~input_o\,
	datac => \ALT_INV_iA_Sync~input_o\,
	datad => \ALT_INV_iEnable~input_o\,
	datae => \ALT_INV_State.Unlocked~q\,
	dataf => \ALT_INV_State.ShowResult~q\,
	combout => \State~13_combout\);

-- Location: FF_X80_Y1_N59
\State.Unlocked\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \State.Unlocked~0_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \State~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Unlocked~q\);

-- Location: LABCELL_X80_Y1_N33
\State.CountUpTime~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \State.CountUpTime~feeder_combout\ = ( \State.Unlocked~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_State.Unlocked~q\,
	combout => \State.CountUpTime~feeder_combout\);

-- Location: LABCELL_X80_Y1_N18
\State~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~12_combout\ = ( \State.Locked~q\ & ( \State.CountUpTime~q\ & ( (\iA_Sync~input_o\ & \iEnable~input_o\) ) ) ) # ( !\State.Locked~q\ & ( \State.CountUpTime~q\ & ( (\iA_Sync~input_o\ & \iEnable~input_o\) ) ) ) # ( \State.Locked~q\ & ( 
-- !\State.CountUpTime~q\ & ( (\iB_Sync~input_o\ & \iEnable~input_o\) ) ) ) # ( !\State.Locked~q\ & ( !\State.CountUpTime~q\ & ( (\iA_Sync~input_o\ & \iEnable~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000011001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_iB_Sync~input_o\,
	datac => \ALT_INV_iA_Sync~input_o\,
	datad => \ALT_INV_iEnable~input_o\,
	datae => \ALT_INV_State.Locked~q\,
	dataf => \ALT_INV_State.CountUpTime~q\,
	combout => \State~12_combout\);

-- Location: FF_X80_Y1_N35
\State.CountUpTime\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \State.CountUpTime~feeder_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \State~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.CountUpTime~q\);

-- Location: FF_X80_Y1_N44
\State.ShowResult\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	asdata => \State.CountUpTime~q\,
	clrn => \inResetAsync~input_o\,
	sload => VCC,
	ena => \State~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.ShowResult~q\);

-- Location: LABCELL_X80_Y1_N36
\State.Locked~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State.Locked~0_combout\ = ( !\State.ShowResult~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_State.ShowResult~q\,
	combout => \State.Locked~0_combout\);

-- Location: FF_X80_Y1_N38
\State.Locked\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \State.Locked~0_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \State~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Locked~q\);

-- Location: LABCELL_X13_Y37_N3
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


