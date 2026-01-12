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

-- DATE "01/08/2026 12:02:06"

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

ENTITY 	ReactionGameOnDE1SOC IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN IEEE.STD_LOGIC_1164.std_ulogic_vector(0 DOWNTO 0);
	KEY : IN IEEE.STD_LOGIC_1164.std_ulogic_vector(1 DOWNTO 0);
	LEDR : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(3 DOWNTO 0);
	HEX0 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(6 DOWNTO 0);
	HEX1 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(6 DOWNTO 0);
	HEX2 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(6 DOWNTO 0)
	);
END ReactionGameOnDE1SOC;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ReactionGameOnDE1SOC IS
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
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|State.Unlocked~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \EntitySyncB|MightMetha[1]~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~61_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~62\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~57_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~58\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~53_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~54\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~49_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~50\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~5_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~6\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~45_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~46\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~41_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~42\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~37_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~38\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~33_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~34\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~29_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Equal0~1_combout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~30\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~1_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Equal0~2_combout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~2\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~25_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~26\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~21_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~22\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~17_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~18\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~13_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~14\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Add0~9_sumout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Equal0~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Equal0~3_combout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|oStrobe~q\ : std_logic;
SIGNAL \EntityReactionGame|EdgeDetectionB|SyncPrev~q\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|State~14_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \EntitySyncA|MightMetha[1]~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|EdgeDetectionA|SyncPrev~q\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|State~15_combout\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|State.Unlocked~q\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|State~12_combout\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|State~13_combout\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|State.ShowResult~q\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|State.Locked~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|State.Locked~q\ : std_logic;
SIGNAL \EntityReactionGame|CounterLow|oCount~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterLow|oCount[4]~1_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterLow|oCount~3_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterLow|oCount~4_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|CounterLow|oCount~2_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderLow|Mux6~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderLow|Mux5~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderLow|Mux4~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderLow|Mux3~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderLow|Mux2~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderLow|Mux1~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderLow|Mux0~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterLow|Equal0~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterMid|oCount[4]~1_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterMid|oCount~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|CounterMid|oCount~3_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterMid|oCount~4_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|CounterMid|oCount~2_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderMid|Mux6~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderMid|Mux5~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderMid|Mux4~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderMid|Mux3~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderMid|Mux2~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderMid|Mux1~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderMid|Mux0~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterHigh|oCount~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterMid|Equal0~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterHigh|oCount[4]~1_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|CounterHigh|oCount~2_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterHigh|oCount~3_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterHigh|oCount~4_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderHigh|Mux6~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderHigh|Mux5~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderHigh|Mux4~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderHigh|Mux3~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderHigh|Mux2~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderHigh|Mux1~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderHigh|Mux0~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|Count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EntitySyncB|MightMetha\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \EntityReactionGame|CounterLow|oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \EntitySyncA|MightMetha\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \EntityReactionGame|CounterMid|oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \EntityReactionGame|CounterHigh|oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \EntityReactionGame|StrobeGen|ALT_INV_Count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\ : std_logic;
SIGNAL \EntityReactionGame|CounterHigh|ALT_INV_oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \EntitySyncB|ALT_INV_MightMetha\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \EntityReactionGame|CounterMid|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterLow|ALT_INV_oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \EntityReactionGame|CounterMid|ALT_INV_oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \EntityReactionGame|EdgeDetectionA|ALT_INV_SyncPrev~q\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderLow|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|ALT_INV_State.ShowResult~q\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderHigh|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|EdgeDetectionB|ALT_INV_SyncPrev~q\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|ALT_INV_oStrobe~q\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|ALT_INV_State.CountUpTime~q\ : std_logic;
SIGNAL \EntityReactionGame|HexDecoderMid|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \EntitySyncA|ALT_INV_MightMetha\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \EntityReactionGame|EntityReactionFSM|ALT_INV_State~12_combout\ : std_logic;
SIGNAL \EntityReactionGame|CounterLow|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Unlocked~q\ : std_logic;
SIGNAL \EntityReactionGame|EntityReactionFSM|ALT_INV_State~14_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|ALT_INV_Count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|ALT_INV_Count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|ALT_INV_Count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|CounterLow|ALT_INV_oCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|ALT_INV_Count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|ALT_INV_Count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \EntityReactionGame|StrobeGen|ALT_INV_Count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \EntityReactionGame|CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(SW);
ww_KEY <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(KEY);
LEDR <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_LEDR);
HEX0 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_HEX0);
HEX1 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_HEX1);
HEX2 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_HEX2);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\EntityReactionGame|StrobeGen|ALT_INV_Count\(15) <= NOT \EntityReactionGame|StrobeGen|Count\(15);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(14) <= NOT \EntityReactionGame|StrobeGen|Count\(14);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(5) <= NOT \EntityReactionGame|StrobeGen|Count\(5);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(12) <= NOT \EntityReactionGame|StrobeGen|Count\(12);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(1) <= NOT \EntityReactionGame|StrobeGen|Count\(1);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(13) <= NOT \EntityReactionGame|StrobeGen|Count\(13);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(8) <= NOT \EntityReactionGame|StrobeGen|Count\(8);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(4) <= NOT \EntityReactionGame|StrobeGen|Count\(4);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(6) <= NOT \EntityReactionGame|StrobeGen|Count\(6);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(9) <= NOT \EntityReactionGame|StrobeGen|Count\(9);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(2) <= NOT \EntityReactionGame|StrobeGen|Count\(2);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(3) <= NOT \EntityReactionGame|StrobeGen|Count\(3);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(11) <= NOT \EntityReactionGame|StrobeGen|Count\(11);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(10) <= NOT \EntityReactionGame|StrobeGen|Count\(10);
\EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\ <= NOT \EntityReactionGame|EntityReactionFSM|State.Locked~q\;
\EntityReactionGame|StrobeGen|ALT_INV_Count\(0) <= NOT \EntityReactionGame|StrobeGen|Count\(0);
\EntityReactionGame|StrobeGen|ALT_INV_Count\(7) <= NOT \EntityReactionGame|StrobeGen|Count\(7);
\EntityReactionGame|CounterHigh|ALT_INV_oCount\(3) <= NOT \EntityReactionGame|CounterHigh|oCount\(3);
\EntitySyncB|ALT_INV_MightMetha\(2) <= NOT \EntitySyncB|MightMetha\(2);
\EntityReactionGame|CounterMid|ALT_INV_Equal0~0_combout\ <= NOT \EntityReactionGame|CounterMid|Equal0~0_combout\;
\EntityReactionGame|CounterLow|ALT_INV_oCount\(1) <= NOT \EntityReactionGame|CounterLow|oCount\(1);
\EntityReactionGame|CounterMid|ALT_INV_oCount\(4) <= NOT \EntityReactionGame|CounterMid|oCount\(4);
\EntityReactionGame|EdgeDetectionA|ALT_INV_SyncPrev~q\ <= NOT \EntityReactionGame|EdgeDetectionA|SyncPrev~q\;
\EntityReactionGame|CounterMid|ALT_INV_oCount\(1) <= NOT \EntityReactionGame|CounterMid|oCount\(1);
\EntityReactionGame|HexDecoderLow|ALT_INV_Mux0~0_combout\ <= NOT \EntityReactionGame|HexDecoderLow|Mux0~0_combout\;
\EntityReactionGame|CounterHigh|ALT_INV_oCount\(1) <= NOT \EntityReactionGame|CounterHigh|oCount\(1);
\EntityReactionGame|EntityReactionFSM|ALT_INV_State.ShowResult~q\ <= NOT \EntityReactionGame|EntityReactionFSM|State.ShowResult~q\;
\EntityReactionGame|CounterMid|ALT_INV_oCount\(2) <= NOT \EntityReactionGame|CounterMid|oCount\(2);
\EntityReactionGame|CounterLow|ALT_INV_oCount\(3) <= NOT \EntityReactionGame|CounterLow|oCount\(3);
\EntityReactionGame|HexDecoderHigh|ALT_INV_Mux0~0_combout\ <= NOT \EntityReactionGame|HexDecoderHigh|Mux0~0_combout\;
\EntityReactionGame|CounterHigh|ALT_INV_oCount\(2) <= NOT \EntityReactionGame|CounterHigh|oCount\(2);
\EntityReactionGame|EdgeDetectionB|ALT_INV_SyncPrev~q\ <= NOT \EntityReactionGame|EdgeDetectionB|SyncPrev~q\;
\EntityReactionGame|StrobeGen|ALT_INV_oStrobe~q\ <= NOT \EntityReactionGame|StrobeGen|oStrobe~q\;
\EntityReactionGame|EntityReactionFSM|ALT_INV_State.CountUpTime~q\ <= NOT \EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\;
\EntityReactionGame|HexDecoderMid|ALT_INV_Mux0~0_combout\ <= NOT \EntityReactionGame|HexDecoderMid|Mux0~0_combout\;
\EntitySyncA|ALT_INV_MightMetha\(2) <= NOT \EntitySyncA|MightMetha\(2);
\EntityReactionGame|EntityReactionFSM|ALT_INV_State~12_combout\ <= NOT \EntityReactionGame|EntityReactionFSM|State~12_combout\;
\EntityReactionGame|CounterMid|ALT_INV_oCount\(3) <= NOT \EntityReactionGame|CounterMid|oCount\(3);
\EntityReactionGame|CounterLow|ALT_INV_Equal0~0_combout\ <= NOT \EntityReactionGame|CounterLow|Equal0~0_combout\;
\EntityReactionGame|CounterLow|ALT_INV_oCount\(4) <= NOT \EntityReactionGame|CounterLow|oCount\(4);
\EntityReactionGame|EntityReactionFSM|ALT_INV_State.Unlocked~q\ <= NOT \EntityReactionGame|EntityReactionFSM|State.Unlocked~q\;
\EntityReactionGame|CounterHigh|ALT_INV_oCount\(4) <= NOT \EntityReactionGame|CounterHigh|oCount\(4);
\EntityReactionGame|EntityReactionFSM|ALT_INV_State~14_combout\ <= NOT \EntityReactionGame|EntityReactionFSM|State~14_combout\;
\EntityReactionGame|CounterLow|ALT_INV_oCount\(2) <= NOT \EntityReactionGame|CounterLow|oCount\(2);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\EntityReactionGame|StrobeGen|ALT_INV_Count[12]~DUPLICATE_q\ <= NOT \EntityReactionGame|StrobeGen|Count[12]~DUPLICATE_q\;
\EntityReactionGame|StrobeGen|ALT_INV_Count[1]~DUPLICATE_q\ <= NOT \EntityReactionGame|StrobeGen|Count[1]~DUPLICATE_q\;
\EntityReactionGame|CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\ <= NOT \EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\;
\EntityReactionGame|CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\ <= NOT \EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\;
\EntityReactionGame|StrobeGen|ALT_INV_Equal0~1_combout\ <= NOT \EntityReactionGame|StrobeGen|Equal0~1_combout\;
\EntityReactionGame|StrobeGen|ALT_INV_Count[11]~DUPLICATE_q\ <= NOT \EntityReactionGame|StrobeGen|Count[11]~DUPLICATE_q\;
\EntityReactionGame|CounterLow|ALT_INV_oCount[3]~DUPLICATE_q\ <= NOT \EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\;
\EntityReactionGame|CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\ <= NOT \EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\EntityReactionGame|StrobeGen|ALT_INV_Equal0~0_combout\ <= NOT \EntityReactionGame|StrobeGen|Equal0~0_combout\;
\EntityReactionGame|StrobeGen|ALT_INV_Count[2]~DUPLICATE_q\ <= NOT \EntityReactionGame|StrobeGen|Count[2]~DUPLICATE_q\;
\EntityReactionGame|StrobeGen|ALT_INV_Count[3]~DUPLICATE_q\ <= NOT \EntityReactionGame|StrobeGen|Count[3]~DUPLICATE_q\;
\EntityReactionGame|StrobeGen|ALT_INV_Equal0~2_combout\ <= NOT \EntityReactionGame|StrobeGen|Equal0~2_combout\;
\EntityReactionGame|StrobeGen|ALT_INV_Count[15]~DUPLICATE_q\ <= NOT \EntityReactionGame|StrobeGen|Count[15]~DUPLICATE_q\;
\EntityReactionGame|CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\ <= NOT \EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
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
	i => \EntityReactionGame|EntityReactionFSM|State.Unlocked~q\,
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
	i => \EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\,
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
	i => \EntityReactionGame|EntityReactionFSM|State.ShowResult~q\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityReactionGame|HexDecoderLow|Mux6~0_combout\,
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
	i => \EntityReactionGame|HexDecoderLow|Mux5~0_combout\,
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
	i => \EntityReactionGame|HexDecoderLow|Mux4~0_combout\,
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
	i => \EntityReactionGame|HexDecoderLow|Mux3~0_combout\,
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
	i => \EntityReactionGame|HexDecoderLow|Mux2~0_combout\,
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
	i => \EntityReactionGame|HexDecoderLow|Mux1~0_combout\,
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
	i => \EntityReactionGame|HexDecoderLow|ALT_INV_Mux0~0_combout\,
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
	i => \EntityReactionGame|HexDecoderMid|Mux6~0_combout\,
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
	i => \EntityReactionGame|HexDecoderMid|Mux5~0_combout\,
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
	i => \EntityReactionGame|HexDecoderMid|Mux4~0_combout\,
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
	i => \EntityReactionGame|HexDecoderMid|Mux3~0_combout\,
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
	i => \EntityReactionGame|HexDecoderMid|Mux2~0_combout\,
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
	i => \EntityReactionGame|HexDecoderMid|Mux1~0_combout\,
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
	i => \EntityReactionGame|HexDecoderMid|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityReactionGame|HexDecoderHigh|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityReactionGame|HexDecoderHigh|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityReactionGame|HexDecoderHigh|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityReactionGame|HexDecoderHigh|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityReactionGame|HexDecoderHigh|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityReactionGame|HexDecoderHigh|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityReactionGame|HexDecoderHigh|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

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

