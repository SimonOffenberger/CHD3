-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Standard Edition"

-- DATE "10/06/2022 09:47:08"

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

ENTITY 	HelloOnPcbDe1Soc IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY0 : IN std_logic;
	SW : IN IEEE.STD_LOGIC_1164.std_ulogic_vector(9 DOWNTO 0);
	HEX0 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(6 DOWNTO 0);
	HEX1 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(6 DOWNTO 0);
	LEDR : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(9 DOWNTO 0)
	);
END HelloOnPcbDe1Soc;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY0	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF HelloOnPcbDe1Soc IS
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
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \TheHelloDE1|TheHex0|Mux6~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|TheHex0|Mux5~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|TheHex0|Mux4~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|TheHex0|Mux3~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|TheHex0|Mux2~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|TheHex0|Mux1~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|TheHex0|Mux0~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \TheHelloDE1|TheHex1|Mux6~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|TheHex1|Mux5~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|TheHex1|Mux4~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|TheHex1|Mux3~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|TheHex1|Mux2~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|TheHex1|Mux1~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|TheHex1|Mux0~0_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \TheHelloDE1|Add0~101_sumout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \TheHelloDE1|Add0~102\ : std_logic;
SIGNAL \TheHelloDE1|Add0~97_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~98\ : std_logic;
SIGNAL \TheHelloDE1|Add0~93_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~94\ : std_logic;
SIGNAL \TheHelloDE1|Add0~89_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~90\ : std_logic;
SIGNAL \TheHelloDE1|Add0~85_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~86\ : std_logic;
SIGNAL \TheHelloDE1|Add0~81_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~82\ : std_logic;
SIGNAL \TheHelloDE1|Add0~77_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~78\ : std_logic;
SIGNAL \TheHelloDE1|Add0~25_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~26\ : std_logic;
SIGNAL \TheHelloDE1|Add0~21_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~22\ : std_logic;
SIGNAL \TheHelloDE1|Add0~17_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~18\ : std_logic;
SIGNAL \TheHelloDE1|Add0~13_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~14\ : std_logic;
SIGNAL \TheHelloDE1|Add0~9_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~10\ : std_logic;
SIGNAL \TheHelloDE1|Add0~5_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~6\ : std_logic;
SIGNAL \TheHelloDE1|Add0~45_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~46\ : std_logic;
SIGNAL \TheHelloDE1|Add0~41_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~42\ : std_logic;
SIGNAL \TheHelloDE1|Add0~57_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~58\ : std_logic;
SIGNAL \TheHelloDE1|Add0~37_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~38\ : std_logic;
SIGNAL \TheHelloDE1|Add0~33_sumout\ : std_logic;
SIGNAL \TheHelloDE1|cnt[17]~DUPLICATE_q\ : std_logic;
SIGNAL \TheHelloDE1|Add0~34\ : std_logic;
SIGNAL \TheHelloDE1|Add0~29_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~30\ : std_logic;
SIGNAL \TheHelloDE1|Add0~53_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~54\ : std_logic;
SIGNAL \TheHelloDE1|Add0~49_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~50\ : std_logic;
SIGNAL \TheHelloDE1|Add0~65_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~66\ : std_logic;
SIGNAL \TheHelloDE1|Add0~61_sumout\ : std_logic;
SIGNAL \TheHelloDE1|LessThan0~3_combout\ : std_logic;
SIGNAL \TheHelloDE1|LessThan0~2_combout\ : std_logic;
SIGNAL \TheHelloDE1|LessThan0~1_combout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~62\ : std_logic;
SIGNAL \TheHelloDE1|Add0~1_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~2\ : std_logic;
SIGNAL \TheHelloDE1|Add0~73_sumout\ : std_logic;
SIGNAL \TheHelloDE1|Add0~74\ : std_logic;
SIGNAL \TheHelloDE1|Add0~69_sumout\ : std_logic;
SIGNAL \TheHelloDE1|LessThan0~4_combout\ : std_logic;
SIGNAL \TheHelloDE1|cnt[12]~DUPLICATE_q\ : std_logic;
SIGNAL \TheHelloDE1|LessThan0~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|LessThan0~5_combout\ : std_logic;
SIGNAL \TheHelloDE1|led_status~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|led_status~q\ : std_logic;
SIGNAL \TheHelloDE1|cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \TheHelloDE1|ALT_INV_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \TheHelloDE1|ALT_INV_cnt[17]~DUPLICATE_q\ : std_logic;
SIGNAL \TheHelloDE1|ALT_INV_cnt[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \TheHelloDE1|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \TheHelloDE1|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \TheHelloDE1|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \TheHelloDE1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \TheHelloDE1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \TheHelloDE1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|ALT_INV_led_status~q\ : std_logic;
SIGNAL \TheHelloDE1|TheHex1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \TheHelloDE1|TheHex0|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY0 <= KEY0;
ww_SW <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(SW);
HEX0 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_HEX0);
HEX1 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_HEX1);
LEDR <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_LEDR);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\TheHelloDE1|ALT_INV_cnt\(24) <= NOT \TheHelloDE1|cnt\(24);
\TheHelloDE1|ALT_INV_cnt\(25) <= NOT \TheHelloDE1|cnt\(25);
\TheHelloDE1|ALT_INV_cnt\(21) <= NOT \TheHelloDE1|cnt\(21);
\TheHelloDE1|ALT_INV_cnt\(22) <= NOT \TheHelloDE1|cnt\(22);
\TheHelloDE1|ALT_INV_cnt\(15) <= NOT \TheHelloDE1|cnt\(15);
\TheHelloDE1|ALT_INV_cnt\(19) <= NOT \TheHelloDE1|cnt\(19);
\TheHelloDE1|ALT_INV_cnt\(20) <= NOT \TheHelloDE1|cnt\(20);
\TheHelloDE1|ALT_INV_cnt\(13) <= NOT \TheHelloDE1|cnt\(13);
\TheHelloDE1|ALT_INV_cnt\(14) <= NOT \TheHelloDE1|cnt\(14);
\TheHelloDE1|ALT_INV_cnt\(16) <= NOT \TheHelloDE1|cnt\(16);
\TheHelloDE1|ALT_INV_cnt\(17) <= NOT \TheHelloDE1|cnt\(17);
\TheHelloDE1|ALT_INV_cnt\(18) <= NOT \TheHelloDE1|cnt\(18);
\TheHelloDE1|ALT_INV_cnt\(7) <= NOT \TheHelloDE1|cnt\(7);
\TheHelloDE1|ALT_INV_cnt\(8) <= NOT \TheHelloDE1|cnt\(8);
\TheHelloDE1|ALT_INV_cnt\(9) <= NOT \TheHelloDE1|cnt\(9);
\TheHelloDE1|ALT_INV_cnt\(10) <= NOT \TheHelloDE1|cnt\(10);
\TheHelloDE1|ALT_INV_cnt\(11) <= NOT \TheHelloDE1|cnt\(11);
\TheHelloDE1|ALT_INV_cnt\(12) <= NOT \TheHelloDE1|cnt\(12);
\TheHelloDE1|ALT_INV_cnt\(23) <= NOT \TheHelloDE1|cnt\(23);
\TheHelloDE1|ALT_INV_cnt[17]~DUPLICATE_q\ <= NOT \TheHelloDE1|cnt[17]~DUPLICATE_q\;
\TheHelloDE1|ALT_INV_cnt[12]~DUPLICATE_q\ <= NOT \TheHelloDE1|cnt[12]~DUPLICATE_q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\TheHelloDE1|ALT_INV_LessThan0~5_combout\ <= NOT \TheHelloDE1|LessThan0~5_combout\;
\TheHelloDE1|ALT_INV_LessThan0~4_combout\ <= NOT \TheHelloDE1|LessThan0~4_combout\;
\TheHelloDE1|ALT_INV_LessThan0~3_combout\ <= NOT \TheHelloDE1|LessThan0~3_combout\;
\TheHelloDE1|ALT_INV_LessThan0~2_combout\ <= NOT \TheHelloDE1|LessThan0~2_combout\;
\TheHelloDE1|ALT_INV_LessThan0~1_combout\ <= NOT \TheHelloDE1|LessThan0~1_combout\;
\TheHelloDE1|ALT_INV_LessThan0~0_combout\ <= NOT \TheHelloDE1|LessThan0~0_combout\;
\TheHelloDE1|ALT_INV_led_status~q\ <= NOT \TheHelloDE1|led_status~q\;
\TheHelloDE1|TheHex1|ALT_INV_Mux0~0_combout\ <= NOT \TheHelloDE1|TheHex1|Mux0~0_combout\;
\TheHelloDE1|TheHex0|ALT_INV_Mux0~0_combout\ <= NOT \TheHelloDE1|TheHex0|Mux0~0_combout\;
\TheHelloDE1|ALT_INV_cnt\(0) <= NOT \TheHelloDE1|cnt\(0);
\TheHelloDE1|ALT_INV_cnt\(1) <= NOT \TheHelloDE1|cnt\(1);
\TheHelloDE1|ALT_INV_cnt\(2) <= NOT \TheHelloDE1|cnt\(2);
\TheHelloDE1|ALT_INV_cnt\(3) <= NOT \TheHelloDE1|cnt\(3);
\TheHelloDE1|ALT_INV_cnt\(4) <= NOT \TheHelloDE1|cnt\(4);
\TheHelloDE1|ALT_INV_cnt\(5) <= NOT \TheHelloDE1|cnt\(5);
\TheHelloDE1|ALT_INV_cnt\(6) <= NOT \TheHelloDE1|cnt\(6);

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|TheHex1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
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
	i => \SW[1]~input_o\,
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
	i => \SW[2]~input_o\,
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
	i => \SW[3]~input_o\,
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
	i => \SW[4]~input_o\,
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
	i => \SW[5]~input_o\,
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
	i => \SW[6]~input_o\,
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
	i => \SW[7]~input_o\,
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
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TheHelloDE1|led_status~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X88_Y4_N33
\TheHelloDE1|TheHex0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex0|Mux6~0_combout\ = ( \SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\ & \SW[0]~input_o\) ) ) ) # ( \SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\ & \SW[0]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( !\SW[1]~input_o\ & 
-- ( !\SW[2]~input_o\ $ (!\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010000000000101010100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \TheHelloDE1|TheHex0|Mux6~0_combout\);

-- Location: LABCELL_X88_Y4_N36
\TheHelloDE1|TheHex0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex0|Mux5~0_combout\ = ( \SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (\SW[2]~input_o\) # (\SW[0]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\ & \SW[2]~input_o\) ) ) ) # ( \SW[3]~input_o\ & ( !\SW[1]~input_o\ & 
-- ( (!\SW[0]~input_o\ & \SW[2]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[0]~input_o\ & \SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \TheHelloDE1|TheHex0|Mux5~0_combout\);

-- Location: LABCELL_X88_Y4_N45
\TheHelloDE1|TheHex0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex0|Mux4~0_combout\ = ( \SW[3]~input_o\ & ( \SW[1]~input_o\ & ( \SW[2]~input_o\ ) ) ) # ( !\SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\ & !\SW[0]~input_o\) ) ) ) # ( \SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\ & 
-- !\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000010101010000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \TheHelloDE1|TheHex0|Mux4~0_combout\);

-- Location: LABCELL_X88_Y4_N18
\TheHelloDE1|TheHex0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex0|Mux3~0_combout\ = ( \SW[3]~input_o\ & ( \SW[1]~input_o\ & ( !\SW[0]~input_o\ $ (\SW[2]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (\SW[0]~input_o\ & \SW[2]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( !\SW[1]~input_o\ & 
-- ( !\SW[0]~input_o\ $ (!\SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000000000000000000000101000001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \TheHelloDE1|TheHex0|Mux3~0_combout\);

-- Location: LABCELL_X88_Y4_N57
\TheHelloDE1|TheHex0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex0|Mux2~0_combout\ = ( !\SW[3]~input_o\ & ( \SW[1]~input_o\ & ( \SW[0]~input_o\ ) ) ) # ( \SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[2]~input_o\ & \SW[0]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[0]~input_o\) 
-- # (\SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000001010101000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \TheHelloDE1|TheHex0|Mux2~0_combout\);

-- Location: LABCELL_X88_Y4_N0
\TheHelloDE1|TheHex0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex0|Mux1~0_combout\ = ( !\SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\) # (\SW[0]~input_o\) ) ) ) # ( \SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[0]~input_o\ & \SW[2]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( !\SW[1]~input_o\ 
-- & ( (\SW[0]~input_o\ & !\SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000001010000010111110101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \TheHelloDE1|TheHex0|Mux1~0_combout\);

-- Location: LABCELL_X88_Y4_N6
\TheHelloDE1|TheHex0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex0|Mux0~0_combout\ = ( \SW[3]~input_o\ & ( \SW[1]~input_o\ ) ) # ( !\SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\) # (!\SW[2]~input_o\) ) ) ) # ( \SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[2]~input_o\) # (\SW[0]~input_o\) 
-- ) ) ) # ( !\SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( \SW[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111101011111010111111010111110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \TheHelloDE1|TheHex0|Mux0~0_combout\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X88_Y8_N3
\TheHelloDE1|TheHex1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex1|Mux6~0_combout\ = ( \SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & \SW[4]~input_o\) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & \SW[4]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[5]~input_o\ & 
-- ( !\SW[6]~input_o\ $ (!\SW[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000001010000010100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \TheHelloDE1|TheHex1|Mux6~0_combout\);

-- Location: LABCELL_X88_Y8_N6
\TheHelloDE1|TheHex1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex1|Mux5~0_combout\ = ( \SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (\SW[6]~input_o\) # (\SW[4]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[4]~input_o\ & \SW[6]~input_o\) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[5]~input_o\ & 
-- ( (!\SW[4]~input_o\ & \SW[6]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[4]~input_o\ & \SW[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \TheHelloDE1|TheHex1|Mux5~0_combout\);

-- Location: LABCELL_X88_Y8_N45
\TheHelloDE1|TheHex1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex1|Mux4~0_combout\ = ( \SW[7]~input_o\ & ( \SW[5]~input_o\ & ( \SW[6]~input_o\ ) ) ) # ( !\SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & !\SW[4]~input_o\) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & 
-- !\SW[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000010100000101000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \TheHelloDE1|TheHex1|Mux4~0_combout\);

-- Location: LABCELL_X88_Y8_N18
\TheHelloDE1|TheHex1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex1|Mux3~0_combout\ = ( \SW[7]~input_o\ & ( \SW[5]~input_o\ & ( !\SW[4]~input_o\ $ (\SW[6]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (\SW[4]~input_o\ & \SW[6]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[5]~input_o\ & 
-- ( !\SW[4]~input_o\ $ (!\SW[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000000000011000000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \TheHelloDE1|TheHex1|Mux3~0_combout\);

-- Location: LABCELL_X88_Y8_N54
\TheHelloDE1|TheHex1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex1|Mux2~0_combout\ = ( !\SW[7]~input_o\ & ( \SW[5]~input_o\ & ( \SW[4]~input_o\ ) ) ) # ( \SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[4]~input_o\ & !\SW[6]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\) 
-- # (\SW[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001100000011000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \TheHelloDE1|TheHex1|Mux2~0_combout\);

-- Location: LABCELL_X88_Y8_N33
\TheHelloDE1|TheHex1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex1|Mux1~0_combout\ = ( !\SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\) # (\SW[4]~input_o\) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & \SW[4]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[5]~input_o\ 
-- & ( (!\SW[6]~input_o\ & \SW[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000001010000010110101111101011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \TheHelloDE1|TheHex1|Mux1~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\TheHelloDE1|TheHex1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|TheHex1|Mux0~0_combout\ = ( \SW[7]~input_o\ & ( \SW[5]~input_o\ ) ) # ( !\SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[4]~input_o\) # (!\SW[6]~input_o\) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\) # (\SW[4]~input_o\) 
-- ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( \SW[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100111111001111111100111111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \TheHelloDE1|TheHex1|Mux0~0_combout\);

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

-- Location: CLKCTRL_G6
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

-- Location: LABCELL_X42_Y2_N30
\TheHelloDE1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~101_sumout\ = SUM(( \TheHelloDE1|cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \TheHelloDE1|Add0~102\ = CARRY(( \TheHelloDE1|cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TheHelloDE1|ALT_INV_cnt\(0),
	cin => GND,
	sumout => \TheHelloDE1|Add0~101_sumout\,
	cout => \TheHelloDE1|Add0~102\);

-- Location: IOIBUF_X36_Y0_N1
\KEY0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: FF_X42_Y2_N32
\TheHelloDE1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~101_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(0));

-- Location: LABCELL_X42_Y2_N33
\TheHelloDE1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~97_sumout\ = SUM(( \TheHelloDE1|cnt\(1) ) + ( GND ) + ( \TheHelloDE1|Add0~102\ ))
-- \TheHelloDE1|Add0~98\ = CARRY(( \TheHelloDE1|cnt\(1) ) + ( GND ) + ( \TheHelloDE1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TheHelloDE1|ALT_INV_cnt\(1),
	cin => \TheHelloDE1|Add0~102\,
	sumout => \TheHelloDE1|Add0~97_sumout\,
	cout => \TheHelloDE1|Add0~98\);

-- Location: FF_X42_Y2_N35
\TheHelloDE1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~97_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(1));

-- Location: LABCELL_X42_Y2_N36
\TheHelloDE1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~93_sumout\ = SUM(( \TheHelloDE1|cnt\(2) ) + ( GND ) + ( \TheHelloDE1|Add0~98\ ))
-- \TheHelloDE1|Add0~94\ = CARRY(( \TheHelloDE1|cnt\(2) ) + ( GND ) + ( \TheHelloDE1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(2),
	cin => \TheHelloDE1|Add0~98\,
	sumout => \TheHelloDE1|Add0~93_sumout\,
	cout => \TheHelloDE1|Add0~94\);

-- Location: FF_X42_Y2_N38
\TheHelloDE1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~93_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(2));

-- Location: LABCELL_X42_Y2_N39
\TheHelloDE1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~89_sumout\ = SUM(( \TheHelloDE1|cnt\(3) ) + ( GND ) + ( \TheHelloDE1|Add0~94\ ))
-- \TheHelloDE1|Add0~90\ = CARRY(( \TheHelloDE1|cnt\(3) ) + ( GND ) + ( \TheHelloDE1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(3),
	cin => \TheHelloDE1|Add0~94\,
	sumout => \TheHelloDE1|Add0~89_sumout\,
	cout => \TheHelloDE1|Add0~90\);

-- Location: FF_X42_Y2_N41
\TheHelloDE1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~89_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(3));

-- Location: LABCELL_X42_Y2_N42
\TheHelloDE1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~85_sumout\ = SUM(( \TheHelloDE1|cnt\(4) ) + ( GND ) + ( \TheHelloDE1|Add0~90\ ))
-- \TheHelloDE1|Add0~86\ = CARRY(( \TheHelloDE1|cnt\(4) ) + ( GND ) + ( \TheHelloDE1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TheHelloDE1|ALT_INV_cnt\(4),
	cin => \TheHelloDE1|Add0~90\,
	sumout => \TheHelloDE1|Add0~85_sumout\,
	cout => \TheHelloDE1|Add0~86\);

-- Location: FF_X42_Y2_N43
\TheHelloDE1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~85_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(4));

-- Location: LABCELL_X42_Y2_N45
\TheHelloDE1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~81_sumout\ = SUM(( \TheHelloDE1|cnt\(5) ) + ( GND ) + ( \TheHelloDE1|Add0~86\ ))
-- \TheHelloDE1|Add0~82\ = CARRY(( \TheHelloDE1|cnt\(5) ) + ( GND ) + ( \TheHelloDE1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(5),
	cin => \TheHelloDE1|Add0~86\,
	sumout => \TheHelloDE1|Add0~81_sumout\,
	cout => \TheHelloDE1|Add0~82\);

-- Location: FF_X42_Y2_N47
\TheHelloDE1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~81_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(5));

-- Location: LABCELL_X42_Y2_N48
\TheHelloDE1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~77_sumout\ = SUM(( \TheHelloDE1|cnt\(6) ) + ( GND ) + ( \TheHelloDE1|Add0~82\ ))
-- \TheHelloDE1|Add0~78\ = CARRY(( \TheHelloDE1|cnt\(6) ) + ( GND ) + ( \TheHelloDE1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(6),
	cin => \TheHelloDE1|Add0~82\,
	sumout => \TheHelloDE1|Add0~77_sumout\,
	cout => \TheHelloDE1|Add0~78\);

-- Location: FF_X42_Y2_N50
\TheHelloDE1|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~77_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(6));

-- Location: LABCELL_X42_Y2_N51
\TheHelloDE1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~25_sumout\ = SUM(( \TheHelloDE1|cnt\(7) ) + ( GND ) + ( \TheHelloDE1|Add0~78\ ))
-- \TheHelloDE1|Add0~26\ = CARRY(( \TheHelloDE1|cnt\(7) ) + ( GND ) + ( \TheHelloDE1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TheHelloDE1|ALT_INV_cnt\(7),
	cin => \TheHelloDE1|Add0~78\,
	sumout => \TheHelloDE1|Add0~25_sumout\,
	cout => \TheHelloDE1|Add0~26\);

-- Location: FF_X42_Y2_N53
\TheHelloDE1|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~25_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(7));

-- Location: LABCELL_X42_Y2_N54
\TheHelloDE1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~21_sumout\ = SUM(( \TheHelloDE1|cnt\(8) ) + ( GND ) + ( \TheHelloDE1|Add0~26\ ))
-- \TheHelloDE1|Add0~22\ = CARRY(( \TheHelloDE1|cnt\(8) ) + ( GND ) + ( \TheHelloDE1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(8),
	cin => \TheHelloDE1|Add0~26\,
	sumout => \TheHelloDE1|Add0~21_sumout\,
	cout => \TheHelloDE1|Add0~22\);

-- Location: FF_X42_Y2_N56
\TheHelloDE1|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~21_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(8));

-- Location: LABCELL_X42_Y2_N57
\TheHelloDE1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~17_sumout\ = SUM(( \TheHelloDE1|cnt\(9) ) + ( GND ) + ( \TheHelloDE1|Add0~22\ ))
-- \TheHelloDE1|Add0~18\ = CARRY(( \TheHelloDE1|cnt\(9) ) + ( GND ) + ( \TheHelloDE1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(9),
	cin => \TheHelloDE1|Add0~22\,
	sumout => \TheHelloDE1|Add0~17_sumout\,
	cout => \TheHelloDE1|Add0~18\);

-- Location: FF_X42_Y2_N59
\TheHelloDE1|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~17_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(9));

-- Location: LABCELL_X42_Y1_N0
\TheHelloDE1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~13_sumout\ = SUM(( \TheHelloDE1|cnt\(10) ) + ( GND ) + ( \TheHelloDE1|Add0~18\ ))
-- \TheHelloDE1|Add0~14\ = CARRY(( \TheHelloDE1|cnt\(10) ) + ( GND ) + ( \TheHelloDE1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(10),
	cin => \TheHelloDE1|Add0~18\,
	sumout => \TheHelloDE1|Add0~13_sumout\,
	cout => \TheHelloDE1|Add0~14\);

-- Location: FF_X42_Y1_N1
\TheHelloDE1|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~13_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(10));

-- Location: LABCELL_X42_Y1_N3
\TheHelloDE1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~9_sumout\ = SUM(( \TheHelloDE1|cnt\(11) ) + ( GND ) + ( \TheHelloDE1|Add0~14\ ))
-- \TheHelloDE1|Add0~10\ = CARRY(( \TheHelloDE1|cnt\(11) ) + ( GND ) + ( \TheHelloDE1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TheHelloDE1|ALT_INV_cnt\(11),
	cin => \TheHelloDE1|Add0~14\,
	sumout => \TheHelloDE1|Add0~9_sumout\,
	cout => \TheHelloDE1|Add0~10\);

-- Location: FF_X42_Y1_N5
\TheHelloDE1|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~9_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(11));

-- Location: LABCELL_X42_Y1_N6
\TheHelloDE1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~5_sumout\ = SUM(( \TheHelloDE1|cnt\(12) ) + ( GND ) + ( \TheHelloDE1|Add0~10\ ))
-- \TheHelloDE1|Add0~6\ = CARRY(( \TheHelloDE1|cnt\(12) ) + ( GND ) + ( \TheHelloDE1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TheHelloDE1|ALT_INV_cnt\(12),
	cin => \TheHelloDE1|Add0~10\,
	sumout => \TheHelloDE1|Add0~5_sumout\,
	cout => \TheHelloDE1|Add0~6\);

-- Location: FF_X42_Y1_N8
\TheHelloDE1|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~5_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(12));

-- Location: LABCELL_X42_Y1_N9
\TheHelloDE1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~45_sumout\ = SUM(( \TheHelloDE1|cnt\(13) ) + ( GND ) + ( \TheHelloDE1|Add0~6\ ))
-- \TheHelloDE1|Add0~46\ = CARRY(( \TheHelloDE1|cnt\(13) ) + ( GND ) + ( \TheHelloDE1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TheHelloDE1|ALT_INV_cnt\(13),
	cin => \TheHelloDE1|Add0~6\,
	sumout => \TheHelloDE1|Add0~45_sumout\,
	cout => \TheHelloDE1|Add0~46\);

-- Location: FF_X42_Y1_N10
\TheHelloDE1|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~45_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(13));

-- Location: LABCELL_X42_Y1_N12
\TheHelloDE1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~41_sumout\ = SUM(( \TheHelloDE1|cnt\(14) ) + ( GND ) + ( \TheHelloDE1|Add0~46\ ))
-- \TheHelloDE1|Add0~42\ = CARRY(( \TheHelloDE1|cnt\(14) ) + ( GND ) + ( \TheHelloDE1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TheHelloDE1|ALT_INV_cnt\(14),
	cin => \TheHelloDE1|Add0~46\,
	sumout => \TheHelloDE1|Add0~41_sumout\,
	cout => \TheHelloDE1|Add0~42\);

-- Location: FF_X42_Y1_N14
\TheHelloDE1|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~41_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(14));

-- Location: LABCELL_X42_Y1_N15
\TheHelloDE1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~57_sumout\ = SUM(( \TheHelloDE1|cnt\(15) ) + ( GND ) + ( \TheHelloDE1|Add0~42\ ))
-- \TheHelloDE1|Add0~58\ = CARRY(( \TheHelloDE1|cnt\(15) ) + ( GND ) + ( \TheHelloDE1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(15),
	cin => \TheHelloDE1|Add0~42\,
	sumout => \TheHelloDE1|Add0~57_sumout\,
	cout => \TheHelloDE1|Add0~58\);

-- Location: FF_X42_Y1_N17
\TheHelloDE1|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~57_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(15));

-- Location: LABCELL_X42_Y1_N18
\TheHelloDE1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~37_sumout\ = SUM(( \TheHelloDE1|cnt\(16) ) + ( GND ) + ( \TheHelloDE1|Add0~58\ ))
-- \TheHelloDE1|Add0~38\ = CARRY(( \TheHelloDE1|cnt\(16) ) + ( GND ) + ( \TheHelloDE1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(16),
	cin => \TheHelloDE1|Add0~58\,
	sumout => \TheHelloDE1|Add0~37_sumout\,
	cout => \TheHelloDE1|Add0~38\);

-- Location: FF_X42_Y1_N20
\TheHelloDE1|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~37_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(16));

-- Location: LABCELL_X42_Y1_N21
\TheHelloDE1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~33_sumout\ = SUM(( \TheHelloDE1|cnt[17]~DUPLICATE_q\ ) + ( GND ) + ( \TheHelloDE1|Add0~38\ ))
-- \TheHelloDE1|Add0~34\ = CARRY(( \TheHelloDE1|cnt[17]~DUPLICATE_q\ ) + ( GND ) + ( \TheHelloDE1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt[17]~DUPLICATE_q\,
	cin => \TheHelloDE1|Add0~38\,
	sumout => \TheHelloDE1|Add0~33_sumout\,
	cout => \TheHelloDE1|Add0~34\);

-- Location: FF_X42_Y1_N22
\TheHelloDE1|cnt[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~33_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt[17]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N24
\TheHelloDE1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~29_sumout\ = SUM(( \TheHelloDE1|cnt\(18) ) + ( GND ) + ( \TheHelloDE1|Add0~34\ ))
-- \TheHelloDE1|Add0~30\ = CARRY(( \TheHelloDE1|cnt\(18) ) + ( GND ) + ( \TheHelloDE1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(18),
	cin => \TheHelloDE1|Add0~34\,
	sumout => \TheHelloDE1|Add0~29_sumout\,
	cout => \TheHelloDE1|Add0~30\);

-- Location: FF_X42_Y1_N26
\TheHelloDE1|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~29_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(18));

-- Location: LABCELL_X42_Y1_N27
\TheHelloDE1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~53_sumout\ = SUM(( \TheHelloDE1|cnt\(19) ) + ( GND ) + ( \TheHelloDE1|Add0~30\ ))
-- \TheHelloDE1|Add0~54\ = CARRY(( \TheHelloDE1|cnt\(19) ) + ( GND ) + ( \TheHelloDE1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TheHelloDE1|ALT_INV_cnt\(19),
	cin => \TheHelloDE1|Add0~30\,
	sumout => \TheHelloDE1|Add0~53_sumout\,
	cout => \TheHelloDE1|Add0~54\);

-- Location: FF_X42_Y1_N29
\TheHelloDE1|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~53_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(19));

-- Location: LABCELL_X42_Y1_N30
\TheHelloDE1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~49_sumout\ = SUM(( \TheHelloDE1|cnt\(20) ) + ( GND ) + ( \TheHelloDE1|Add0~54\ ))
-- \TheHelloDE1|Add0~50\ = CARRY(( \TheHelloDE1|cnt\(20) ) + ( GND ) + ( \TheHelloDE1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(20),
	cin => \TheHelloDE1|Add0~54\,
	sumout => \TheHelloDE1|Add0~49_sumout\,
	cout => \TheHelloDE1|Add0~50\);

-- Location: FF_X42_Y1_N31
\TheHelloDE1|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~49_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(20));

-- Location: LABCELL_X42_Y1_N33
\TheHelloDE1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~65_sumout\ = SUM(( \TheHelloDE1|cnt\(21) ) + ( GND ) + ( \TheHelloDE1|Add0~50\ ))
-- \TheHelloDE1|Add0~66\ = CARRY(( \TheHelloDE1|cnt\(21) ) + ( GND ) + ( \TheHelloDE1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TheHelloDE1|ALT_INV_cnt\(21),
	cin => \TheHelloDE1|Add0~50\,
	sumout => \TheHelloDE1|Add0~65_sumout\,
	cout => \TheHelloDE1|Add0~66\);

-- Location: FF_X42_Y1_N35
\TheHelloDE1|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~65_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(21));

-- Location: LABCELL_X42_Y1_N36
\TheHelloDE1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~61_sumout\ = SUM(( \TheHelloDE1|cnt\(22) ) + ( GND ) + ( \TheHelloDE1|Add0~66\ ))
-- \TheHelloDE1|Add0~62\ = CARRY(( \TheHelloDE1|cnt\(22) ) + ( GND ) + ( \TheHelloDE1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(22),
	cin => \TheHelloDE1|Add0~66\,
	sumout => \TheHelloDE1|Add0~61_sumout\,
	cout => \TheHelloDE1|Add0~62\);

-- Location: FF_X42_Y1_N38
\TheHelloDE1|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~61_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(22));

-- Location: LABCELL_X42_Y1_N51
\TheHelloDE1|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|LessThan0~3_combout\ = ( !\TheHelloDE1|cnt\(21) & ( !\TheHelloDE1|cnt\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TheHelloDE1|ALT_INV_cnt\(22),
	dataf => \TheHelloDE1|ALT_INV_cnt\(21),
	combout => \TheHelloDE1|LessThan0~3_combout\);

-- Location: LABCELL_X42_Y1_N54
\TheHelloDE1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|LessThan0~2_combout\ = ( \TheHelloDE1|cnt\(19) & ( \TheHelloDE1|cnt\(18) & ( \TheHelloDE1|cnt\(20) ) ) ) # ( \TheHelloDE1|cnt\(19) & ( !\TheHelloDE1|cnt\(18) & ( (\TheHelloDE1|cnt\(20) & (((\TheHelloDE1|cnt\(15)) # (\TheHelloDE1|cnt\(16))) # 
-- (\TheHelloDE1|cnt[17]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TheHelloDE1|ALT_INV_cnt\(20),
	datab => \TheHelloDE1|ALT_INV_cnt[17]~DUPLICATE_q\,
	datac => \TheHelloDE1|ALT_INV_cnt\(16),
	datad => \TheHelloDE1|ALT_INV_cnt\(15),
	datae => \TheHelloDE1|ALT_INV_cnt\(19),
	dataf => \TheHelloDE1|ALT_INV_cnt\(18),
	combout => \TheHelloDE1|LessThan0~2_combout\);

-- Location: FF_X42_Y1_N23
\TheHelloDE1|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~33_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(17));

-- Location: LABCELL_X42_Y1_N48
\TheHelloDE1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|LessThan0~1_combout\ = ( !\TheHelloDE1|cnt\(18) & ( (!\TheHelloDE1|cnt\(13) & (!\TheHelloDE1|cnt\(14) & (!\TheHelloDE1|cnt\(16) & !\TheHelloDE1|cnt\(17)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TheHelloDE1|ALT_INV_cnt\(13),
	datab => \TheHelloDE1|ALT_INV_cnt\(14),
	datac => \TheHelloDE1|ALT_INV_cnt\(16),
	datad => \TheHelloDE1|ALT_INV_cnt\(17),
	dataf => \TheHelloDE1|ALT_INV_cnt\(18),
	combout => \TheHelloDE1|LessThan0~1_combout\);

-- Location: LABCELL_X42_Y1_N39
\TheHelloDE1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~1_sumout\ = SUM(( \TheHelloDE1|cnt\(23) ) + ( GND ) + ( \TheHelloDE1|Add0~62\ ))
-- \TheHelloDE1|Add0~2\ = CARRY(( \TheHelloDE1|cnt\(23) ) + ( GND ) + ( \TheHelloDE1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(23),
	cin => \TheHelloDE1|Add0~62\,
	sumout => \TheHelloDE1|Add0~1_sumout\,
	cout => \TheHelloDE1|Add0~2\);

-- Location: FF_X42_Y1_N40
\TheHelloDE1|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~1_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(23));

-- Location: LABCELL_X42_Y1_N42
\TheHelloDE1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~73_sumout\ = SUM(( \TheHelloDE1|cnt\(24) ) + ( GND ) + ( \TheHelloDE1|Add0~2\ ))
-- \TheHelloDE1|Add0~74\ = CARRY(( \TheHelloDE1|cnt\(24) ) + ( GND ) + ( \TheHelloDE1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TheHelloDE1|ALT_INV_cnt\(24),
	cin => \TheHelloDE1|Add0~2\,
	sumout => \TheHelloDE1|Add0~73_sumout\,
	cout => \TheHelloDE1|Add0~74\);

-- Location: FF_X42_Y1_N44
\TheHelloDE1|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~73_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(24));

-- Location: LABCELL_X42_Y1_N45
\TheHelloDE1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|Add0~69_sumout\ = SUM(( \TheHelloDE1|cnt\(25) ) + ( GND ) + ( \TheHelloDE1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(25),
	cin => \TheHelloDE1|Add0~74\,
	sumout => \TheHelloDE1|Add0~69_sumout\);

-- Location: FF_X42_Y1_N47
\TheHelloDE1|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~69_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt\(25));

-- Location: LABCELL_X42_Y2_N12
\TheHelloDE1|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|LessThan0~4_combout\ = ( !\TheHelloDE1|cnt\(24) & ( !\TheHelloDE1|cnt\(25) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TheHelloDE1|ALT_INV_cnt\(25),
	dataf => \TheHelloDE1|ALT_INV_cnt\(24),
	combout => \TheHelloDE1|LessThan0~4_combout\);

-- Location: FF_X42_Y1_N7
\TheHelloDE1|cnt[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|Add0~5_sumout\,
	clrn => \KEY0~input_o\,
	sclr => \TheHelloDE1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|cnt[12]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y2_N6
\TheHelloDE1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|LessThan0~0_combout\ = ( \TheHelloDE1|cnt\(9) & ( \TheHelloDE1|cnt\(10) & ( (\TheHelloDE1|cnt[12]~DUPLICATE_q\ & (((\TheHelloDE1|cnt\(8)) # (\TheHelloDE1|cnt\(11))) # (\TheHelloDE1|cnt\(7)))) ) ) ) # ( !\TheHelloDE1|cnt\(9) & ( 
-- \TheHelloDE1|cnt\(10) & ( (\TheHelloDE1|cnt\(11) & \TheHelloDE1|cnt[12]~DUPLICATE_q\) ) ) ) # ( \TheHelloDE1|cnt\(9) & ( !\TheHelloDE1|cnt\(10) & ( (\TheHelloDE1|cnt\(11) & \TheHelloDE1|cnt[12]~DUPLICATE_q\) ) ) ) # ( !\TheHelloDE1|cnt\(9) & ( 
-- !\TheHelloDE1|cnt\(10) & ( (\TheHelloDE1|cnt\(11) & \TheHelloDE1|cnt[12]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TheHelloDE1|ALT_INV_cnt\(7),
	datab => \TheHelloDE1|ALT_INV_cnt\(11),
	datac => \TheHelloDE1|ALT_INV_cnt\(8),
	datad => \TheHelloDE1|ALT_INV_cnt[12]~DUPLICATE_q\,
	datae => \TheHelloDE1|ALT_INV_cnt\(9),
	dataf => \TheHelloDE1|ALT_INV_cnt\(10),
	combout => \TheHelloDE1|LessThan0~0_combout\);

-- Location: LABCELL_X42_Y2_N18
\TheHelloDE1|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|LessThan0~5_combout\ = ( \TheHelloDE1|cnt\(23) & ( \TheHelloDE1|LessThan0~0_combout\ & ( (!\TheHelloDE1|LessThan0~3_combout\) # ((!\TheHelloDE1|LessThan0~4_combout\) # (\TheHelloDE1|LessThan0~2_combout\)) ) ) ) # ( !\TheHelloDE1|cnt\(23) & ( 
-- \TheHelloDE1|LessThan0~0_combout\ & ( !\TheHelloDE1|LessThan0~4_combout\ ) ) ) # ( \TheHelloDE1|cnt\(23) & ( !\TheHelloDE1|LessThan0~0_combout\ & ( (!\TheHelloDE1|LessThan0~3_combout\) # ((!\TheHelloDE1|LessThan0~4_combout\) # 
-- ((\TheHelloDE1|LessThan0~2_combout\ & !\TheHelloDE1|LessThan0~1_combout\))) ) ) ) # ( !\TheHelloDE1|cnt\(23) & ( !\TheHelloDE1|LessThan0~0_combout\ & ( !\TheHelloDE1|LessThan0~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111011101011111111000000001111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TheHelloDE1|ALT_INV_LessThan0~3_combout\,
	datab => \TheHelloDE1|ALT_INV_LessThan0~2_combout\,
	datac => \TheHelloDE1|ALT_INV_LessThan0~1_combout\,
	datad => \TheHelloDE1|ALT_INV_LessThan0~4_combout\,
	datae => \TheHelloDE1|ALT_INV_cnt\(23),
	dataf => \TheHelloDE1|ALT_INV_LessThan0~0_combout\,
	combout => \TheHelloDE1|LessThan0~5_combout\);

-- Location: LABCELL_X42_Y2_N3
\TheHelloDE1|led_status~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TheHelloDE1|led_status~0_combout\ = ( !\TheHelloDE1|led_status~q\ & ( \TheHelloDE1|LessThan0~5_combout\ ) ) # ( \TheHelloDE1|led_status~q\ & ( !\TheHelloDE1|LessThan0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \TheHelloDE1|ALT_INV_led_status~q\,
	dataf => \TheHelloDE1|ALT_INV_LessThan0~5_combout\,
	combout => \TheHelloDE1|led_status~0_combout\);

-- Location: FF_X42_Y2_N4
\TheHelloDE1|led_status\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TheHelloDE1|led_status~0_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheHelloDE1|led_status~q\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X11_Y31_N3
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


