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

-- DATE "12/15/2025 15:18:23"

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

ENTITY 	Counter IS
    PORT (
	iClk : IN std_logic;
	iEnable : IN std_logic;
	inResetAsync : IN std_logic;
	oCount : BUFFER std_logic_vector(4 DOWNTO 1)
	);
END Counter;

-- Design Ports Information
-- oCount[1]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oCount[2]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oCount[3]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oCount[4]	=>  Location: PIN_AH20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- iClk	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inResetAsync	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iEnable	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_oCount : std_logic_vector(4 DOWNTO 1);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \iClk~input_o\ : std_logic;
SIGNAL \iClk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \oCount[1]~reg0_wirecell_combout\ : std_logic;
SIGNAL \inResetAsync~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~2\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \iEnable~input_o\ : std_logic;
SIGNAL \oCount[2]~reg0_q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \oCount[3]~reg0_q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \oCount[4]~reg0_q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \oCount[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_oCount[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_oCount[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_oCount[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_oCount[1]~reg0_q\ : std_logic;

BEGIN

ww_iClk <= iClk;
ww_iEnable <= iEnable;
ww_inResetAsync <= inResetAsync;
oCount <= ww_oCount;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_oCount[3]~reg0_q\ <= NOT \oCount[3]~reg0_q\;
\ALT_INV_oCount[4]~reg0_q\ <= NOT \oCount[4]~reg0_q\;
\ALT_INV_oCount[2]~reg0_q\ <= NOT \oCount[2]~reg0_q\;
\ALT_INV_oCount[1]~reg0_q\ <= NOT \oCount[1]~reg0_q\;

-- Location: IOOBUF_X56_Y0_N53
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

-- Location: IOOBUF_X56_Y0_N36
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N19
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

-- Location: LABCELL_X56_Y1_N0
\Mod0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_4~22_cout\);

-- Location: LABCELL_X56_Y1_N3
\Mod0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( !\oCount[1]~reg0_q\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_4~2\ = CARRY(( !\oCount[1]~reg0_q\ ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_oCount[1]~reg0_q\,
	cin => \Mod0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~1_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~2\);

-- Location: LABCELL_X56_Y1_N57
\oCount[1]~reg0_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \oCount[1]~reg0_wirecell_combout\ = ( !\oCount[1]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_oCount[1]~reg0_q\,
	combout => \oCount[1]~reg0_wirecell_combout\);

-- Location: IOIBUF_X56_Y0_N1
\inResetAsync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inResetAsync,
	o => \inResetAsync~input_o\);

-- Location: LABCELL_X56_Y1_N6
\Mod0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( !\oCount[1]~reg0_q\ $ (!\oCount[2]~reg0_q\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_4~2\ ))
-- \Mod0|auto_generated|divider|divider|op_4~10\ = CARRY(( !\oCount[1]~reg0_q\ $ (!\oCount[2]~reg0_q\) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_oCount[1]~reg0_q\,
	datad => \ALT_INV_oCount[2]~reg0_q\,
	cin => \Mod0|auto_generated|divider|divider|op_4~2\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~10\);

-- Location: LABCELL_X56_Y1_N42
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( !\oCount[2]~reg0_q\ & ( \oCount[1]~reg0_q\ ) ) # ( \oCount[2]~reg0_q\ & ( !\oCount[1]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_oCount[2]~reg0_q\,
	dataf => \ALT_INV_oCount[1]~reg0_q\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X56_Y0_N18
\iEnable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iEnable,
	o => \iEnable~input_o\);

-- Location: FF_X56_Y1_N8
\oCount[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	asdata => \Add0~0_combout\,
	clrn => \inResetAsync~input_o\,
	sload => \Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \iEnable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oCount[2]~reg0_q\);

-- Location: LABCELL_X56_Y1_N9
\Mod0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( !\oCount[3]~reg0_q\ $ (((!\oCount[1]~reg0_q\) # (!\oCount[2]~reg0_q\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_4~10\ ))
-- \Mod0|auto_generated|divider|divider|op_4~14\ = CARRY(( !\oCount[3]~reg0_q\ $ (((!\oCount[1]~reg0_q\) # (!\oCount[2]~reg0_q\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_oCount[1]~reg0_q\,
	datab => \ALT_INV_oCount[2]~reg0_q\,
	datac => \ALT_INV_oCount[3]~reg0_q\,
	cin => \Mod0|auto_generated|divider|divider|op_4~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~14\);

-- Location: LABCELL_X56_Y1_N39
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( \oCount[1]~reg0_q\ & ( !\oCount[3]~reg0_q\ $ (!\oCount[2]~reg0_q\) ) ) # ( !\oCount[1]~reg0_q\ & ( \oCount[3]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_oCount[3]~reg0_q\,
	datad => \ALT_INV_oCount[2]~reg0_q\,
	dataf => \ALT_INV_oCount[1]~reg0_q\,
	combout => \Add0~1_combout\);

-- Location: FF_X56_Y1_N11
\oCount[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Mod0|auto_generated|divider|divider|op_4~13_sumout\,
	asdata => \Add0~1_combout\,
	clrn => \inResetAsync~input_o\,
	sload => \Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \iEnable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oCount[3]~reg0_q\);

-- Location: LABCELL_X56_Y1_N12
\Mod0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( !\oCount[4]~reg0_q\ $ (((!\oCount[1]~reg0_q\) # ((!\oCount[3]~reg0_q\) # (!\oCount[2]~reg0_q\)))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_4~14\ ))
-- \Mod0|auto_generated|divider|divider|op_4~18\ = CARRY(( !\oCount[4]~reg0_q\ $ (((!\oCount[1]~reg0_q\) # ((!\oCount[3]~reg0_q\) # (!\oCount[2]~reg0_q\)))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_oCount[1]~reg0_q\,
	datab => \ALT_INV_oCount[3]~reg0_q\,
	datac => \ALT_INV_oCount[2]~reg0_q\,
	datad => \ALT_INV_oCount[4]~reg0_q\,
	cin => \Mod0|auto_generated|divider|divider|op_4~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~18\);

-- Location: LABCELL_X56_Y1_N36
\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = ( \oCount[4]~reg0_q\ & ( (!\oCount[3]~reg0_q\) # ((!\oCount[1]~reg0_q\) # (!\oCount[2]~reg0_q\)) ) ) # ( !\oCount[4]~reg0_q\ & ( (\oCount[3]~reg0_q\ & (\oCount[1]~reg0_q\ & \oCount[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_oCount[3]~reg0_q\,
	datab => \ALT_INV_oCount[1]~reg0_q\,
	datac => \ALT_INV_oCount[2]~reg0_q\,
	dataf => \ALT_INV_oCount[4]~reg0_q\,
	combout => \Add0~2_combout\);

-- Location: FF_X56_Y1_N14
\oCount[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Mod0|auto_generated|divider|divider|op_4~17_sumout\,
	asdata => \Add0~2_combout\,
	clrn => \inResetAsync~input_o\,
	sload => \Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \iEnable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oCount[4]~reg0_q\);

-- Location: LABCELL_X56_Y1_N15
\Mod0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_4~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~5_sumout\);

-- Location: FF_X56_Y1_N5
\oCount[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Mod0|auto_generated|divider|divider|op_4~1_sumout\,
	asdata => \oCount[1]~reg0_wirecell_combout\,
	clrn => \inResetAsync~input_o\,
	sload => \Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \iEnable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oCount[1]~reg0_q\);

-- Location: LABCELL_X88_Y9_N0
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