-- Location: LABCELL_X61_Y2_N30
\EntityReactionGame|EntityReactionFSM|State.Unlocked~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|EntityReactionFSM|State.Unlocked~0_combout\ = !\EntityReactionGame|EntityReactionFSM|State.Locked~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	combout => \EntityReactionGame|EntityReactionFSM|State.Unlocked~0_combout\);

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

-- Location: LABCELL_X42_Y2_N15
\EntitySyncB|MightMetha[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntitySyncB|MightMetha[1]~0_combout\ = ( !\KEY[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \EntitySyncB|MightMetha[1]~0_combout\);

-- Location: FF_X42_Y2_N17
\EntitySyncB|MightMetha[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntitySyncB|MightMetha[1]~0_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntitySyncB|MightMetha\(1));

-- Location: FF_X42_Y2_N5
\EntitySyncB|MightMetha[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \EntitySyncB|MightMetha\(1),
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntitySyncB|MightMetha\(2));

-- Location: MLABCELL_X78_Y3_N0
\EntityReactionGame|StrobeGen|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~61_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(0) ) + ( VCC ) + ( !VCC ))
-- \EntityReactionGame|StrobeGen|Add0~62\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionGame|StrobeGen|ALT_INV_Count\(0),
	cin => GND,
	sumout => \EntityReactionGame|StrobeGen|Add0~61_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~62\);

-- Location: FF_X78_Y3_N1
\EntityReactionGame|StrobeGen|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~61_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(0));

-- Location: MLABCELL_X78_Y3_N3
\EntityReactionGame|StrobeGen|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~57_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(1) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~62\ ))
-- \EntityReactionGame|StrobeGen|Add0~58\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(1) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|StrobeGen|ALT_INV_Count\(1),
	cin => \EntityReactionGame|StrobeGen|Add0~62\,
	sumout => \EntityReactionGame|StrobeGen|Add0~57_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~58\);

-- Location: FF_X78_Y3_N5
\EntityReactionGame|StrobeGen|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~57_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(1));

-- Location: MLABCELL_X78_Y3_N6
\EntityReactionGame|StrobeGen|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~53_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(2) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~58\ ))
-- \EntityReactionGame|StrobeGen|Add0~54\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(2) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|StrobeGen|ALT_INV_Count\(2),
	cin => \EntityReactionGame|StrobeGen|Add0~58\,
	sumout => \EntityReactionGame|StrobeGen|Add0~53_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~54\);

-- Location: FF_X78_Y3_N8
\EntityReactionGame|StrobeGen|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~53_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(2));

-- Location: MLABCELL_X78_Y3_N9
\EntityReactionGame|StrobeGen|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~49_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(3) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~54\ ))
-- \EntityReactionGame|StrobeGen|Add0~50\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(3) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionGame|StrobeGen|ALT_INV_Count\(3),
	cin => \EntityReactionGame|StrobeGen|Add0~54\,
	sumout => \EntityReactionGame|StrobeGen|Add0~49_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~50\);

-- Location: FF_X78_Y3_N11
\EntityReactionGame|StrobeGen|Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~49_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(3));

-- Location: MLABCELL_X78_Y3_N12
\EntityReactionGame|StrobeGen|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~5_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(4) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~50\ ))
-- \EntityReactionGame|StrobeGen|Add0~6\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(4) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|StrobeGen|ALT_INV_Count\(4),
	cin => \EntityReactionGame|StrobeGen|Add0~50\,
	sumout => \EntityReactionGame|StrobeGen|Add0~5_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~6\);

-- Location: FF_X78_Y3_N14
\EntityReactionGame|StrobeGen|Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~5_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(4));

-- Location: MLABCELL_X78_Y3_N15
\EntityReactionGame|StrobeGen|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~45_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(5) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~6\ ))
-- \EntityReactionGame|StrobeGen|Add0~46\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(5) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionGame|StrobeGen|ALT_INV_Count\(5),
	cin => \EntityReactionGame|StrobeGen|Add0~6\,
	sumout => \EntityReactionGame|StrobeGen|Add0~45_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~46\);

-- Location: FF_X78_Y3_N17
\EntityReactionGame|StrobeGen|Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~45_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(5));

-- Location: MLABCELL_X78_Y3_N18
\EntityReactionGame|StrobeGen|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~41_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(6) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~46\ ))
-- \EntityReactionGame|StrobeGen|Add0~42\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(6) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionGame|StrobeGen|ALT_INV_Count\(6),
	cin => \EntityReactionGame|StrobeGen|Add0~46\,
	sumout => \EntityReactionGame|StrobeGen|Add0~41_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~42\);

-- Location: FF_X78_Y3_N20
\EntityReactionGame|StrobeGen|Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~41_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(6));

-- Location: MLABCELL_X78_Y3_N21
\EntityReactionGame|StrobeGen|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~37_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(7) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~42\ ))
-- \EntityReactionGame|StrobeGen|Add0~38\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(7) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|StrobeGen|ALT_INV_Count\(7),
	cin => \EntityReactionGame|StrobeGen|Add0~42\,
	sumout => \EntityReactionGame|StrobeGen|Add0~37_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~38\);

-- Location: FF_X78_Y3_N23
\EntityReactionGame|StrobeGen|Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~37_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(7));

-- Location: MLABCELL_X78_Y3_N24
\EntityReactionGame|StrobeGen|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~33_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(8) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~38\ ))
-- \EntityReactionGame|StrobeGen|Add0~34\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(8) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionGame|StrobeGen|ALT_INV_Count\(8),
	cin => \EntityReactionGame|StrobeGen|Add0~38\,
	sumout => \EntityReactionGame|StrobeGen|Add0~33_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~34\);

-- Location: FF_X78_Y3_N26
\EntityReactionGame|StrobeGen|Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~33_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(8));

-- Location: MLABCELL_X78_Y3_N27
\EntityReactionGame|StrobeGen|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~29_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(9) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~34\ ))
-- \EntityReactionGame|StrobeGen|Add0~30\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(9) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|StrobeGen|ALT_INV_Count\(9),
	cin => \EntityReactionGame|StrobeGen|Add0~34\,
	sumout => \EntityReactionGame|StrobeGen|Add0~29_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~30\);

-- Location: FF_X78_Y3_N29
\EntityReactionGame|StrobeGen|Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~29_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(9));

-- Location: MLABCELL_X78_Y3_N54
\EntityReactionGame|StrobeGen|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Equal0~1_combout\ = ( \EntityReactionGame|StrobeGen|Count\(9) & ( \EntityReactionGame|StrobeGen|Count\(8) & ( (!\EntityReactionGame|StrobeGen|Count\(7) & (!\EntityReactionGame|StrobeGen|Count\(5) & 
-- \EntityReactionGame|StrobeGen|Count\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|StrobeGen|ALT_INV_Count\(7),
	datab => \EntityReactionGame|StrobeGen|ALT_INV_Count\(5),
	datac => \EntityReactionGame|StrobeGen|ALT_INV_Count\(6),
	datae => \EntityReactionGame|StrobeGen|ALT_INV_Count\(9),
	dataf => \EntityReactionGame|StrobeGen|ALT_INV_Count\(8),
	combout => \EntityReactionGame|StrobeGen|Equal0~1_combout\);

-- Location: MLABCELL_X78_Y3_N30
\EntityReactionGame|StrobeGen|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~1_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(10) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~30\ ))
-- \EntityReactionGame|StrobeGen|Add0~2\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(10) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|StrobeGen|ALT_INV_Count\(10),
	cin => \EntityReactionGame|StrobeGen|Add0~30\,
	sumout => \EntityReactionGame|StrobeGen|Add0~1_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~2\);

-- Location: FF_X78_Y3_N32
\EntityReactionGame|StrobeGen|Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~1_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(10));

-- Location: FF_X78_Y3_N10
\EntityReactionGame|StrobeGen|Count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~49_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count[3]~DUPLICATE_q\);

-- Location: FF_X78_Y3_N4
\EntityReactionGame|StrobeGen|Count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~57_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count[1]~DUPLICATE_q\);

-- Location: FF_X78_Y3_N7
\EntityReactionGame|StrobeGen|Count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~53_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count[2]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y3_N6
\EntityReactionGame|StrobeGen|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Equal0~2_combout\ = ( \EntityReactionGame|StrobeGen|Count[2]~DUPLICATE_q\ & ( \EntityReactionGame|StrobeGen|Count\(0) & ( (\EntityReactionGame|StrobeGen|Count[3]~DUPLICATE_q\ & 
-- \EntityReactionGame|StrobeGen|Count[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|StrobeGen|ALT_INV_Count[3]~DUPLICATE_q\,
	datad => \EntityReactionGame|StrobeGen|ALT_INV_Count[1]~DUPLICATE_q\,
	datae => \EntityReactionGame|StrobeGen|ALT_INV_Count[2]~DUPLICATE_q\,
	dataf => \EntityReactionGame|StrobeGen|ALT_INV_Count\(0),
	combout => \EntityReactionGame|StrobeGen|Equal0~2_combout\);

-- Location: MLABCELL_X78_Y3_N33
\EntityReactionGame|StrobeGen|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~25_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(11) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~2\ ))
-- \EntityReactionGame|StrobeGen|Add0~26\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(11) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|StrobeGen|ALT_INV_Count\(11),
	cin => \EntityReactionGame|StrobeGen|Add0~2\,
	sumout => \EntityReactionGame|StrobeGen|Add0~25_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~26\);

-- Location: FF_X78_Y3_N35
\EntityReactionGame|StrobeGen|Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~25_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(11));

-- Location: MLABCELL_X78_Y3_N36
\EntityReactionGame|StrobeGen|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~21_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(12) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~26\ ))
-- \EntityReactionGame|StrobeGen|Add0~22\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(12) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionGame|StrobeGen|ALT_INV_Count\(12),
	cin => \EntityReactionGame|StrobeGen|Add0~26\,
	sumout => \EntityReactionGame|StrobeGen|Add0~21_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~22\);

-- Location: FF_X78_Y3_N38
\EntityReactionGame|StrobeGen|Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~21_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(12));

-- Location: MLABCELL_X78_Y3_N39
\EntityReactionGame|StrobeGen|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~17_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(13) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~22\ ))
-- \EntityReactionGame|StrobeGen|Add0~18\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(13) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionGame|StrobeGen|ALT_INV_Count\(13),
	cin => \EntityReactionGame|StrobeGen|Add0~22\,
	sumout => \EntityReactionGame|StrobeGen|Add0~17_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~18\);

-- Location: FF_X78_Y3_N40
\EntityReactionGame|StrobeGen|Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~17_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(13));

-- Location: MLABCELL_X78_Y3_N42
\EntityReactionGame|StrobeGen|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~13_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(14) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~18\ ))
-- \EntityReactionGame|StrobeGen|Add0~14\ = CARRY(( \EntityReactionGame|StrobeGen|Count\(14) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|StrobeGen|ALT_INV_Count\(14),
	cin => \EntityReactionGame|StrobeGen|Add0~18\,
	sumout => \EntityReactionGame|StrobeGen|Add0~13_sumout\,
	cout => \EntityReactionGame|StrobeGen|Add0~14\);

-- Location: FF_X78_Y3_N43
\EntityReactionGame|StrobeGen|Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~13_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(14));

-- Location: FF_X78_Y3_N47
\EntityReactionGame|StrobeGen|Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~9_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count\(15));

-- Location: MLABCELL_X78_Y3_N45
\EntityReactionGame|StrobeGen|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Add0~9_sumout\ = SUM(( \EntityReactionGame|StrobeGen|Count\(15) ) + ( GND ) + ( \EntityReactionGame|StrobeGen|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionGame|StrobeGen|ALT_INV_Count\(15),
	cin => \EntityReactionGame|StrobeGen|Add0~14\,
	sumout => \EntityReactionGame|StrobeGen|Add0~9_sumout\);

-- Location: FF_X78_Y3_N46
\EntityReactionGame|StrobeGen|Count[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~9_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count[15]~DUPLICATE_q\);

-- Location: FF_X78_Y3_N34
\EntityReactionGame|StrobeGen|Count[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~25_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count[11]~DUPLICATE_q\);

-- Location: FF_X78_Y3_N37
\EntityReactionGame|StrobeGen|Count[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|StrobeGen|Add0~21_sumout\,
	clrn => \SW[0]~input_o\,
	sclr => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|Count[12]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y3_N30
\EntityReactionGame|StrobeGen|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Equal0~0_combout\ = ( !\EntityReactionGame|StrobeGen|Count[11]~DUPLICATE_q\ & ( !\EntityReactionGame|StrobeGen|Count[12]~DUPLICATE_q\ & ( (!\EntityReactionGame|StrobeGen|Count\(13) & (\EntityReactionGame|StrobeGen|Count\(14) 
-- & \EntityReactionGame|StrobeGen|Count[15]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|StrobeGen|ALT_INV_Count\(13),
	datab => \EntityReactionGame|StrobeGen|ALT_INV_Count\(14),
	datac => \EntityReactionGame|StrobeGen|ALT_INV_Count[15]~DUPLICATE_q\,
	datae => \EntityReactionGame|StrobeGen|ALT_INV_Count[11]~DUPLICATE_q\,
	dataf => \EntityReactionGame|StrobeGen|ALT_INV_Count[12]~DUPLICATE_q\,
	combout => \EntityReactionGame|StrobeGen|Equal0~0_combout\);

-- Location: MLABCELL_X78_Y3_N51
\EntityReactionGame|StrobeGen|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|StrobeGen|Equal0~3_combout\ = ( \EntityReactionGame|StrobeGen|Equal0~2_combout\ & ( \EntityReactionGame|StrobeGen|Equal0~0_combout\ & ( (\EntityReactionGame|StrobeGen|Equal0~1_combout\ & (!\EntityReactionGame|StrobeGen|Count\(10) & 
-- !\EntityReactionGame|StrobeGen|Count\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|StrobeGen|ALT_INV_Equal0~1_combout\,
	datab => \EntityReactionGame|StrobeGen|ALT_INV_Count\(10),
	datac => \EntityReactionGame|StrobeGen|ALT_INV_Count\(4),
	datae => \EntityReactionGame|StrobeGen|ALT_INV_Equal0~2_combout\,
	dataf => \EntityReactionGame|StrobeGen|ALT_INV_Equal0~0_combout\,
	combout => \EntityReactionGame|StrobeGen|Equal0~3_combout\);

-- Location: FF_X78_Y3_N50
\EntityReactionGame|StrobeGen|oStrobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \EntityReactionGame|StrobeGen|Equal0~3_combout\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|StrobeGen|oStrobe~q\);

-- Location: FF_X64_Y2_N8
\EntityReactionGame|EdgeDetectionB|SyncPrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \EntitySyncB|MightMetha\(2),
	clrn => \SW[0]~input_o\,
	sload => VCC,
	ena => \EntityReactionGame|StrobeGen|oStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|EdgeDetectionB|SyncPrev~q\);

-- Location: LABCELL_X64_Y2_N6
\EntityReactionGame|EntityReactionFSM|State~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|EntityReactionFSM|State~14_combout\ = ( \EntityReactionGame|StrobeGen|oStrobe~q\ & ( \EntityReactionGame|EntityReactionFSM|State.Unlocked~q\ & ( (!\EntityReactionGame|EdgeDetectionB|SyncPrev~q\ & \EntitySyncB|MightMetha\(2)) ) ) ) # ( 
-- \EntityReactionGame|StrobeGen|oStrobe~q\ & ( !\EntityReactionGame|EntityReactionFSM|State.Unlocked~q\ & ( (!\EntityReactionGame|EntityReactionFSM|State.ShowResult~q\) # ((!\EntityReactionGame|EdgeDetectionB|SyncPrev~q\ & \EntitySyncB|MightMetha\(2))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011101010111000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.ShowResult~q\,
	datab => \EntityReactionGame|EdgeDetectionB|ALT_INV_SyncPrev~q\,
	datac => \EntitySyncB|ALT_INV_MightMetha\(2),
	datae => \EntityReactionGame|StrobeGen|ALT_INV_oStrobe~q\,
	dataf => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Unlocked~q\,
	combout => \EntityReactionGame|EntityReactionFSM|State~14_combout\);

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

-- Location: LABCELL_X42_Y2_N18
\EntitySyncA|MightMetha[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntitySyncA|MightMetha[1]~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \EntitySyncA|MightMetha[1]~0_combout\);

-- Location: FF_X42_Y2_N20
\EntitySyncA|MightMetha[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntitySyncA|MightMetha[1]~0_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntitySyncA|MightMetha\(1));

-- Location: FF_X42_Y2_N38
\EntitySyncA|MightMetha[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \EntitySyncA|MightMetha\(1),
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntitySyncA|MightMetha\(2));

-- Location: FF_X64_Y2_N14
\EntityReactionGame|EdgeDetectionA|SyncPrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \EntitySyncA|MightMetha\(2),
	clrn => \SW[0]~input_o\,
	sload => VCC,
	ena => \EntityReactionGame|StrobeGen|oStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|EdgeDetectionA|SyncPrev~q\);

-- Location: LABCELL_X61_Y2_N33
\EntityReactionGame|EntityReactionFSM|State~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|EntityReactionFSM|State~15_combout\ = ( \EntitySyncA|MightMetha\(2) & ( (\EntityReactionGame|EntityReactionFSM|State~14_combout\ & (((!\EntityReactionGame|EdgeDetectionA|SyncPrev~q\) # 
-- (\EntityReactionGame|EntityReactionFSM|State.ShowResult~q\)) # (\EntityReactionGame|EntityReactionFSM|State.Unlocked~q\))) ) ) # ( !\EntitySyncA|MightMetha\(2) & ( (\EntityReactionGame|EntityReactionFSM|State~14_combout\ & 
-- ((\EntityReactionGame|EntityReactionFSM|State.ShowResult~q\) # (\EntityReactionGame|EntityReactionFSM|State.Unlocked~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100110001001100110011000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Unlocked~q\,
	datab => \EntityReactionGame|EntityReactionFSM|ALT_INV_State~14_combout\,
	datac => \EntityReactionGame|EdgeDetectionA|ALT_INV_SyncPrev~q\,
	datad => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.ShowResult~q\,
	dataf => \EntitySyncA|ALT_INV_MightMetha\(2),
	combout => \EntityReactionGame|EntityReactionFSM|State~15_combout\);

-- Location: FF_X61_Y2_N31
\EntityReactionGame|EntityReactionFSM|State.Unlocked\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|EntityReactionFSM|State.Unlocked~0_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|EntityReactionFSM|State~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|EntityReactionFSM|State.Unlocked~q\);

-- Location: LABCELL_X64_Y2_N12
\EntityReactionGame|EntityReactionFSM|State~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|EntityReactionFSM|State~12_combout\ = ( \EntitySyncA|MightMetha\(2) & ( \EntityReactionGame|EntityReactionFSM|State.Locked~q\ & ( (\EntityReactionGame|StrobeGen|oStrobe~q\ & 
-- ((!\EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\) # (!\EntityReactionGame|EdgeDetectionA|SyncPrev~q\))) ) ) ) # ( !\EntitySyncA|MightMetha\(2) & ( \EntityReactionGame|EntityReactionFSM|State.Locked~q\ & ( 
-- (!\EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\ & \EntityReactionGame|StrobeGen|oStrobe~q\) ) ) ) # ( \EntitySyncA|MightMetha\(2) & ( !\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & ( (!\EntityReactionGame|EdgeDetectionA|SyncPrev~q\ 
-- & \EntityReactionGame|StrobeGen|oStrobe~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000001010000010100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.CountUpTime~q\,
	datab => \EntityReactionGame|EdgeDetectionA|ALT_INV_SyncPrev~q\,
	datac => \EntityReactionGame|StrobeGen|ALT_INV_oStrobe~q\,
	datae => \EntitySyncA|ALT_INV_MightMetha\(2),
	dataf => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	combout => \EntityReactionGame|EntityReactionFSM|State~12_combout\);

-- Location: LABCELL_X64_Y2_N33
\EntityReactionGame|EntityReactionFSM|State~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|EntityReactionFSM|State~13_combout\ = ( \EntityReactionGame|EntityReactionFSM|State.Locked~q\ & ( (\EntityReactionGame|EntityReactionFSM|State~12_combout\ & (((\EntitySyncB|MightMetha\(2) & 
-- !\EntityReactionGame|EdgeDetectionB|SyncPrev~q\)) # (\EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\))) ) ) # ( !\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & ( \EntityReactionGame|EntityReactionFSM|State~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100010000001100110001000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntitySyncB|ALT_INV_MightMetha\(2),
	datab => \EntityReactionGame|EntityReactionFSM|ALT_INV_State~12_combout\,
	datac => \EntityReactionGame|EdgeDetectionB|ALT_INV_SyncPrev~q\,
	datad => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.CountUpTime~q\,
	dataf => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	combout => \EntityReactionGame|EntityReactionFSM|State~13_combout\);

-- Location: FF_X64_Y2_N35
\EntityReactionGame|EntityReactionFSM|State.CountUpTime\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \EntityReactionGame|EntityReactionFSM|State.Unlocked~q\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	ena => \EntityReactionGame|EntityReactionFSM|State~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\);

-- Location: FF_X61_Y2_N35
\EntityReactionGame|EntityReactionFSM|State.ShowResult\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	ena => \EntityReactionGame|EntityReactionFSM|State~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|EntityReactionFSM|State.ShowResult~q\);

-- Location: LABCELL_X64_Y2_N30
\EntityReactionGame|EntityReactionFSM|State.Locked~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|EntityReactionFSM|State.Locked~0_combout\ = !\EntityReactionGame|EntityReactionFSM|State.ShowResult~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.ShowResult~q\,
	combout => \EntityReactionGame|EntityReactionFSM|State.Locked~0_combout\);

-- Location: FF_X64_Y2_N31
\EntityReactionGame|EntityReactionFSM|State.Locked\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|EntityReactionFSM|State.Locked~0_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|EntityReactionFSM|State~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|EntityReactionFSM|State.Locked~q\);

-- Location: MLABCELL_X84_Y8_N0
\EntityReactionGame|CounterLow|oCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterLow|oCount~0_combout\ = ( !\EntityReactionGame|CounterLow|oCount\(1) & ( \EntityReactionGame|EntityReactionFSM|State.Locked~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datae => \EntityReactionGame|CounterLow|ALT_INV_oCount\(1),
	combout => \EntityReactionGame|CounterLow|oCount~0_combout\);

-- Location: MLABCELL_X84_Y8_N48
\EntityReactionGame|CounterLow|oCount[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterLow|oCount[4]~1_combout\ = ( \EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\ & ( \EntityReactionGame|StrobeGen|oStrobe~q\ ) ) # ( !\EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\ & ( 
-- \EntityReactionGame|StrobeGen|oStrobe~q\ & ( !\EntityReactionGame|EntityReactionFSM|State.Locked~q\ ) ) ) # ( \EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\ & ( !\EntityReactionGame|StrobeGen|oStrobe~q\ & ( 
-- !\EntityReactionGame|EntityReactionFSM|State.Locked~q\ ) ) ) # ( !\EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\ & ( !\EntityReactionGame|StrobeGen|oStrobe~q\ & ( !\EntityReactionGame|EntityReactionFSM|State.Locked~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datae => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.CountUpTime~q\,
	dataf => \EntityReactionGame|StrobeGen|ALT_INV_oStrobe~q\,
	combout => \EntityReactionGame|CounterLow|oCount[4]~1_combout\);

-- Location: FF_X84_Y8_N2
\EntityReactionGame|CounterLow|oCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterLow|oCount~0_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterLow|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterLow|oCount\(1));

-- Location: MLABCELL_X84_Y8_N15
\EntityReactionGame|CounterLow|oCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterLow|oCount~3_combout\ = ( \EntityReactionGame|CounterLow|oCount\(3) & ( \EntityReactionGame|CounterLow|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & !\EntityReactionGame|CounterLow|oCount\(1)) ) ) ) # ( 
-- !\EntityReactionGame|CounterLow|oCount\(3) & ( \EntityReactionGame|CounterLow|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & \EntityReactionGame|CounterLow|oCount\(1)) ) ) ) # ( \EntityReactionGame|CounterLow|oCount\(3) & ( 
-- !\EntityReactionGame|CounterLow|oCount\(2) & ( \EntityReactionGame|EntityReactionFSM|State.Locked~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datad => \EntityReactionGame|CounterLow|ALT_INV_oCount\(1),
	datae => \EntityReactionGame|CounterLow|ALT_INV_oCount\(3),
	dataf => \EntityReactionGame|CounterLow|ALT_INV_oCount\(2),
	combout => \EntityReactionGame|CounterLow|oCount~3_combout\);

-- Location: FF_X84_Y8_N17
\EntityReactionGame|CounterLow|oCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterLow|oCount~3_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterLow|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterLow|oCount\(3));

-- Location: MLABCELL_X84_Y8_N18
\EntityReactionGame|CounterLow|oCount~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterLow|oCount~4_combout\ = ( \EntityReactionGame|CounterLow|oCount\(4) & ( \EntityReactionGame|CounterLow|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & ((!\EntityReactionGame|CounterLow|oCount\(1)) # 
-- (!\EntityReactionGame|CounterLow|oCount\(3)))) ) ) ) # ( !\EntityReactionGame|CounterLow|oCount\(4) & ( \EntityReactionGame|CounterLow|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & (\EntityReactionGame|CounterLow|oCount\(1) & 
-- \EntityReactionGame|CounterLow|oCount\(3))) ) ) ) # ( \EntityReactionGame|CounterLow|oCount\(4) & ( !\EntityReactionGame|CounterLow|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & ((!\EntityReactionGame|CounterLow|oCount\(1)) # 
-- (\EntityReactionGame|CounterLow|oCount\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011001100000000000000110011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datac => \EntityReactionGame|CounterLow|ALT_INV_oCount\(1),
	datad => \EntityReactionGame|CounterLow|ALT_INV_oCount\(3),
	datae => \EntityReactionGame|CounterLow|ALT_INV_oCount\(4),
	dataf => \EntityReactionGame|CounterLow|ALT_INV_oCount\(2),
	combout => \EntityReactionGame|CounterLow|oCount~4_combout\);

-- Location: FF_X84_Y8_N20
\EntityReactionGame|CounterLow|oCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterLow|oCount~4_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterLow|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterLow|oCount\(4));

-- Location: FF_X84_Y8_N1
\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterLow|oCount~0_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterLow|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y8_N39
\EntityReactionGame|CounterLow|oCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterLow|oCount~2_combout\ = ( !\EntityReactionGame|CounterLow|oCount\(2) & ( \EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & 
-- ((!\EntityReactionGame|CounterLow|oCount\(4)) # (\EntityReactionGame|CounterLow|oCount\(3)))) ) ) ) # ( \EntityReactionGame|CounterLow|oCount\(2) & ( !\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ & ( 
-- \EntityReactionGame|EntityReactionFSM|State.Locked~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001011000010110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterLow|ALT_INV_oCount\(4),
	datab => \EntityReactionGame|CounterLow|ALT_INV_oCount\(3),
	datac => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datae => \EntityReactionGame|CounterLow|ALT_INV_oCount\(2),
	dataf => \EntityReactionGame|CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \EntityReactionGame|CounterLow|oCount~2_combout\);

-- Location: FF_X84_Y8_N40
\EntityReactionGame|CounterLow|oCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterLow|oCount~2_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterLow|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterLow|oCount\(2));

-- Location: FF_X84_Y8_N16
\EntityReactionGame|CounterLow|oCount[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterLow|oCount~3_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterLow|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y8_N27
\EntityReactionGame|HexDecoderLow|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderLow|Mux6~0_combout\ = ( \EntityReactionGame|CounterLow|oCount\(4) & ( (\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ & (!\EntityReactionGame|CounterLow|oCount\(2) $ 
-- (!\EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\))) ) ) # ( !\EntityReactionGame|CounterLow|oCount\(4) & ( (!\EntityReactionGame|CounterLow|oCount\(2) & (!\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ $ 
-- (!\EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterLow|ALT_INV_oCount\(2),
	datab => \EntityReactionGame|CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	datac => \EntityReactionGame|CounterLow|ALT_INV_oCount[3]~DUPLICATE_q\,
	dataf => \EntityReactionGame|CounterLow|ALT_INV_oCount\(4),
	combout => \EntityReactionGame|HexDecoderLow|Mux6~0_combout\);

-- Location: MLABCELL_X84_Y8_N30
\EntityReactionGame|HexDecoderLow|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderLow|Mux5~0_combout\ = ( \EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\ & ( (!\EntityReactionGame|CounterLow|oCount\(4) & (!\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ $ 
-- (!\EntityReactionGame|CounterLow|oCount\(2)))) # (\EntityReactionGame|CounterLow|oCount\(4) & ((!\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\) # (\EntityReactionGame|CounterLow|oCount\(2)))) ) ) # ( 
-- !\EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\ & ( (\EntityReactionGame|CounterLow|oCount\(4) & (\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ & \EntityReactionGame|CounterLow|oCount\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101101011011010110110101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterLow|ALT_INV_oCount\(4),
	datab => \EntityReactionGame|CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	datac => \EntityReactionGame|CounterLow|ALT_INV_oCount\(2),
	dataf => \EntityReactionGame|CounterLow|ALT_INV_oCount[3]~DUPLICATE_q\,
	combout => \EntityReactionGame|HexDecoderLow|Mux5~0_combout\);

-- Location: MLABCELL_X84_Y8_N33
\EntityReactionGame|HexDecoderLow|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderLow|Mux4~0_combout\ = ( \EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\ & ( (\EntityReactionGame|CounterLow|oCount\(4) & ((!\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\) # 
-- (\EntityReactionGame|CounterLow|oCount\(2)))) ) ) # ( !\EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\ & ( (!\EntityReactionGame|CounterLow|oCount\(4) & (!\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ & 
-- \EntityReactionGame|CounterLow|oCount\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterLow|ALT_INV_oCount\(4),
	datac => \EntityReactionGame|CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	datad => \EntityReactionGame|CounterLow|ALT_INV_oCount\(2),
	dataf => \EntityReactionGame|CounterLow|ALT_INV_oCount[3]~DUPLICATE_q\,
	combout => \EntityReactionGame|HexDecoderLow|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y8_N6
\EntityReactionGame|HexDecoderLow|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderLow|Mux3~0_combout\ = ( \EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\ & ( (!\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ & (!\EntityReactionGame|CounterLow|oCount\(4) & 
-- !\EntityReactionGame|CounterLow|oCount\(2))) # (\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ & ((\EntityReactionGame|CounterLow|oCount\(2)))) ) ) # ( !\EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\ & ( 
-- (!\EntityReactionGame|CounterLow|oCount\(4) & (\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ & !\EntityReactionGame|CounterLow|oCount\(2))) # (\EntityReactionGame|CounterLow|oCount\(4) & (!\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ & 
-- \EntityReactionGame|CounterLow|oCount\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterLow|ALT_INV_oCount\(4),
	datab => \EntityReactionGame|CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	datac => \EntityReactionGame|CounterLow|ALT_INV_oCount\(2),
	dataf => \EntityReactionGame|CounterLow|ALT_INV_oCount[3]~DUPLICATE_q\,
	combout => \EntityReactionGame|HexDecoderLow|Mux3~0_combout\);

-- Location: MLABCELL_X84_Y8_N9
\EntityReactionGame|HexDecoderLow|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderLow|Mux2~0_combout\ = ( \EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\ & ( (!\EntityReactionGame|CounterLow|oCount\(4) & ((!\EntityReactionGame|CounterLow|oCount\(2)) # 
-- (\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\))) ) ) # ( !\EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\ & ( (\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ & ((!\EntityReactionGame|CounterLow|oCount\(4)) # 
-- (!\EntityReactionGame|CounterLow|oCount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterLow|ALT_INV_oCount\(4),
	datac => \EntityReactionGame|CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	datad => \EntityReactionGame|CounterLow|ALT_INV_oCount\(2),
	dataf => \EntityReactionGame|CounterLow|ALT_INV_oCount[3]~DUPLICATE_q\,
	combout => \EntityReactionGame|HexDecoderLow|Mux2~0_combout\);

-- Location: MLABCELL_X84_Y8_N42
\EntityReactionGame|HexDecoderLow|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderLow|Mux1~0_combout\ = ( \EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\ & ( (\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\ & (!\EntityReactionGame|CounterLow|oCount\(2) $ 
-- (!\EntityReactionGame|CounterLow|oCount\(4)))) ) ) # ( !\EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\ & ( (!\EntityReactionGame|CounterLow|oCount\(4) & ((\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\) # 
-- (\EntityReactionGame|CounterLow|oCount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterLow|ALT_INV_oCount\(2),
	datab => \EntityReactionGame|CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	datac => \EntityReactionGame|CounterLow|ALT_INV_oCount\(4),
	dataf => \EntityReactionGame|CounterLow|ALT_INV_oCount[3]~DUPLICATE_q\,
	combout => \EntityReactionGame|HexDecoderLow|Mux1~0_combout\);

-- Location: MLABCELL_X84_Y8_N45
\EntityReactionGame|HexDecoderLow|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderLow|Mux0~0_combout\ = ( \EntityReactionGame|CounterLow|oCount\(4) & ( ((!\EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\) # (\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\)) # 
-- (\EntityReactionGame|CounterLow|oCount\(2)) ) ) # ( !\EntityReactionGame|CounterLow|oCount\(4) & ( (!\EntityReactionGame|CounterLow|oCount\(2) & ((\EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\))) # (\EntityReactionGame|CounterLow|oCount\(2) & 
-- ((!\EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\) # (!\EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111001011110010111100101111011110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterLow|ALT_INV_oCount\(2),
	datab => \EntityReactionGame|CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	datac => \EntityReactionGame|CounterLow|ALT_INV_oCount[3]~DUPLICATE_q\,
	dataf => \EntityReactionGame|CounterLow|ALT_INV_oCount\(4),
	combout => \EntityReactionGame|HexDecoderLow|Mux0~0_combout\);

-- Location: MLABCELL_X84_Y8_N54
\EntityReactionGame|CounterLow|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterLow|Equal0~0_combout\ = ( \EntityReactionGame|CounterLow|oCount\(4) & ( (!\EntityReactionGame|CounterLow|oCount[3]~DUPLICATE_q\ & (!\EntityReactionGame|CounterLow|oCount\(2) & 
-- \EntityReactionGame|CounterLow|oCount[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|CounterLow|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \EntityReactionGame|CounterLow|ALT_INV_oCount\(2),
	datad => \EntityReactionGame|CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	dataf => \EntityReactionGame|CounterLow|ALT_INV_oCount\(4),
	combout => \EntityReactionGame|CounterLow|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y9_N51
\EntityReactionGame|CounterMid|oCount[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterMid|oCount[4]~1_combout\ = ( \EntityReactionGame|CounterLow|Equal0~0_combout\ & ( (!\EntityReactionGame|EntityReactionFSM|State.Locked~q\) # ((\EntityReactionGame|StrobeGen|oStrobe~q\ & 
-- \EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\)) ) ) # ( !\EntityReactionGame|CounterLow|Equal0~0_combout\ & ( !\EntityReactionGame|EntityReactionFSM|State.Locked~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110111011100110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|StrobeGen|ALT_INV_oStrobe~q\,
	datab => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datad => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.CountUpTime~q\,
	dataf => \EntityReactionGame|CounterLow|ALT_INV_Equal0~0_combout\,
	combout => \EntityReactionGame|CounterMid|oCount[4]~1_combout\);

-- Location: FF_X84_Y9_N35
\EntityReactionGame|CounterMid|oCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterMid|oCount~0_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterMid|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterMid|oCount\(1));

-- Location: MLABCELL_X84_Y9_N33
\EntityReactionGame|CounterMid|oCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterMid|oCount~0_combout\ = ( !\EntityReactionGame|CounterMid|oCount\(1) & ( \EntityReactionGame|EntityReactionFSM|State.Locked~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datae => \EntityReactionGame|CounterMid|ALT_INV_oCount\(1),
	combout => \EntityReactionGame|CounterMid|oCount~0_combout\);

-- Location: FF_X84_Y9_N34
\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterMid|oCount~0_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterMid|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y9_N12
\EntityReactionGame|CounterMid|oCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterMid|oCount~3_combout\ = ( \EntityReactionGame|CounterMid|oCount\(3) & ( \EntityReactionGame|CounterMid|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & !\EntityReactionGame|CounterMid|oCount\(1)) ) ) ) # ( 
-- !\EntityReactionGame|CounterMid|oCount\(3) & ( \EntityReactionGame|CounterMid|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & \EntityReactionGame|CounterMid|oCount\(1)) ) ) ) # ( \EntityReactionGame|CounterMid|oCount\(3) & ( 
-- !\EntityReactionGame|CounterMid|oCount\(2) & ( \EntityReactionGame|EntityReactionFSM|State.Locked~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000011000000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datac => \EntityReactionGame|CounterMid|ALT_INV_oCount\(1),
	datae => \EntityReactionGame|CounterMid|ALT_INV_oCount\(3),
	dataf => \EntityReactionGame|CounterMid|ALT_INV_oCount\(2),
	combout => \EntityReactionGame|CounterMid|oCount~3_combout\);

-- Location: FF_X84_Y9_N14
\EntityReactionGame|CounterMid|oCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterMid|oCount~3_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterMid|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterMid|oCount\(3));

-- Location: MLABCELL_X84_Y9_N21
\EntityReactionGame|CounterMid|oCount~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterMid|oCount~4_combout\ = ( \EntityReactionGame|CounterMid|oCount\(4) & ( \EntityReactionGame|CounterMid|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & ((!\EntityReactionGame|CounterMid|oCount\(3)) # 
-- (!\EntityReactionGame|CounterMid|oCount\(1)))) ) ) ) # ( !\EntityReactionGame|CounterMid|oCount\(4) & ( \EntityReactionGame|CounterMid|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & (\EntityReactionGame|CounterMid|oCount\(3) & 
-- \EntityReactionGame|CounterMid|oCount\(1))) ) ) ) # ( \EntityReactionGame|CounterMid|oCount\(4) & ( !\EntityReactionGame|CounterMid|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & ((!\EntityReactionGame|CounterMid|oCount\(1)) # 
-- (\EntityReactionGame|CounterMid|oCount\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000001100000000000000110011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datac => \EntityReactionGame|CounterMid|ALT_INV_oCount\(3),
	datad => \EntityReactionGame|CounterMid|ALT_INV_oCount\(1),
	datae => \EntityReactionGame|CounterMid|ALT_INV_oCount\(4),
	dataf => \EntityReactionGame|CounterMid|ALT_INV_oCount\(2),
	combout => \EntityReactionGame|CounterMid|oCount~4_combout\);

-- Location: FF_X84_Y9_N22
\EntityReactionGame|CounterMid|oCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterMid|oCount~4_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterMid|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterMid|oCount\(4));

-- Location: FF_X84_Y9_N13
\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterMid|oCount~3_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterMid|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y9_N6
\EntityReactionGame|CounterMid|oCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterMid|oCount~2_combout\ = ( \EntityReactionGame|CounterMid|oCount\(2) & ( \EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\ & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & 
-- !\EntityReactionGame|CounterMid|oCount\(1)) ) ) ) # ( !\EntityReactionGame|CounterMid|oCount\(2) & ( \EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\ & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & 
-- \EntityReactionGame|CounterMid|oCount\(1)) ) ) ) # ( \EntityReactionGame|CounterMid|oCount\(2) & ( !\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\ & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & 
-- !\EntityReactionGame|CounterMid|oCount\(1)) ) ) ) # ( !\EntityReactionGame|CounterMid|oCount\(2) & ( !\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\ & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & 
-- (\EntityReactionGame|CounterMid|oCount\(1) & !\EntityReactionGame|CounterMid|oCount\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000001100000011000000000011000000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datac => \EntityReactionGame|CounterMid|ALT_INV_oCount\(1),
	datad => \EntityReactionGame|CounterMid|ALT_INV_oCount\(4),
	datae => \EntityReactionGame|CounterMid|ALT_INV_oCount\(2),
	dataf => \EntityReactionGame|CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	combout => \EntityReactionGame|CounterMid|oCount~2_combout\);

-- Location: FF_X84_Y9_N7
\EntityReactionGame|CounterMid|oCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterMid|oCount~2_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterMid|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterMid|oCount\(2));

-- Location: MLABCELL_X84_Y9_N27
\EntityReactionGame|HexDecoderMid|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderMid|Mux6~0_combout\ = ( \EntityReactionGame|CounterMid|oCount\(4) & ( (\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ & (!\EntityReactionGame|CounterMid|oCount\(2) $ 
-- (!\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\))) ) ) # ( !\EntityReactionGame|CounterMid|oCount\(4) & ( (!\EntityReactionGame|CounterMid|oCount\(2) & (!\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ $ 
-- (!\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	datab => \EntityReactionGame|CounterMid|ALT_INV_oCount\(2),
	datac => \EntityReactionGame|CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	dataf => \EntityReactionGame|CounterMid|ALT_INV_oCount\(4),
	combout => \EntityReactionGame|HexDecoderMid|Mux6~0_combout\);

-- Location: MLABCELL_X84_Y9_N3
\EntityReactionGame|HexDecoderMid|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderMid|Mux5~0_combout\ = ( \EntityReactionGame|CounterMid|oCount\(4) & ( (!\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ & ((\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\))) # 
-- (\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ & (\EntityReactionGame|CounterMid|oCount\(2))) ) ) # ( !\EntityReactionGame|CounterMid|oCount\(4) & ( (\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\ & 
-- (!\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ $ (!\EntityReactionGame|CounterMid|oCount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	datac => \EntityReactionGame|CounterMid|ALT_INV_oCount\(2),
	datad => \EntityReactionGame|CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	dataf => \EntityReactionGame|CounterMid|ALT_INV_oCount\(4),
	combout => \EntityReactionGame|HexDecoderMid|Mux5~0_combout\);

-- Location: MLABCELL_X84_Y9_N36
\EntityReactionGame|HexDecoderMid|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderMid|Mux4~0_combout\ = ( \EntityReactionGame|CounterMid|oCount\(4) & ( (\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\ & ((!\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\) # 
-- (\EntityReactionGame|CounterMid|oCount\(2)))) ) ) # ( !\EntityReactionGame|CounterMid|oCount\(4) & ( (!\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ & (\EntityReactionGame|CounterMid|oCount\(2) & 
-- !\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	datab => \EntityReactionGame|CounterMid|ALT_INV_oCount\(2),
	datac => \EntityReactionGame|CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	dataf => \EntityReactionGame|CounterMid|ALT_INV_oCount\(4),
	combout => \EntityReactionGame|HexDecoderMid|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y9_N39
\EntityReactionGame|HexDecoderMid|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderMid|Mux3~0_combout\ = ( \EntityReactionGame|CounterMid|oCount\(4) & ( (\EntityReactionGame|CounterMid|oCount\(2) & (!\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ $ 
-- (\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\))) ) ) # ( !\EntityReactionGame|CounterMid|oCount\(4) & ( (!\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ & (!\EntityReactionGame|CounterMid|oCount\(2) & 
-- \EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\)) # (\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ & (!\EntityReactionGame|CounterMid|oCount\(2) $ (\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	datac => \EntityReactionGame|CounterMid|ALT_INV_oCount\(2),
	datad => \EntityReactionGame|CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	dataf => \EntityReactionGame|CounterMid|ALT_INV_oCount\(4),
	combout => \EntityReactionGame|HexDecoderMid|Mux3~0_combout\);

-- Location: MLABCELL_X84_Y9_N42
\EntityReactionGame|HexDecoderMid|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderMid|Mux2~0_combout\ = ( \EntityReactionGame|CounterMid|oCount\(4) & ( (\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ & (!\EntityReactionGame|CounterMid|oCount\(2) & 
-- !\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\)) ) ) # ( !\EntityReactionGame|CounterMid|oCount\(4) & ( ((!\EntityReactionGame|CounterMid|oCount\(2) & \EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\)) # 
-- (\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	datab => \EntityReactionGame|CounterMid|ALT_INV_oCount\(2),
	datac => \EntityReactionGame|CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	dataf => \EntityReactionGame|CounterMid|ALT_INV_oCount\(4),
	combout => \EntityReactionGame|HexDecoderMid|Mux2~0_combout\);

-- Location: MLABCELL_X84_Y9_N0
\EntityReactionGame|HexDecoderMid|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderMid|Mux1~0_combout\ = ( \EntityReactionGame|CounterMid|oCount\(4) & ( (\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ & (!\EntityReactionGame|CounterMid|oCount\(2) & 
-- \EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\)) ) ) # ( !\EntityReactionGame|CounterMid|oCount\(4) & ( (!\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ & (\EntityReactionGame|CounterMid|oCount\(2) & 
-- !\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\)) # (\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ & ((!\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\) # (\EntityReactionGame|CounterMid|oCount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	datab => \EntityReactionGame|CounterMid|ALT_INV_oCount\(2),
	datac => \EntityReactionGame|CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	dataf => \EntityReactionGame|CounterMid|ALT_INV_oCount\(4),
	combout => \EntityReactionGame|HexDecoderMid|Mux1~0_combout\);

-- Location: MLABCELL_X84_Y9_N45
\EntityReactionGame|HexDecoderMid|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderMid|Mux0~0_combout\ = ( \EntityReactionGame|CounterMid|oCount\(4) & ( ((!\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\) # (\EntityReactionGame|CounterMid|oCount\(2))) # 
-- (\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\) ) ) # ( !\EntityReactionGame|CounterMid|oCount\(4) & ( (!\EntityReactionGame|CounterMid|oCount\(2) & ((\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\))) # 
-- (\EntityReactionGame|CounterMid|oCount\(2) & ((!\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\) # (!\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111000111110001111100011111011110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	datab => \EntityReactionGame|CounterMid|ALT_INV_oCount\(2),
	datac => \EntityReactionGame|CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	dataf => \EntityReactionGame|CounterMid|ALT_INV_oCount\(4),
	combout => \EntityReactionGame|HexDecoderMid|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y21_N0
\EntityReactionGame|CounterHigh|oCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterHigh|oCount~0_combout\ = ( !\EntityReactionGame|CounterHigh|oCount\(1) & ( \EntityReactionGame|EntityReactionFSM|State.Locked~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datae => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(1),
	combout => \EntityReactionGame|CounterHigh|oCount~0_combout\);

-- Location: MLABCELL_X84_Y9_N54
\EntityReactionGame|CounterMid|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterMid|Equal0~0_combout\ = ( \EntityReactionGame|CounterMid|oCount\(4) & ( (!\EntityReactionGame|CounterMid|oCount[3]~DUPLICATE_q\ & (\EntityReactionGame|CounterMid|oCount[1]~DUPLICATE_q\ & 
-- !\EntityReactionGame|CounterMid|oCount\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \EntityReactionGame|CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	datad => \EntityReactionGame|CounterMid|ALT_INV_oCount\(2),
	dataf => \EntityReactionGame|CounterMid|ALT_INV_oCount\(4),
	combout => \EntityReactionGame|CounterMid|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y9_N48
\EntityReactionGame|CounterHigh|oCount[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterHigh|oCount[4]~1_combout\ = ( \EntityReactionGame|CounterLow|Equal0~0_combout\ & ( (!\EntityReactionGame|EntityReactionFSM|State.Locked~q\) # ((\EntityReactionGame|StrobeGen|oStrobe~q\ & 
-- (\EntityReactionGame|CounterMid|Equal0~0_combout\ & \EntityReactionGame|EntityReactionFSM|State.CountUpTime~q\))) ) ) # ( !\EntityReactionGame|CounterLow|Equal0~0_combout\ & ( !\EntityReactionGame|EntityReactionFSM|State.Locked~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|StrobeGen|ALT_INV_oStrobe~q\,
	datab => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datac => \EntityReactionGame|CounterMid|ALT_INV_Equal0~0_combout\,
	datad => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.CountUpTime~q\,
	dataf => \EntityReactionGame|CounterLow|ALT_INV_Equal0~0_combout\,
	combout => \EntityReactionGame|CounterHigh|oCount[4]~1_combout\);

-- Location: FF_X87_Y21_N2
\EntityReactionGame|CounterHigh|oCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterHigh|oCount~0_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterHigh|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterHigh|oCount\(1));

-- Location: FF_X87_Y21_N16
\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterHigh|oCount~3_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterHigh|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y21_N39
\EntityReactionGame|CounterHigh|oCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterHigh|oCount~2_combout\ = ( \EntityReactionGame|CounterHigh|oCount\(2) & ( \EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & 
-- !\EntityReactionGame|CounterHigh|oCount\(1)) ) ) ) # ( !\EntityReactionGame|CounterHigh|oCount\(2) & ( \EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & 
-- \EntityReactionGame|CounterHigh|oCount\(1)) ) ) ) # ( \EntityReactionGame|CounterHigh|oCount\(2) & ( !\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & 
-- !\EntityReactionGame|CounterHigh|oCount\(1)) ) ) ) # ( !\EntityReactionGame|CounterHigh|oCount\(2) & ( !\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & ( (!\EntityReactionGame|CounterHigh|oCount\(4) & 
-- (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & \EntityReactionGame|CounterHigh|oCount\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000011110000000000000000000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(4),
	datac => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datad => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(1),
	datae => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(2),
	dataf => \EntityReactionGame|CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	combout => \EntityReactionGame|CounterHigh|oCount~2_combout\);

-- Location: FF_X87_Y21_N41
\EntityReactionGame|CounterHigh|oCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterHigh|oCount~2_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterHigh|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterHigh|oCount\(2));

-- Location: MLABCELL_X87_Y21_N15
\EntityReactionGame|CounterHigh|oCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterHigh|oCount~3_combout\ = ( \EntityReactionGame|CounterHigh|oCount\(3) & ( \EntityReactionGame|CounterHigh|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & !\EntityReactionGame|CounterHigh|oCount\(1)) ) ) ) 
-- # ( !\EntityReactionGame|CounterHigh|oCount\(3) & ( \EntityReactionGame|CounterHigh|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & \EntityReactionGame|CounterHigh|oCount\(1)) ) ) ) # ( \EntityReactionGame|CounterHigh|oCount\(3) & 
-- ( !\EntityReactionGame|CounterHigh|oCount\(2) & ( \EntityReactionGame|EntityReactionFSM|State.Locked~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datad => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(1),
	datae => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(3),
	dataf => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(2),
	combout => \EntityReactionGame|CounterHigh|oCount~3_combout\);

-- Location: FF_X87_Y21_N17
\EntityReactionGame|CounterHigh|oCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterHigh|oCount~3_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterHigh|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterHigh|oCount\(3));

-- Location: MLABCELL_X87_Y21_N18
\EntityReactionGame|CounterHigh|oCount~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|CounterHigh|oCount~4_combout\ = ( \EntityReactionGame|CounterHigh|oCount\(4) & ( \EntityReactionGame|CounterHigh|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & ((!\EntityReactionGame|CounterHigh|oCount\(1)) # 
-- (!\EntityReactionGame|CounterHigh|oCount\(3)))) ) ) ) # ( !\EntityReactionGame|CounterHigh|oCount\(4) & ( \EntityReactionGame|CounterHigh|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & (\EntityReactionGame|CounterHigh|oCount\(1) & 
-- \EntityReactionGame|CounterHigh|oCount\(3))) ) ) ) # ( \EntityReactionGame|CounterHigh|oCount\(4) & ( !\EntityReactionGame|CounterHigh|oCount\(2) & ( (\EntityReactionGame|EntityReactionFSM|State.Locked~q\ & ((!\EntityReactionGame|CounterHigh|oCount\(1)) # 
-- (\EntityReactionGame|CounterHigh|oCount\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011001100000000000000110011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionGame|EntityReactionFSM|ALT_INV_State.Locked~q\,
	datac => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(1),
	datad => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(3),
	datae => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(4),
	dataf => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(2),
	combout => \EntityReactionGame|CounterHigh|oCount~4_combout\);

-- Location: FF_X87_Y21_N20
\EntityReactionGame|CounterHigh|oCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \EntityReactionGame|CounterHigh|oCount~4_combout\,
	clrn => \SW[0]~input_o\,
	ena => \EntityReactionGame|CounterHigh|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionGame|CounterHigh|oCount\(4));

-- Location: MLABCELL_X87_Y21_N57
\EntityReactionGame|HexDecoderHigh|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderHigh|Mux6~0_combout\ = ( \EntityReactionGame|CounterHigh|oCount\(1) & ( (!\EntityReactionGame|CounterHigh|oCount\(4) & (!\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & !\EntityReactionGame|CounterHigh|oCount\(2))) # 
-- (\EntityReactionGame|CounterHigh|oCount\(4) & (!\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ $ (!\EntityReactionGame|CounterHigh|oCount\(2)))) ) ) # ( !\EntityReactionGame|CounterHigh|oCount\(1) & ( (!\EntityReactionGame|CounterHigh|oCount\(4) & 
-- (\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & !\EntityReactionGame|CounterHigh|oCount\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100101010100001010010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(4),
	datac => \EntityReactionGame|CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	datad => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(2),
	dataf => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(1),
	combout => \EntityReactionGame|HexDecoderHigh|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y21_N30
\EntityReactionGame|HexDecoderHigh|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderHigh|Mux5~0_combout\ = ( \EntityReactionGame|CounterHigh|oCount\(1) & ( (!\EntityReactionGame|CounterHigh|oCount\(2) & (\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & !\EntityReactionGame|CounterHigh|oCount\(4))) # 
-- (\EntityReactionGame|CounterHigh|oCount\(2) & ((\EntityReactionGame|CounterHigh|oCount\(4)))) ) ) # ( !\EntityReactionGame|CounterHigh|oCount\(1) & ( (\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & ((\EntityReactionGame|CounterHigh|oCount\(4)) # 
-- (\EntityReactionGame|CounterHigh|oCount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(2),
	datab => \EntityReactionGame|CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(4),
	dataf => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(1),
	combout => \EntityReactionGame|HexDecoderHigh|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y21_N9
\EntityReactionGame|HexDecoderHigh|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderHigh|Mux4~0_combout\ = ( \EntityReactionGame|CounterHigh|oCount\(1) & ( (\EntityReactionGame|CounterHigh|oCount\(4) & (\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & \EntityReactionGame|CounterHigh|oCount\(2))) ) ) 
-- # ( !\EntityReactionGame|CounterHigh|oCount\(1) & ( (!\EntityReactionGame|CounterHigh|oCount\(4) & (!\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & \EntityReactionGame|CounterHigh|oCount\(2))) # (\EntityReactionGame|CounterHigh|oCount\(4) & 
-- (\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000001011010010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(4),
	datac => \EntityReactionGame|CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	datad => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(2),
	dataf => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(1),
	combout => \EntityReactionGame|HexDecoderHigh|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y21_N42
\EntityReactionGame|HexDecoderHigh|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderHigh|Mux3~0_combout\ = ( \EntityReactionGame|CounterHigh|oCount\(1) & ( (!\EntityReactionGame|CounterHigh|oCount\(2) & (!\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & !\EntityReactionGame|CounterHigh|oCount\(4))) # 
-- (\EntityReactionGame|CounterHigh|oCount\(2) & (\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\)) ) ) # ( !\EntityReactionGame|CounterHigh|oCount\(1) & ( (!\EntityReactionGame|CounterHigh|oCount\(2) & 
-- (\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & !\EntityReactionGame|CounterHigh|oCount\(4))) # (\EntityReactionGame|CounterHigh|oCount\(2) & (!\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & \EntityReactionGame|CounterHigh|oCount\(4))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(2),
	datab => \EntityReactionGame|CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(4),
	dataf => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(1),
	combout => \EntityReactionGame|HexDecoderHigh|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y21_N51
\EntityReactionGame|HexDecoderHigh|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderHigh|Mux2~0_combout\ = ( \EntityReactionGame|CounterHigh|oCount\(1) & ( (!\EntityReactionGame|CounterHigh|oCount\(4)) # ((!\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & !\EntityReactionGame|CounterHigh|oCount\(2))) 
-- ) ) # ( !\EntityReactionGame|CounterHigh|oCount\(1) & ( (!\EntityReactionGame|CounterHigh|oCount\(4) & (\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & !\EntityReactionGame|CounterHigh|oCount\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(4),
	datac => \EntityReactionGame|CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	datad => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(2),
	dataf => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(1),
	combout => \EntityReactionGame|HexDecoderHigh|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y21_N24
\EntityReactionGame|HexDecoderHigh|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderHigh|Mux1~0_combout\ = ( \EntityReactionGame|CounterHigh|oCount\(1) & ( !\EntityReactionGame|CounterHigh|oCount\(4) $ (((\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & !\EntityReactionGame|CounterHigh|oCount\(2)))) 
-- ) ) # ( !\EntityReactionGame|CounterHigh|oCount\(1) & ( (!\EntityReactionGame|CounterHigh|oCount\(4) & (!\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ & \EntityReactionGame|CounterHigh|oCount\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010011010100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(4),
	datab => \EntityReactionGame|CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(2),
	dataf => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(1),
	combout => \EntityReactionGame|HexDecoderHigh|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y21_N27
\EntityReactionGame|HexDecoderHigh|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionGame|HexDecoderHigh|Mux0~0_combout\ = ( \EntityReactionGame|CounterHigh|oCount\(1) & ( (!\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\ $ (!\EntityReactionGame|CounterHigh|oCount\(2))) # (\EntityReactionGame|CounterHigh|oCount\(4)) 
-- ) ) # ( !\EntityReactionGame|CounterHigh|oCount\(1) & ( (!\EntityReactionGame|CounterHigh|oCount\(4) $ (!\EntityReactionGame|CounterHigh|oCount[3]~DUPLICATE_q\)) # (\EntityReactionGame|CounterHigh|oCount\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111101101111011011110110111101111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(4),
	datab => \EntityReactionGame|CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(2),
	dataf => \EntityReactionGame|CounterHigh|ALT_INV_oCount\(1),
	combout => \EntityReactionGame|HexDecoderHigh|Mux0~0_combout\);

-- Location: MLABCELL_X21_Y56_N0
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


