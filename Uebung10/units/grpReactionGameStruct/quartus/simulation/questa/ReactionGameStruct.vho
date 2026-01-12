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

-- DATE "01/08/2026 11:34:29"

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

ENTITY 	ReactionGameStruct IS
    PORT (
	iClk : IN std_logic;
	inResetAsync : IN std_logic;
	iA_Sync : IN std_logic;
	iB_Sync : IN std_logic;
	oLEDs : BUFFER std_logic_vector(3 DOWNTO 0);
	oHEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	oHEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	oHEX3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END ReactionGameStruct;

-- Design Ports Information
-- oLEDs[0]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oLEDs[1]	=>  Location: PIN_AK29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oLEDs[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oLEDs[3]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[0]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[1]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[2]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[3]	=>  Location: PIN_AH28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[4]	=>  Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[5]	=>  Location: PIN_AJ29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[6]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[0]	=>  Location: PIN_AE27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[1]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[2]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[3]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[4]	=>  Location: PIN_AE28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[5]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[6]	=>  Location: PIN_AJ27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[0]	=>  Location: PIN_AH25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[1]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[2]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[3]	=>  Location: PIN_AK26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[4]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[5]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[6]	=>  Location: PIN_AJ26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- iClk	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inResetAsync	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iA_Sync	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iB_Sync	=>  Location: PIN_AE26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ReactionGameStruct IS
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
SIGNAL ww_iA_Sync : std_logic;
SIGNAL ww_iB_Sync : std_logic;
SIGNAL ww_oLEDs : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_oHEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oHEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oHEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \iClk~input_o\ : std_logic;
SIGNAL \iClk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \EntityReactionFSM|State.Unlocked~0_combout\ : std_logic;
SIGNAL \inResetAsync~input_o\ : std_logic;
SIGNAL \StrobeGen|Add0~61_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~62\ : std_logic;
SIGNAL \StrobeGen|Add0~57_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~58\ : std_logic;
SIGNAL \StrobeGen|Add0~53_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~54\ : std_logic;
SIGNAL \StrobeGen|Add0~49_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~50\ : std_logic;
SIGNAL \StrobeGen|Add0~5_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~6\ : std_logic;
SIGNAL \StrobeGen|Add0~45_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~46\ : std_logic;
SIGNAL \StrobeGen|Add0~41_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~42\ : std_logic;
SIGNAL \StrobeGen|Add0~37_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~38\ : std_logic;
SIGNAL \StrobeGen|Add0~33_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~34\ : std_logic;
SIGNAL \StrobeGen|Add0~29_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~30\ : std_logic;
SIGNAL \StrobeGen|Add0~1_sumout\ : std_logic;
SIGNAL \StrobeGen|Count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|Equal0~1_combout\ : std_logic;
SIGNAL \StrobeGen|Count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|Equal0~2_combout\ : std_logic;
SIGNAL \StrobeGen|Add0~2\ : std_logic;
SIGNAL \StrobeGen|Add0~25_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~26\ : std_logic;
SIGNAL \StrobeGen|Add0~21_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~22\ : std_logic;
SIGNAL \StrobeGen|Add0~17_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~18\ : std_logic;
SIGNAL \StrobeGen|Add0~13_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~14\ : std_logic;
SIGNAL \StrobeGen|Add0~9_sumout\ : std_logic;
SIGNAL \StrobeGen|Equal0~0_combout\ : std_logic;
SIGNAL \StrobeGen|Equal0~3_combout\ : std_logic;
SIGNAL \StrobeGen|oStrobe~q\ : std_logic;
SIGNAL \iB_Sync~input_o\ : std_logic;
SIGNAL \EdgeDetectionB|SyncPrev~feeder_combout\ : std_logic;
SIGNAL \EdgeDetectionB|SyncPrev~q\ : std_logic;
SIGNAL \iA_Sync~input_o\ : std_logic;
SIGNAL \EdgeDetectionA|SyncPrev~feeder_combout\ : std_logic;
SIGNAL \EdgeDetectionA|SyncPrev~q\ : std_logic;
SIGNAL \EntityReactionFSM|State~14_combout\ : std_logic;
SIGNAL \EntityReactionFSM|State~15_combout\ : std_logic;
SIGNAL \EntityReactionFSM|State.Unlocked~q\ : std_logic;
SIGNAL \EntityReactionFSM|State.CountUpTime~feeder_combout\ : std_logic;
SIGNAL \EntityReactionFSM|State~12_combout\ : std_logic;
SIGNAL \EntityReactionFSM|State~13_combout\ : std_logic;
SIGNAL \EntityReactionFSM|State.CountUpTime~q\ : std_logic;
SIGNAL \EntityReactionFSM|State.ShowResult~q\ : std_logic;
SIGNAL \EntityReactionFSM|State.Locked~0_combout\ : std_logic;
SIGNAL \EntityReactionFSM|State.Locked~q\ : std_logic;
SIGNAL \CounterLow|oCount~0_combout\ : std_logic;
SIGNAL \CounterLow|oCount[4]~1_combout\ : std_logic;
SIGNAL \CounterLow|oCount~4_combout\ : std_logic;
SIGNAL \CounterLow|oCount[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterLow|oCount~2_combout\ : std_logic;
SIGNAL \CounterLow|oCount~3_combout\ : std_logic;
SIGNAL \CounterLow|oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \HexDecoderLow|Mux6~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|Mux5~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|Mux4~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|Mux3~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|Mux2~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|Mux1~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|Mux0~0_combout\ : std_logic;
SIGNAL \CounterLow|Equal0~0_combout\ : std_logic;
SIGNAL \CounterMid|oCount[4]~1_combout\ : std_logic;
SIGNAL \CounterMid|oCount~0_combout\ : std_logic;
SIGNAL \CounterMid|oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterMid|oCount~4_combout\ : std_logic;
SIGNAL \CounterMid|oCount~2_combout\ : std_logic;
SIGNAL \CounterMid|oCount~3_combout\ : std_logic;
SIGNAL \HexDecoderMid|Mux6~0_combout\ : std_logic;
SIGNAL \CounterMid|oCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \HexDecoderMid|Mux5~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|Mux4~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|Mux3~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|Mux2~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|Mux1~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|Mux0~0_combout\ : std_logic;
SIGNAL \CounterMid|Equal0~0_combout\ : std_logic;
SIGNAL \CounterHigh|oCount[4]~1_combout\ : std_logic;
SIGNAL \CounterHigh|oCount~0_combout\ : std_logic;
SIGNAL \CounterHigh|oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterHigh|oCount~2_combout\ : std_logic;
SIGNAL \CounterHigh|oCount~3_combout\ : std_logic;
SIGNAL \CounterHigh|oCount~4_combout\ : std_logic;
SIGNAL \CounterHigh|oCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \HexDecoderHigh|Mux6~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|Mux5~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|Mux4~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|Mux3~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|Mux2~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|Mux1~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|Mux0~0_combout\ : std_logic;
SIGNAL \CounterMid|oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \StrobeGen|Count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CounterLow|oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \CounterHigh|oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \StrobeGen|ALT_INV_Count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CounterMid|ALT_INV_oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \EntityReactionFSM|ALT_INV_State.Unlocked~q\ : std_logic;
SIGNAL \EntityReactionFSM|ALT_INV_State.CountUpTime~q\ : std_logic;
SIGNAL \CounterLow|ALT_INV_oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \HexDecoderLow|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \EntityReactionFSM|ALT_INV_State.Locked~q\ : std_logic;
SIGNAL \EntityReactionFSM|ALT_INV_State.ShowResult~q\ : std_logic;
SIGNAL \HexDecoderLow|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \CounterHigh|ALT_INV_oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \EntityReactionFSM|ALT_INV_State~14_combout\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \HexDecoderMid|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \EdgeDetectionB|ALT_INV_SyncPrev~q\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_oStrobe~q\ : std_logic;
SIGNAL \EdgeDetectionA|ALT_INV_SyncPrev~q\ : std_logic;
SIGNAL \HexDecoderHigh|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \CounterMid|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_iA_Sync~input_o\ : std_logic;
SIGNAL \ALT_INV_iB_Sync~input_o\ : std_logic;
SIGNAL \HexDecoderMid|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \HexDecoderHigh|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \CounterLow|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \EntityReactionFSM|ALT_INV_State~12_combout\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \CounterLow|ALT_INV_oCount[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterMid|ALT_INV_oCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\ : std_logic;

BEGIN

ww_iClk <= iClk;
ww_inResetAsync <= inResetAsync;
ww_iA_Sync <= iA_Sync;
ww_iB_Sync <= iB_Sync;
oLEDs <= ww_oLEDs;
oHEX1 <= ww_oHEX1;
oHEX2 <= ww_oHEX2;
oHEX3 <= ww_oHEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\StrobeGen|ALT_INV_Count\(10) <= NOT \StrobeGen|Count\(10);
\StrobeGen|ALT_INV_Count\(9) <= NOT \StrobeGen|Count\(9);
\CounterMid|ALT_INV_oCount\(1) <= NOT \CounterMid|oCount\(1);
\EntityReactionFSM|ALT_INV_State.Unlocked~q\ <= NOT \EntityReactionFSM|State.Unlocked~q\;
\StrobeGen|ALT_INV_Count\(8) <= NOT \StrobeGen|Count\(8);
\StrobeGen|ALT_INV_Count\(2) <= NOT \StrobeGen|Count\(2);
\StrobeGen|ALT_INV_Count\(11) <= NOT \StrobeGen|Count\(11);
\StrobeGen|ALT_INV_Count\(4) <= NOT \StrobeGen|Count\(4);
\StrobeGen|ALT_INV_Count\(13) <= NOT \StrobeGen|Count\(13);
\EntityReactionFSM|ALT_INV_State.CountUpTime~q\ <= NOT \EntityReactionFSM|State.CountUpTime~q\;
\StrobeGen|ALT_INV_Count\(6) <= NOT \StrobeGen|Count\(6);
\StrobeGen|ALT_INV_Count\(14) <= NOT \StrobeGen|Count\(14);
\StrobeGen|ALT_INV_Count\(1) <= NOT \StrobeGen|Count\(1);
\StrobeGen|ALT_INV_Count\(3) <= NOT \StrobeGen|Count\(3);
\StrobeGen|ALT_INV_Count\(12) <= NOT \StrobeGen|Count\(12);
\CounterLow|ALT_INV_oCount\(3) <= NOT \CounterLow|oCount\(3);
\HexDecoderLow|ALT_INV_Mux6~0_combout\ <= NOT \HexDecoderLow|Mux6~0_combout\;
\CounterLow|ALT_INV_oCount\(2) <= NOT \CounterLow|oCount\(2);
\StrobeGen|ALT_INV_Count\(5) <= NOT \StrobeGen|Count\(5);
\HexDecoderLow|ALT_INV_Mux5~0_combout\ <= NOT \HexDecoderLow|Mux5~0_combout\;
\EntityReactionFSM|ALT_INV_State.Locked~q\ <= NOT \EntityReactionFSM|State.Locked~q\;
\StrobeGen|ALT_INV_Count\(0) <= NOT \StrobeGen|Count\(0);
\StrobeGen|ALT_INV_Count\(15) <= NOT \StrobeGen|Count\(15);
\EntityReactionFSM|ALT_INV_State.ShowResult~q\ <= NOT \EntityReactionFSM|State.ShowResult~q\;
\CounterLow|ALT_INV_oCount\(1) <= NOT \CounterLow|oCount\(1);
\HexDecoderLow|ALT_INV_Mux4~0_combout\ <= NOT \HexDecoderLow|Mux4~0_combout\;
\HexDecoderLow|ALT_INV_Mux3~0_combout\ <= NOT \HexDecoderLow|Mux3~0_combout\;
\StrobeGen|ALT_INV_Count\(7) <= NOT \StrobeGen|Count\(7);
\CounterLow|ALT_INV_oCount\(4) <= NOT \CounterLow|oCount\(4);
\HexDecoderLow|ALT_INV_Mux2~0_combout\ <= NOT \HexDecoderLow|Mux2~0_combout\;
\HexDecoderLow|ALT_INV_Mux1~0_combout\ <= NOT \HexDecoderLow|Mux1~0_combout\;
\CounterHigh|ALT_INV_oCount\(2) <= NOT \CounterHigh|oCount\(2);
\CounterHigh|ALT_INV_oCount\(3) <= NOT \CounterHigh|oCount\(3);
\EntityReactionFSM|ALT_INV_State~14_combout\ <= NOT \EntityReactionFSM|State~14_combout\;
\StrobeGen|ALT_INV_Equal0~1_combout\ <= NOT \StrobeGen|Equal0~1_combout\;
\HexDecoderMid|ALT_INV_Mux5~0_combout\ <= NOT \HexDecoderMid|Mux5~0_combout\;
\EdgeDetectionB|ALT_INV_SyncPrev~q\ <= NOT \EdgeDetectionB|SyncPrev~q\;
\StrobeGen|ALT_INV_oStrobe~q\ <= NOT \StrobeGen|oStrobe~q\;
\EdgeDetectionA|ALT_INV_SyncPrev~q\ <= NOT \EdgeDetectionA|SyncPrev~q\;
\HexDecoderHigh|ALT_INV_Mux3~0_combout\ <= NOT \HexDecoderHigh|Mux3~0_combout\;
\CounterMid|ALT_INV_Equal0~0_combout\ <= NOT \CounterMid|Equal0~0_combout\;
\HexDecoderHigh|ALT_INV_Mux6~0_combout\ <= NOT \HexDecoderHigh|Mux6~0_combout\;
\CounterMid|ALT_INV_oCount\(2) <= NOT \CounterMid|oCount\(2);
\HexDecoderHigh|ALT_INV_Mux4~0_combout\ <= NOT \HexDecoderHigh|Mux4~0_combout\;
\StrobeGen|ALT_INV_Equal0~2_combout\ <= NOT \StrobeGen|Equal0~2_combout\;
\ALT_INV_iA_Sync~input_o\ <= NOT \iA_Sync~input_o\;
\CounterHigh|ALT_INV_oCount\(1) <= NOT \CounterHigh|oCount\(1);
\ALT_INV_iB_Sync~input_o\ <= NOT \iB_Sync~input_o\;
\HexDecoderMid|ALT_INV_Mux6~0_combout\ <= NOT \HexDecoderMid|Mux6~0_combout\;
\HexDecoderHigh|ALT_INV_Mux5~0_combout\ <= NOT \HexDecoderHigh|Mux5~0_combout\;
\StrobeGen|ALT_INV_Count[4]~DUPLICATE_q\ <= NOT \StrobeGen|Count[4]~DUPLICATE_q\;
\StrobeGen|ALT_INV_Count[2]~DUPLICATE_q\ <= NOT \StrobeGen|Count[2]~DUPLICATE_q\;
\HexDecoderHigh|ALT_INV_Mux1~0_combout\ <= NOT \HexDecoderHigh|Mux1~0_combout\;
\HexDecoderMid|ALT_INV_Mux4~0_combout\ <= NOT \HexDecoderMid|Mux4~0_combout\;
\HexDecoderMid|ALT_INV_Mux3~0_combout\ <= NOT \HexDecoderMid|Mux3~0_combout\;
\CounterLow|ALT_INV_Equal0~0_combout\ <= NOT \CounterLow|Equal0~0_combout\;
\HexDecoderHigh|ALT_INV_Mux2~0_combout\ <= NOT \HexDecoderHigh|Mux2~0_combout\;
\HexDecoderMid|ALT_INV_Mux2~0_combout\ <= NOT \HexDecoderMid|Mux2~0_combout\;
\CounterMid|ALT_INV_oCount\(3) <= NOT \CounterMid|oCount\(3);
\CounterHigh|ALT_INV_oCount\(4) <= NOT \CounterHigh|oCount\(4);
\EntityReactionFSM|ALT_INV_State~12_combout\ <= NOT \EntityReactionFSM|State~12_combout\;
\StrobeGen|ALT_INV_Equal0~0_combout\ <= NOT \StrobeGen|Equal0~0_combout\;
\CounterMid|ALT_INV_oCount\(4) <= NOT \CounterMid|oCount\(4);
\HexDecoderMid|ALT_INV_Mux1~0_combout\ <= NOT \HexDecoderMid|Mux1~0_combout\;
\CounterLow|ALT_INV_oCount[4]~DUPLICATE_q\ <= NOT \CounterLow|oCount[4]~DUPLICATE_q\;
\CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\ <= NOT \CounterLow|oCount[1]~DUPLICATE_q\;
\CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\ <= NOT \CounterHigh|oCount[1]~DUPLICATE_q\;
\CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\ <= NOT \CounterHigh|oCount[3]~DUPLICATE_q\;
\CounterMid|ALT_INV_oCount[2]~DUPLICATE_q\ <= NOT \CounterMid|oCount[2]~DUPLICATE_q\;
\CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\ <= NOT \CounterMid|oCount[1]~DUPLICATE_q\;

-- Location: IOOBUF_X89_Y9_N5
\oLEDs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	devoe => ww_devoe,
	o => ww_oLEDs(0));

-- Location: IOOBUF_X82_Y0_N93
\oLEDs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityReactionFSM|State.Unlocked~q\,
	devoe => ww_devoe,
	o => ww_oLEDs(1));

-- Location: IOOBUF_X89_Y8_N5
\oLEDs[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityReactionFSM|State.CountUpTime~q\,
	devoe => ww_devoe,
	o => ww_oLEDs(2));

-- Location: IOOBUF_X89_Y8_N22
\oLEDs[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EntityReactionFSM|State.ShowResult~q\,
	devoe => ww_devoe,
	o => ww_oLEDs(3));

-- Location: IOOBUF_X89_Y9_N56
\oHEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderLow|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX1(0));

-- Location: IOOBUF_X89_Y6_N22
\oHEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderLow|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX1(1));

-- Location: IOOBUF_X89_Y6_N5
\oHEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderLow|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX1(2));

-- Location: IOOBUF_X89_Y4_N96
\oHEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderLow|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX1(3));

-- Location: IOOBUF_X89_Y6_N56
\oHEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderLow|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX1(4));

-- Location: IOOBUF_X89_Y6_N39
\oHEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderLow|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX1(5));

-- Location: IOOBUF_X89_Y4_N62
\oHEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderLow|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX1(6));

-- Location: IOOBUF_X89_Y11_N79
\oHEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderMid|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX2(0));

-- Location: IOOBUF_X80_Y0_N19
\oHEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderMid|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX2(1));

-- Location: IOOBUF_X89_Y11_N62
\oHEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderMid|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX2(2));

-- Location: IOOBUF_X89_Y11_N45
\oHEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderMid|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX2(3));

-- Location: IOOBUF_X89_Y11_N96
\oHEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderMid|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX2(4));

-- Location: IOOBUF_X89_Y9_N22
\oHEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderMid|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX2(5));

-- Location: IOOBUF_X80_Y0_N36
\oHEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderMid|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX2(6));

-- Location: IOOBUF_X78_Y0_N53
\oHEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderHigh|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX3(0));

-- Location: IOOBUF_X78_Y0_N19
\oHEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderHigh|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX3(1));

-- Location: IOOBUF_X78_Y0_N36
\oHEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderHigh|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX3(2));

-- Location: IOOBUF_X76_Y0_N53
\oHEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderHigh|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX3(3));

-- Location: IOOBUF_X76_Y0_N19
\oHEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderHigh|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX3(4));

-- Location: IOOBUF_X78_Y0_N2
\oHEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderHigh|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX3(5));

-- Location: IOOBUF_X76_Y0_N36
\oHEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDecoderHigh|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_oHEX3(6));

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

-- Location: MLABCELL_X82_Y8_N39
\EntityReactionFSM|State.Unlocked~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionFSM|State.Unlocked~0_combout\ = ( !\EntityReactionFSM|State.Locked~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	combout => \EntityReactionFSM|State.Unlocked~0_combout\);

-- Location: IOIBUF_X89_Y9_N38
\inResetAsync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inResetAsync,
	o => \inResetAsync~input_o\);

-- Location: LABCELL_X83_Y8_N0
\StrobeGen|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~61_sumout\ = SUM(( \StrobeGen|Count\(0) ) + ( VCC ) + ( !VCC ))
-- \StrobeGen|Add0~62\ = CARRY(( \StrobeGen|Count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \StrobeGen|ALT_INV_Count\(0),
	cin => GND,
	sumout => \StrobeGen|Add0~61_sumout\,
	cout => \StrobeGen|Add0~62\);

-- Location: FF_X83_Y8_N2
\StrobeGen|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~61_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(0));

-- Location: LABCELL_X83_Y8_N3
\StrobeGen|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~57_sumout\ = SUM(( \StrobeGen|Count\(1) ) + ( GND ) + ( \StrobeGen|Add0~62\ ))
-- \StrobeGen|Add0~58\ = CARRY(( \StrobeGen|Count\(1) ) + ( GND ) + ( \StrobeGen|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \StrobeGen|ALT_INV_Count\(1),
	cin => \StrobeGen|Add0~62\,
	sumout => \StrobeGen|Add0~57_sumout\,
	cout => \StrobeGen|Add0~58\);

-- Location: FF_X83_Y8_N5
\StrobeGen|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~57_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(1));

-- Location: LABCELL_X83_Y8_N6
\StrobeGen|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~53_sumout\ = SUM(( \StrobeGen|Count\(2) ) + ( GND ) + ( \StrobeGen|Add0~58\ ))
-- \StrobeGen|Add0~54\ = CARRY(( \StrobeGen|Count\(2) ) + ( GND ) + ( \StrobeGen|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \StrobeGen|ALT_INV_Count\(2),
	cin => \StrobeGen|Add0~58\,
	sumout => \StrobeGen|Add0~53_sumout\,
	cout => \StrobeGen|Add0~54\);

-- Location: FF_X83_Y8_N7
\StrobeGen|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~53_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(2));

-- Location: LABCELL_X83_Y8_N9
\StrobeGen|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~49_sumout\ = SUM(( \StrobeGen|Count\(3) ) + ( GND ) + ( \StrobeGen|Add0~54\ ))
-- \StrobeGen|Add0~50\ = CARRY(( \StrobeGen|Count\(3) ) + ( GND ) + ( \StrobeGen|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count\(3),
	cin => \StrobeGen|Add0~54\,
	sumout => \StrobeGen|Add0~49_sumout\,
	cout => \StrobeGen|Add0~50\);

-- Location: FF_X83_Y8_N11
\StrobeGen|Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~49_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(3));

-- Location: LABCELL_X83_Y8_N12
\StrobeGen|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~5_sumout\ = SUM(( \StrobeGen|Count\(4) ) + ( GND ) + ( \StrobeGen|Add0~50\ ))
-- \StrobeGen|Add0~6\ = CARRY(( \StrobeGen|Count\(4) ) + ( GND ) + ( \StrobeGen|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \StrobeGen|ALT_INV_Count\(4),
	cin => \StrobeGen|Add0~50\,
	sumout => \StrobeGen|Add0~5_sumout\,
	cout => \StrobeGen|Add0~6\);

-- Location: FF_X83_Y8_N14
\StrobeGen|Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~5_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(4));

-- Location: LABCELL_X83_Y8_N15
\StrobeGen|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~45_sumout\ = SUM(( \StrobeGen|Count\(5) ) + ( GND ) + ( \StrobeGen|Add0~6\ ))
-- \StrobeGen|Add0~46\ = CARRY(( \StrobeGen|Count\(5) ) + ( GND ) + ( \StrobeGen|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count\(5),
	cin => \StrobeGen|Add0~6\,
	sumout => \StrobeGen|Add0~45_sumout\,
	cout => \StrobeGen|Add0~46\);

-- Location: FF_X83_Y8_N17
\StrobeGen|Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~45_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(5));

-- Location: LABCELL_X83_Y8_N18
\StrobeGen|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~41_sumout\ = SUM(( \StrobeGen|Count\(6) ) + ( GND ) + ( \StrobeGen|Add0~46\ ))
-- \StrobeGen|Add0~42\ = CARRY(( \StrobeGen|Count\(6) ) + ( GND ) + ( \StrobeGen|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count\(6),
	cin => \StrobeGen|Add0~46\,
	sumout => \StrobeGen|Add0~41_sumout\,
	cout => \StrobeGen|Add0~42\);

-- Location: FF_X83_Y8_N20
\StrobeGen|Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~41_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(6));

-- Location: LABCELL_X83_Y8_N21
\StrobeGen|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~37_sumout\ = SUM(( \StrobeGen|Count\(7) ) + ( GND ) + ( \StrobeGen|Add0~42\ ))
-- \StrobeGen|Add0~38\ = CARRY(( \StrobeGen|Count\(7) ) + ( GND ) + ( \StrobeGen|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \StrobeGen|ALT_INV_Count\(7),
	cin => \StrobeGen|Add0~42\,
	sumout => \StrobeGen|Add0~37_sumout\,
	cout => \StrobeGen|Add0~38\);

-- Location: FF_X83_Y8_N23
\StrobeGen|Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~37_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(7));

-- Location: LABCELL_X83_Y8_N24
\StrobeGen|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~33_sumout\ = SUM(( \StrobeGen|Count\(8) ) + ( GND ) + ( \StrobeGen|Add0~38\ ))
-- \StrobeGen|Add0~34\ = CARRY(( \StrobeGen|Count\(8) ) + ( GND ) + ( \StrobeGen|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count\(8),
	cin => \StrobeGen|Add0~38\,
	sumout => \StrobeGen|Add0~33_sumout\,
	cout => \StrobeGen|Add0~34\);

-- Location: FF_X83_Y8_N26
\StrobeGen|Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~33_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(8));

-- Location: LABCELL_X83_Y8_N27
\StrobeGen|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~29_sumout\ = SUM(( \StrobeGen|Count\(9) ) + ( GND ) + ( \StrobeGen|Add0~34\ ))
-- \StrobeGen|Add0~30\ = CARRY(( \StrobeGen|Count\(9) ) + ( GND ) + ( \StrobeGen|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \StrobeGen|ALT_INV_Count\(9),
	cin => \StrobeGen|Add0~34\,
	sumout => \StrobeGen|Add0~29_sumout\,
	cout => \StrobeGen|Add0~30\);

-- Location: FF_X83_Y8_N29
\StrobeGen|Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~29_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(9));

-- Location: LABCELL_X83_Y8_N30
\StrobeGen|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~1_sumout\ = SUM(( \StrobeGen|Count\(10) ) + ( GND ) + ( \StrobeGen|Add0~30\ ))
-- \StrobeGen|Add0~2\ = CARRY(( \StrobeGen|Count\(10) ) + ( GND ) + ( \StrobeGen|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count\(10),
	cin => \StrobeGen|Add0~30\,
	sumout => \StrobeGen|Add0~1_sumout\,
	cout => \StrobeGen|Add0~2\);

-- Location: FF_X83_Y8_N31
\StrobeGen|Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~1_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(10));

-- Location: FF_X83_Y8_N13
\StrobeGen|Count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~5_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count[4]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N48
\StrobeGen|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Equal0~1_combout\ = ( \StrobeGen|Count\(9) & ( \StrobeGen|Count\(8) & ( (!\StrobeGen|Count\(7) & (\StrobeGen|Count\(6) & !\StrobeGen|Count\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StrobeGen|ALT_INV_Count\(7),
	datac => \StrobeGen|ALT_INV_Count\(6),
	datad => \StrobeGen|ALT_INV_Count\(5),
	datae => \StrobeGen|ALT_INV_Count\(9),
	dataf => \StrobeGen|ALT_INV_Count\(8),
	combout => \StrobeGen|Equal0~1_combout\);

-- Location: FF_X83_Y8_N8
\StrobeGen|Count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~53_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count[2]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y8_N42
\StrobeGen|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Equal0~2_combout\ = ( \StrobeGen|Count\(3) & ( \StrobeGen|Count[2]~DUPLICATE_q\ & ( (\StrobeGen|Count\(0) & \StrobeGen|Count\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StrobeGen|ALT_INV_Count\(0),
	datac => \StrobeGen|ALT_INV_Count\(1),
	datae => \StrobeGen|ALT_INV_Count\(3),
	dataf => \StrobeGen|ALT_INV_Count[2]~DUPLICATE_q\,
	combout => \StrobeGen|Equal0~2_combout\);

-- Location: LABCELL_X83_Y8_N33
\StrobeGen|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~25_sumout\ = SUM(( \StrobeGen|Count\(11) ) + ( GND ) + ( \StrobeGen|Add0~2\ ))
-- \StrobeGen|Add0~26\ = CARRY(( \StrobeGen|Count\(11) ) + ( GND ) + ( \StrobeGen|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StrobeGen|ALT_INV_Count\(11),
	cin => \StrobeGen|Add0~2\,
	sumout => \StrobeGen|Add0~25_sumout\,
	cout => \StrobeGen|Add0~26\);

-- Location: FF_X83_Y8_N35
\StrobeGen|Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~25_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(11));

-- Location: LABCELL_X83_Y8_N36
\StrobeGen|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~21_sumout\ = SUM(( \StrobeGen|Count\(12) ) + ( GND ) + ( \StrobeGen|Add0~26\ ))
-- \StrobeGen|Add0~22\ = CARRY(( \StrobeGen|Count\(12) ) + ( GND ) + ( \StrobeGen|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count\(12),
	cin => \StrobeGen|Add0~26\,
	sumout => \StrobeGen|Add0~21_sumout\,
	cout => \StrobeGen|Add0~22\);

-- Location: FF_X83_Y8_N38
\StrobeGen|Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~21_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(12));

-- Location: LABCELL_X83_Y8_N39
\StrobeGen|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~17_sumout\ = SUM(( \StrobeGen|Count\(13) ) + ( GND ) + ( \StrobeGen|Add0~22\ ))
-- \StrobeGen|Add0~18\ = CARRY(( \StrobeGen|Count\(13) ) + ( GND ) + ( \StrobeGen|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count\(13),
	cin => \StrobeGen|Add0~22\,
	sumout => \StrobeGen|Add0~17_sumout\,
	cout => \StrobeGen|Add0~18\);

-- Location: FF_X83_Y8_N41
\StrobeGen|Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~17_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(13));

-- Location: LABCELL_X83_Y8_N42
\StrobeGen|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~13_sumout\ = SUM(( \StrobeGen|Count\(14) ) + ( GND ) + ( \StrobeGen|Add0~18\ ))
-- \StrobeGen|Add0~14\ = CARRY(( \StrobeGen|Count\(14) ) + ( GND ) + ( \StrobeGen|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \StrobeGen|ALT_INV_Count\(14),
	cin => \StrobeGen|Add0~18\,
	sumout => \StrobeGen|Add0~13_sumout\,
	cout => \StrobeGen|Add0~14\);

-- Location: FF_X83_Y8_N44
\StrobeGen|Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~13_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(14));

-- Location: LABCELL_X83_Y8_N45
\StrobeGen|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~9_sumout\ = SUM(( \StrobeGen|Count\(15) ) + ( GND ) + ( \StrobeGen|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count\(15),
	cin => \StrobeGen|Add0~14\,
	sumout => \StrobeGen|Add0~9_sumout\);

-- Location: FF_X83_Y8_N47
\StrobeGen|Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \StrobeGen|Add0~9_sumout\,
	clrn => \inResetAsync~input_o\,
	sclr => \StrobeGen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|Count\(15));

-- Location: MLABCELL_X82_Y8_N15
\StrobeGen|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Equal0~0_combout\ = ( \StrobeGen|Count\(14) & ( !\StrobeGen|Count\(11) & ( (!\StrobeGen|Count\(13) & (!\StrobeGen|Count\(12) & \StrobeGen|Count\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StrobeGen|ALT_INV_Count\(13),
	datac => \StrobeGen|ALT_INV_Count\(12),
	datad => \StrobeGen|ALT_INV_Count\(15),
	datae => \StrobeGen|ALT_INV_Count\(14),
	dataf => \StrobeGen|ALT_INV_Count\(11),
	combout => \StrobeGen|Equal0~0_combout\);

-- Location: LABCELL_X83_Y8_N57
\StrobeGen|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Equal0~3_combout\ = ( \StrobeGen|Equal0~2_combout\ & ( \StrobeGen|Equal0~0_combout\ & ( (!\StrobeGen|Count\(10) & (!\StrobeGen|Count[4]~DUPLICATE_q\ & \StrobeGen|Equal0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StrobeGen|ALT_INV_Count\(10),
	datac => \StrobeGen|ALT_INV_Count[4]~DUPLICATE_q\,
	datad => \StrobeGen|ALT_INV_Equal0~1_combout\,
	datae => \StrobeGen|ALT_INV_Equal0~2_combout\,
	dataf => \StrobeGen|ALT_INV_Equal0~0_combout\,
	combout => \StrobeGen|Equal0~3_combout\);

-- Location: FF_X82_Y8_N35
\StrobeGen|oStrobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	asdata => \StrobeGen|Equal0~3_combout\,
	clrn => \inResetAsync~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StrobeGen|oStrobe~q\);

-- Location: IOIBUF_X89_Y8_N38
\iB_Sync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB_Sync,
	o => \iB_Sync~input_o\);

-- Location: LABCELL_X79_Y8_N27
\EdgeDetectionB|SyncPrev~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \EdgeDetectionB|SyncPrev~feeder_combout\ = ( \iB_Sync~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_iB_Sync~input_o\,
	combout => \EdgeDetectionB|SyncPrev~feeder_combout\);

-- Location: FF_X79_Y8_N29
\EdgeDetectionB|SyncPrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \EdgeDetectionB|SyncPrev~feeder_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \StrobeGen|oStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EdgeDetectionB|SyncPrev~q\);

-- Location: IOIBUF_X89_Y8_N55
\iA_Sync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA_Sync,
	o => \iA_Sync~input_o\);

-- Location: LABCELL_X79_Y8_N51
\EdgeDetectionA|SyncPrev~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \EdgeDetectionA|SyncPrev~feeder_combout\ = ( \iA_Sync~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_iA_Sync~input_o\,
	combout => \EdgeDetectionA|SyncPrev~feeder_combout\);

-- Location: FF_X79_Y8_N53
\EdgeDetectionA|SyncPrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \EdgeDetectionA|SyncPrev~feeder_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \StrobeGen|oStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EdgeDetectionA|SyncPrev~q\);

-- Location: MLABCELL_X82_Y8_N48
\EntityReactionFSM|State~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionFSM|State~14_combout\ = ( !\EntityReactionFSM|State.ShowResult~q\ & ( !\EntityReactionFSM|State.Unlocked~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \EntityReactionFSM|ALT_INV_State.ShowResult~q\,
	dataf => \EntityReactionFSM|ALT_INV_State.Unlocked~q\,
	combout => \EntityReactionFSM|State~14_combout\);

-- Location: MLABCELL_X82_Y8_N54
\EntityReactionFSM|State~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionFSM|State~15_combout\ = ( \iA_Sync~input_o\ & ( \EntityReactionFSM|State~14_combout\ & ( (\StrobeGen|oStrobe~q\ & !\EdgeDetectionA|SyncPrev~q\) ) ) ) # ( \iA_Sync~input_o\ & ( !\EntityReactionFSM|State~14_combout\ & ( (\StrobeGen|oStrobe~q\ 
-- & (!\EdgeDetectionB|SyncPrev~q\ & \iB_Sync~input_o\)) ) ) ) # ( !\iA_Sync~input_o\ & ( !\EntityReactionFSM|State~14_combout\ & ( (\StrobeGen|oStrobe~q\ & (!\EdgeDetectionB|SyncPrev~q\ & \iB_Sync~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StrobeGen|ALT_INV_oStrobe~q\,
	datab => \EdgeDetectionB|ALT_INV_SyncPrev~q\,
	datac => \ALT_INV_iB_Sync~input_o\,
	datad => \EdgeDetectionA|ALT_INV_SyncPrev~q\,
	datae => \ALT_INV_iA_Sync~input_o\,
	dataf => \EntityReactionFSM|ALT_INV_State~14_combout\,
	combout => \EntityReactionFSM|State~15_combout\);

-- Location: FF_X82_Y8_N41
\EntityReactionFSM|State.Unlocked\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \EntityReactionFSM|State.Unlocked~0_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \EntityReactionFSM|State~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionFSM|State.Unlocked~q\);

-- Location: LABCELL_X79_Y8_N42
\EntityReactionFSM|State.CountUpTime~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionFSM|State.CountUpTime~feeder_combout\ = ( \EntityReactionFSM|State.Unlocked~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \EntityReactionFSM|ALT_INV_State.Unlocked~q\,
	combout => \EntityReactionFSM|State.CountUpTime~feeder_combout\);

-- Location: LABCELL_X79_Y8_N30
\EntityReactionFSM|State~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionFSM|State~12_combout\ = ( \EntityReactionFSM|State.Locked~q\ & ( !\EntityReactionFSM|State.CountUpTime~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \EntityReactionFSM|ALT_INV_State.CountUpTime~q\,
	dataf => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	combout => \EntityReactionFSM|State~12_combout\);

-- Location: LABCELL_X79_Y8_N54
\EntityReactionFSM|State~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionFSM|State~13_combout\ = ( \EdgeDetectionB|SyncPrev~q\ & ( \StrobeGen|oStrobe~q\ & ( (!\EdgeDetectionA|SyncPrev~q\ & (\iA_Sync~input_o\ & !\EntityReactionFSM|State~12_combout\)) ) ) ) # ( !\EdgeDetectionB|SyncPrev~q\ & ( 
-- \StrobeGen|oStrobe~q\ & ( (!\EntityReactionFSM|State~12_combout\ & (!\EdgeDetectionA|SyncPrev~q\ & (\iA_Sync~input_o\))) # (\EntityReactionFSM|State~12_combout\ & (((\iB_Sync~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000011110010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EdgeDetectionA|ALT_INV_SyncPrev~q\,
	datab => \ALT_INV_iA_Sync~input_o\,
	datac => \ALT_INV_iB_Sync~input_o\,
	datad => \EntityReactionFSM|ALT_INV_State~12_combout\,
	datae => \EdgeDetectionB|ALT_INV_SyncPrev~q\,
	dataf => \StrobeGen|ALT_INV_oStrobe~q\,
	combout => \EntityReactionFSM|State~13_combout\);

-- Location: FF_X79_Y8_N44
\EntityReactionFSM|State.CountUpTime\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \EntityReactionFSM|State.CountUpTime~feeder_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \EntityReactionFSM|State~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionFSM|State.CountUpTime~q\);

-- Location: FF_X82_Y8_N38
\EntityReactionFSM|State.ShowResult\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	asdata => \EntityReactionFSM|State.CountUpTime~q\,
	clrn => \inResetAsync~input_o\,
	sload => VCC,
	ena => \EntityReactionFSM|State~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionFSM|State.ShowResult~q\);

-- Location: LABCELL_X79_Y8_N39
\EntityReactionFSM|State.Locked~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionFSM|State.Locked~0_combout\ = ( !\EntityReactionFSM|State.ShowResult~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \EntityReactionFSM|ALT_INV_State.ShowResult~q\,
	combout => \EntityReactionFSM|State.Locked~0_combout\);

-- Location: FF_X79_Y8_N41
\EntityReactionFSM|State.Locked\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \EntityReactionFSM|State.Locked~0_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \EntityReactionFSM|State~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionFSM|State.Locked~q\);

-- Location: LABCELL_X80_Y8_N15
\CounterLow|oCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|oCount~0_combout\ = (\EntityReactionFSM|State.Locked~q\ & !\CounterLow|oCount\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datad => \CounterLow|ALT_INV_oCount\(1),
	combout => \CounterLow|oCount~0_combout\);

-- Location: LABCELL_X79_Y8_N12
\CounterLow|oCount[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|oCount[4]~1_combout\ = ( \StrobeGen|oStrobe~q\ & ( (!\EntityReactionFSM|State.Locked~q\) # (\EntityReactionFSM|State.CountUpTime~q\) ) ) # ( !\StrobeGen|oStrobe~q\ & ( !\EntityReactionFSM|State.Locked~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionFSM|ALT_INV_State.CountUpTime~q\,
	datad => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	dataf => \StrobeGen|ALT_INV_oStrobe~q\,
	combout => \CounterLow|oCount[4]~1_combout\);

-- Location: FF_X80_Y8_N17
\CounterLow|oCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterLow|oCount~0_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterLow|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterLow|oCount\(1));

-- Location: FF_X80_Y8_N56
\CounterLow|oCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterLow|oCount~4_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterLow|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterLow|oCount\(4));

-- Location: LABCELL_X80_Y8_N54
\CounterLow|oCount~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|oCount~4_combout\ = ( \CounterLow|oCount\(2) & ( (\EntityReactionFSM|State.Locked~q\ & (!\CounterLow|oCount\(4) $ (((!\CounterLow|oCount\(1)) # (!\CounterLow|oCount\(3)))))) ) ) # ( !\CounterLow|oCount\(2) & ( 
-- (\EntityReactionFSM|State.Locked~q\ & (\CounterLow|oCount\(4) & ((!\CounterLow|oCount\(1)) # (\CounterLow|oCount\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000101000000000100010100000001010101000000000101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datab => \CounterLow|ALT_INV_oCount\(1),
	datac => \CounterLow|ALT_INV_oCount\(3),
	datad => \CounterLow|ALT_INV_oCount\(4),
	dataf => \CounterLow|ALT_INV_oCount\(2),
	combout => \CounterLow|oCount~4_combout\);

-- Location: FF_X80_Y8_N55
\CounterLow|oCount[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterLow|oCount~4_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterLow|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterLow|oCount[4]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N57
\CounterLow|oCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|oCount~2_combout\ = ( \CounterLow|oCount\(3) & ( (\EntityReactionFSM|State.Locked~q\ & (!\CounterLow|oCount\(1) $ (!\CounterLow|oCount\(2)))) ) ) # ( !\CounterLow|oCount\(3) & ( (\EntityReactionFSM|State.Locked~q\ & ((!\CounterLow|oCount\(1) & 
-- ((\CounterLow|oCount\(2)))) # (\CounterLow|oCount\(1) & (!\CounterLow|oCount[4]~DUPLICATE_q\ & !\CounterLow|oCount\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000100000100000100010000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datab => \CounterLow|ALT_INV_oCount\(1),
	datac => \CounterLow|ALT_INV_oCount[4]~DUPLICATE_q\,
	datad => \CounterLow|ALT_INV_oCount\(2),
	dataf => \CounterLow|ALT_INV_oCount\(3),
	combout => \CounterLow|oCount~2_combout\);

-- Location: FF_X80_Y8_N58
\CounterLow|oCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterLow|oCount~2_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterLow|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterLow|oCount\(2));

-- Location: LABCELL_X80_Y8_N51
\CounterLow|oCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|oCount~3_combout\ = ( \CounterLow|oCount\(2) & ( (\EntityReactionFSM|State.Locked~q\ & (!\CounterLow|oCount\(1) $ (!\CounterLow|oCount\(3)))) ) ) # ( !\CounterLow|oCount\(2) & ( (\EntityReactionFSM|State.Locked~q\ & \CounterLow|oCount\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datac => \CounterLow|ALT_INV_oCount\(1),
	datad => \CounterLow|ALT_INV_oCount\(3),
	dataf => \CounterLow|ALT_INV_oCount\(2),
	combout => \CounterLow|oCount~3_combout\);

-- Location: FF_X80_Y8_N53
\CounterLow|oCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterLow|oCount~3_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterLow|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterLow|oCount\(3));

-- Location: FF_X80_Y8_N16
\CounterLow|oCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterLow|oCount~0_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterLow|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterLow|oCount[1]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y8_N36
\HexDecoderLow|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux6~0_combout\ = ( \CounterLow|oCount[4]~DUPLICATE_q\ & ( \CounterLow|oCount[1]~DUPLICATE_q\ & ( !\CounterLow|oCount\(3) $ (!\CounterLow|oCount\(2)) ) ) ) # ( !\CounterLow|oCount[4]~DUPLICATE_q\ & ( \CounterLow|oCount[1]~DUPLICATE_q\ & ( 
-- (!\CounterLow|oCount\(3) & !\CounterLow|oCount\(2)) ) ) ) # ( !\CounterLow|oCount[4]~DUPLICATE_q\ & ( !\CounterLow|oCount[1]~DUPLICATE_q\ & ( (\CounterLow|oCount\(3) & !\CounterLow|oCount\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000010100000101000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount\(3),
	datac => \CounterLow|ALT_INV_oCount\(2),
	datae => \CounterLow|ALT_INV_oCount[4]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \HexDecoderLow|Mux6~0_combout\);

-- Location: LABCELL_X85_Y8_N9
\HexDecoderLow|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux5~0_combout\ = ( \CounterLow|oCount[4]~DUPLICATE_q\ & ( \CounterLow|oCount\(2) & ( (\CounterLow|oCount[1]~DUPLICATE_q\) # (\CounterLow|oCount\(3)) ) ) ) # ( !\CounterLow|oCount[4]~DUPLICATE_q\ & ( \CounterLow|oCount\(2) & ( 
-- (\CounterLow|oCount\(3) & !\CounterLow|oCount[1]~DUPLICATE_q\) ) ) ) # ( \CounterLow|oCount[4]~DUPLICATE_q\ & ( !\CounterLow|oCount\(2) & ( (\CounterLow|oCount\(3) & !\CounterLow|oCount[1]~DUPLICATE_q\) ) ) ) # ( !\CounterLow|oCount[4]~DUPLICATE_q\ & ( 
-- !\CounterLow|oCount\(2) & ( (\CounterLow|oCount\(3) & \CounterLow|oCount[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001010001000100010001000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount\(3),
	datab => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	datae => \CounterLow|ALT_INV_oCount[4]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount\(2),
	combout => \HexDecoderLow|Mux5~0_combout\);

-- Location: LABCELL_X85_Y8_N48
\HexDecoderLow|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux4~0_combout\ = ( \CounterLow|oCount[4]~DUPLICATE_q\ & ( \CounterLow|oCount[1]~DUPLICATE_q\ & ( (\CounterLow|oCount\(3) & \CounterLow|oCount\(2)) ) ) ) # ( \CounterLow|oCount[4]~DUPLICATE_q\ & ( !\CounterLow|oCount[1]~DUPLICATE_q\ & ( 
-- \CounterLow|oCount\(3) ) ) ) # ( !\CounterLow|oCount[4]~DUPLICATE_q\ & ( !\CounterLow|oCount[1]~DUPLICATE_q\ & ( (!\CounterLow|oCount\(3) & \CounterLow|oCount\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010101010101010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount\(3),
	datac => \CounterLow|ALT_INV_oCount\(2),
	datae => \CounterLow|ALT_INV_oCount[4]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \HexDecoderLow|Mux4~0_combout\);

-- Location: LABCELL_X85_Y8_N57
\HexDecoderLow|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux3~0_combout\ = ( \CounterLow|oCount[4]~DUPLICATE_q\ & ( \CounterLow|oCount\(2) & ( !\CounterLow|oCount\(3) $ (\CounterLow|oCount[1]~DUPLICATE_q\) ) ) ) # ( !\CounterLow|oCount[4]~DUPLICATE_q\ & ( \CounterLow|oCount\(2) & ( 
-- (\CounterLow|oCount\(3) & \CounterLow|oCount[1]~DUPLICATE_q\) ) ) ) # ( !\CounterLow|oCount[4]~DUPLICATE_q\ & ( !\CounterLow|oCount\(2) & ( !\CounterLow|oCount\(3) $ (!\CounterLow|oCount[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110000000000000000000010001000100011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount\(3),
	datab => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	datae => \CounterLow|ALT_INV_oCount[4]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount\(2),
	combout => \HexDecoderLow|Mux3~0_combout\);

-- Location: LABCELL_X85_Y8_N0
\HexDecoderLow|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux2~0_combout\ = ( \CounterLow|oCount[4]~DUPLICATE_q\ & ( \CounterLow|oCount[1]~DUPLICATE_q\ & ( (!\CounterLow|oCount\(3) & !\CounterLow|oCount\(2)) ) ) ) # ( !\CounterLow|oCount[4]~DUPLICATE_q\ & ( \CounterLow|oCount[1]~DUPLICATE_q\ ) ) # 
-- ( !\CounterLow|oCount[4]~DUPLICATE_q\ & ( !\CounterLow|oCount[1]~DUPLICATE_q\ & ( (\CounterLow|oCount\(3) & !\CounterLow|oCount\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000011111111111111111010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount\(3),
	datac => \CounterLow|ALT_INV_oCount\(2),
	datae => \CounterLow|ALT_INV_oCount[4]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \HexDecoderLow|Mux2~0_combout\);

-- Location: LABCELL_X85_Y8_N45
\HexDecoderLow|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux1~0_combout\ = ( !\CounterLow|oCount[4]~DUPLICATE_q\ & ( \CounterLow|oCount\(2) & ( (!\CounterLow|oCount\(3)) # (\CounterLow|oCount[1]~DUPLICATE_q\) ) ) ) # ( \CounterLow|oCount[4]~DUPLICATE_q\ & ( !\CounterLow|oCount\(2) & ( 
-- (\CounterLow|oCount\(3) & \CounterLow|oCount[1]~DUPLICATE_q\) ) ) ) # ( !\CounterLow|oCount[4]~DUPLICATE_q\ & ( !\CounterLow|oCount\(2) & ( (!\CounterLow|oCount\(3) & \CounterLow|oCount[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000100010001000110111011101110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount\(3),
	datab => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	datae => \CounterLow|ALT_INV_oCount[4]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount\(2),
	combout => \HexDecoderLow|Mux1~0_combout\);

-- Location: LABCELL_X85_Y8_N24
\HexDecoderLow|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux0~0_combout\ = ( \CounterLow|oCount[4]~DUPLICATE_q\ & ( \CounterLow|oCount[1]~DUPLICATE_q\ ) ) # ( !\CounterLow|oCount[4]~DUPLICATE_q\ & ( \CounterLow|oCount[1]~DUPLICATE_q\ & ( !\CounterLow|oCount\(3) $ (!\CounterLow|oCount\(2)) ) ) ) # 
-- ( \CounterLow|oCount[4]~DUPLICATE_q\ & ( !\CounterLow|oCount[1]~DUPLICATE_q\ & ( (!\CounterLow|oCount\(3)) # (\CounterLow|oCount\(2)) ) ) ) # ( !\CounterLow|oCount[4]~DUPLICATE_q\ & ( !\CounterLow|oCount[1]~DUPLICATE_q\ & ( (\CounterLow|oCount\(2)) # 
-- (\CounterLow|oCount\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111101011111010111101011010010110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount\(3),
	datac => \CounterLow|ALT_INV_oCount\(2),
	datae => \CounterLow|ALT_INV_oCount[4]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \HexDecoderLow|Mux0~0_combout\);

-- Location: LABCELL_X80_Y8_N36
\CounterLow|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|Equal0~0_combout\ = ( !\CounterLow|oCount\(2) & ( (\CounterLow|oCount\(1) & (!\CounterLow|oCount\(3) & \CounterLow|oCount\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CounterLow|ALT_INV_oCount\(1),
	datac => \CounterLow|ALT_INV_oCount\(3),
	datad => \CounterLow|ALT_INV_oCount\(4),
	dataf => \CounterLow|ALT_INV_oCount\(2),
	combout => \CounterLow|Equal0~0_combout\);

-- Location: LABCELL_X80_Y8_N3
\CounterMid|oCount[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|oCount[4]~1_combout\ = ( \StrobeGen|oStrobe~q\ & ( (!\EntityReactionFSM|State.Locked~q\) # ((\EntityReactionFSM|State.CountUpTime~q\ & \CounterLow|Equal0~0_combout\)) ) ) # ( !\StrobeGen|oStrobe~q\ & ( !\EntityReactionFSM|State.Locked~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111101011111000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionFSM|ALT_INV_State.CountUpTime~q\,
	datac => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datad => \CounterLow|ALT_INV_Equal0~0_combout\,
	dataf => \StrobeGen|ALT_INV_oStrobe~q\,
	combout => \CounterMid|oCount[4]~1_combout\);

-- Location: FF_X80_Y8_N23
\CounterMid|oCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|oCount~0_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterMid|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oCount\(1));

-- Location: LABCELL_X80_Y8_N21
\CounterMid|oCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|oCount~0_combout\ = (\EntityReactionFSM|State.Locked~q\ & !\CounterMid|oCount\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datad => \CounterMid|ALT_INV_oCount\(1),
	combout => \CounterMid|oCount~0_combout\);

-- Location: FF_X80_Y8_N22
\CounterMid|oCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|oCount~0_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterMid|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oCount[1]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N18
\CounterMid|oCount~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|oCount~4_combout\ = ( \CounterMid|oCount[1]~DUPLICATE_q\ & ( (\EntityReactionFSM|State.Locked~q\ & ((!\CounterMid|oCount\(3) & (\CounterMid|oCount\(2) & \CounterMid|oCount\(4))) # (\CounterMid|oCount\(3) & (!\CounterMid|oCount\(2) $ 
-- (!\CounterMid|oCount\(4)))))) ) ) # ( !\CounterMid|oCount[1]~DUPLICATE_q\ & ( (\EntityReactionFSM|State.Locked~q\ & \CounterMid|oCount\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000001000100100000000100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(3),
	datab => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datac => \CounterMid|ALT_INV_oCount\(2),
	datad => \CounterMid|ALT_INV_oCount\(4),
	dataf => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \CounterMid|oCount~4_combout\);

-- Location: FF_X80_Y8_N20
\CounterMid|oCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|oCount~4_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterMid|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oCount\(4));

-- Location: LABCELL_X80_Y8_N24
\CounterMid|oCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|oCount~2_combout\ = ( \CounterMid|oCount[1]~DUPLICATE_q\ & ( (\EntityReactionFSM|State.Locked~q\ & (!\CounterMid|oCount\(2) & ((!\CounterMid|oCount\(4)) # (\CounterMid|oCount\(3))))) ) ) # ( !\CounterMid|oCount[1]~DUPLICATE_q\ & ( 
-- (\EntityReactionFSM|State.Locked~q\ & \CounterMid|oCount\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100100011000000000010001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(4),
	datab => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datac => \CounterMid|ALT_INV_oCount\(3),
	datad => \CounterMid|ALT_INV_oCount\(2),
	dataf => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \CounterMid|oCount~2_combout\);

-- Location: FF_X80_Y8_N26
\CounterMid|oCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|oCount~2_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterMid|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oCount\(2));

-- Location: LABCELL_X80_Y8_N33
\CounterMid|oCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|oCount~3_combout\ = ( \CounterMid|oCount[1]~DUPLICATE_q\ & ( (\EntityReactionFSM|State.Locked~q\ & (!\CounterMid|oCount\(2) $ (!\CounterMid|oCount\(3)))) ) ) # ( !\CounterMid|oCount[1]~DUPLICATE_q\ & ( (\EntityReactionFSM|State.Locked~q\ & 
-- \CounterMid|oCount\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(2),
	datac => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datad => \CounterMid|ALT_INV_oCount\(3),
	dataf => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \CounterMid|oCount~3_combout\);

-- Location: FF_X80_Y8_N35
\CounterMid|oCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|oCount~3_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterMid|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oCount\(3));

-- Location: LABCELL_X80_Y8_N48
\HexDecoderMid|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux6~0_combout\ = ( \CounterMid|oCount\(2) & ( (!\CounterMid|oCount\(3) & (\CounterMid|oCount\(4) & \CounterMid|oCount\(1))) ) ) # ( !\CounterMid|oCount\(2) & ( (!\CounterMid|oCount\(3) & (!\CounterMid|oCount\(4) & \CounterMid|oCount\(1))) 
-- # (\CounterMid|oCount\(3) & (!\CounterMid|oCount\(4) $ (\CounterMid|oCount\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(3),
	datac => \CounterMid|ALT_INV_oCount\(4),
	datad => \CounterMid|ALT_INV_oCount\(1),
	dataf => \CounterMid|ALT_INV_oCount\(2),
	combout => \HexDecoderMid|Mux6~0_combout\);

-- Location: FF_X80_Y8_N25
\CounterMid|oCount[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|oCount~2_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterMid|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oCount[2]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N27
\HexDecoderMid|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux5~0_combout\ = ( \CounterMid|oCount\(3) & ( (!\CounterMid|oCount\(4) & (!\CounterMid|oCount[2]~DUPLICATE_q\ $ (!\CounterMid|oCount\(1)))) # (\CounterMid|oCount\(4) & ((!\CounterMid|oCount\(1)) # (\CounterMid|oCount[2]~DUPLICATE_q\))) ) ) 
-- # ( !\CounterMid|oCount\(3) & ( (\CounterMid|oCount\(4) & (\CounterMid|oCount[2]~DUPLICATE_q\ & \CounterMid|oCount\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011111101001010101111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(4),
	datac => \CounterMid|ALT_INV_oCount[2]~DUPLICATE_q\,
	datad => \CounterMid|ALT_INV_oCount\(1),
	dataf => \CounterMid|ALT_INV_oCount\(3),
	combout => \HexDecoderMid|Mux5~0_combout\);

-- Location: LABCELL_X80_Y8_N30
\HexDecoderMid|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux4~0_combout\ = ( \CounterMid|oCount\(3) & ( (\CounterMid|oCount\(4) & ((!\CounterMid|oCount\(1)) # (\CounterMid|oCount[2]~DUPLICATE_q\))) ) ) # ( !\CounterMid|oCount\(3) & ( (\CounterMid|oCount[2]~DUPLICATE_q\ & (!\CounterMid|oCount\(4) 
-- & !\CounterMid|oCount\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CounterMid|ALT_INV_oCount[2]~DUPLICATE_q\,
	datac => \CounterMid|ALT_INV_oCount\(4),
	datad => \CounterMid|ALT_INV_oCount\(1),
	dataf => \CounterMid|ALT_INV_oCount\(3),
	combout => \HexDecoderMid|Mux4~0_combout\);

-- Location: LABCELL_X80_Y8_N12
\HexDecoderMid|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux3~0_combout\ = (!\CounterMid|oCount[2]~DUPLICATE_q\ & (!\CounterMid|oCount\(4) & (!\CounterMid|oCount\(3) $ (!\CounterMid|oCount\(1))))) # (\CounterMid|oCount[2]~DUPLICATE_q\ & ((!\CounterMid|oCount\(3) & (\CounterMid|oCount\(4) & 
-- !\CounterMid|oCount\(1))) # (\CounterMid|oCount\(3) & ((\CounterMid|oCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001010010001010000101001000101000010100100010100001010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(3),
	datab => \CounterMid|ALT_INV_oCount[2]~DUPLICATE_q\,
	datac => \CounterMid|ALT_INV_oCount\(4),
	datad => \CounterMid|ALT_INV_oCount\(1),
	combout => \HexDecoderMid|Mux3~0_combout\);

-- Location: LABCELL_X80_Y8_N0
\HexDecoderMid|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux2~0_combout\ = ( \CounterMid|oCount\(3) & ( (!\CounterMid|oCount\(4) & ((!\CounterMid|oCount[2]~DUPLICATE_q\) # (\CounterMid|oCount\(1)))) ) ) # ( !\CounterMid|oCount\(3) & ( (\CounterMid|oCount\(1) & 
-- ((!\CounterMid|oCount[2]~DUPLICATE_q\) # (!\CounterMid|oCount\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CounterMid|ALT_INV_oCount[2]~DUPLICATE_q\,
	datac => \CounterMid|ALT_INV_oCount\(4),
	datad => \CounterMid|ALT_INV_oCount\(1),
	dataf => \CounterMid|ALT_INV_oCount\(3),
	combout => \HexDecoderMid|Mux2~0_combout\);

-- Location: LABCELL_X80_Y8_N9
\HexDecoderMid|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux1~0_combout\ = ( \CounterMid|oCount\(3) & ( (\CounterMid|oCount[1]~DUPLICATE_q\ & (!\CounterMid|oCount\(4) $ (!\CounterMid|oCount[2]~DUPLICATE_q\))) ) ) # ( !\CounterMid|oCount\(3) & ( (!\CounterMid|oCount\(4) & 
-- ((\CounterMid|oCount[1]~DUPLICATE_q\) # (\CounterMid|oCount[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(4),
	datab => \CounterMid|ALT_INV_oCount[2]~DUPLICATE_q\,
	datac => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	dataf => \CounterMid|ALT_INV_oCount\(3),
	combout => \HexDecoderMid|Mux1~0_combout\);

-- Location: LABCELL_X80_Y8_N39
\HexDecoderMid|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux0~0_combout\ = ( \CounterMid|oCount\(3) & ( (!\CounterMid|oCount\(4) & ((!\CounterMid|oCount[2]~DUPLICATE_q\) # (!\CounterMid|oCount\(1)))) # (\CounterMid|oCount\(4) & ((\CounterMid|oCount\(1)) # (\CounterMid|oCount[2]~DUPLICATE_q\))) ) 
-- ) # ( !\CounterMid|oCount\(3) & ( (\CounterMid|oCount[2]~DUPLICATE_q\) # (\CounterMid|oCount\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111110101111111101011010111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(4),
	datac => \CounterMid|ALT_INV_oCount[2]~DUPLICATE_q\,
	datad => \CounterMid|ALT_INV_oCount\(1),
	dataf => \CounterMid|ALT_INV_oCount\(3),
	combout => \HexDecoderMid|Mux0~0_combout\);

-- Location: LABCELL_X80_Y8_N6
\CounterMid|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|Equal0~0_combout\ = ( !\CounterMid|oCount\(3) & ( (\CounterMid|oCount\(4) & (!\CounterMid|oCount\(2) & \CounterMid|oCount\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(4),
	datac => \CounterMid|ALT_INV_oCount\(2),
	datad => \CounterMid|ALT_INV_oCount\(1),
	dataf => \CounterMid|ALT_INV_oCount\(3),
	combout => \CounterMid|Equal0~0_combout\);

-- Location: LABCELL_X80_Y8_N45
\CounterHigh|oCount[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|oCount[4]~1_combout\ = ( \CounterLow|Equal0~0_combout\ & ( \CounterMid|Equal0~0_combout\ & ( (!\EntityReactionFSM|State.Locked~q\) # ((\EntityReactionFSM|State.CountUpTime~q\ & \StrobeGen|oStrobe~q\)) ) ) ) # ( !\CounterLow|Equal0~0_combout\ 
-- & ( \CounterMid|Equal0~0_combout\ & ( !\EntityReactionFSM|State.Locked~q\ ) ) ) # ( \CounterLow|Equal0~0_combout\ & ( !\CounterMid|Equal0~0_combout\ & ( !\EntityReactionFSM|State.Locked~q\ ) ) ) # ( !\CounterLow|Equal0~0_combout\ & ( 
-- !\CounterMid|Equal0~0_combout\ & ( !\EntityReactionFSM|State.Locked~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EntityReactionFSM|ALT_INV_State.CountUpTime~q\,
	datab => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datad => \StrobeGen|ALT_INV_oStrobe~q\,
	datae => \CounterLow|ALT_INV_Equal0~0_combout\,
	dataf => \CounterMid|ALT_INV_Equal0~0_combout\,
	combout => \CounterHigh|oCount[4]~1_combout\);

-- Location: FF_X81_Y8_N26
\CounterHigh|oCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterHigh|oCount~0_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterHigh|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterHigh|oCount\(1));

-- Location: LABCELL_X81_Y8_N24
\CounterHigh|oCount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|oCount~0_combout\ = ( !\CounterHigh|oCount\(1) & ( \EntityReactionFSM|State.Locked~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datae => \CounterHigh|ALT_INV_oCount\(1),
	combout => \CounterHigh|oCount~0_combout\);

-- Location: FF_X81_Y8_N25
\CounterHigh|oCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterHigh|oCount~0_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterHigh|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterHigh|oCount[1]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y8_N57
\CounterHigh|oCount~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|oCount~2_combout\ = ( !\CounterHigh|oCount\(2) & ( \CounterHigh|oCount[1]~DUPLICATE_q\ & ( (\EntityReactionFSM|State.Locked~q\ & ((!\CounterHigh|oCount\(4)) # (\CounterHigh|oCount\(3)))) ) ) ) # ( \CounterHigh|oCount\(2) & ( 
-- !\CounterHigh|oCount[1]~DUPLICATE_q\ & ( \EntityReactionFSM|State.Locked~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datac => \CounterHigh|ALT_INV_oCount\(3),
	datad => \CounterHigh|ALT_INV_oCount\(4),
	datae => \CounterHigh|ALT_INV_oCount\(2),
	dataf => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \CounterHigh|oCount~2_combout\);

-- Location: FF_X81_Y8_N58
\CounterHigh|oCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterHigh|oCount~2_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterHigh|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterHigh|oCount\(2));

-- Location: LABCELL_X81_Y8_N15
\CounterHigh|oCount~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|oCount~3_combout\ = ( \CounterHigh|oCount\(3) & ( \CounterHigh|oCount\(2) & ( (\EntityReactionFSM|State.Locked~q\ & !\CounterHigh|oCount\(1)) ) ) ) # ( !\CounterHigh|oCount\(3) & ( \CounterHigh|oCount\(2) & ( 
-- (\EntityReactionFSM|State.Locked~q\ & \CounterHigh|oCount\(1)) ) ) ) # ( \CounterHigh|oCount\(3) & ( !\CounterHigh|oCount\(2) & ( \EntityReactionFSM|State.Locked~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datad => \CounterHigh|ALT_INV_oCount\(1),
	datae => \CounterHigh|ALT_INV_oCount\(3),
	dataf => \CounterHigh|ALT_INV_oCount\(2),
	combout => \CounterHigh|oCount~3_combout\);

-- Location: FF_X81_Y8_N17
\CounterHigh|oCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterHigh|oCount~3_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterHigh|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterHigh|oCount\(3));

-- Location: LABCELL_X81_Y8_N30
\CounterHigh|oCount~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|oCount~4_combout\ = ( \CounterHigh|oCount\(4) & ( \CounterHigh|oCount\(2) & ( (\EntityReactionFSM|State.Locked~q\ & ((!\CounterHigh|oCount\(1)) # (!\CounterHigh|oCount\(3)))) ) ) ) # ( !\CounterHigh|oCount\(4) & ( \CounterHigh|oCount\(2) & ( 
-- (\EntityReactionFSM|State.Locked~q\ & (\CounterHigh|oCount\(1) & \CounterHigh|oCount\(3))) ) ) ) # ( \CounterHigh|oCount\(4) & ( !\CounterHigh|oCount\(2) & ( (\EntityReactionFSM|State.Locked~q\ & ((!\CounterHigh|oCount\(1)) # (\CounterHigh|oCount\(3)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011001100000000000000110011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datac => \CounterHigh|ALT_INV_oCount\(1),
	datad => \CounterHigh|ALT_INV_oCount\(3),
	datae => \CounterHigh|ALT_INV_oCount\(4),
	dataf => \CounterHigh|ALT_INV_oCount\(2),
	combout => \CounterHigh|oCount~4_combout\);

-- Location: FF_X81_Y8_N31
\CounterHigh|oCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterHigh|oCount~4_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterHigh|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterHigh|oCount\(4));

-- Location: FF_X81_Y8_N16
\CounterHigh|oCount[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterHigh|oCount~3_combout\,
	clrn => \inResetAsync~input_o\,
	ena => \CounterHigh|oCount[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterHigh|oCount[3]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y4_N51
\HexDecoderHigh|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux6~0_combout\ = ( \CounterHigh|oCount[3]~DUPLICATE_q\ & ( (!\CounterHigh|oCount\(2) & (!\CounterHigh|oCount[1]~DUPLICATE_q\ $ (\CounterHigh|oCount\(4)))) ) ) # ( !\CounterHigh|oCount[3]~DUPLICATE_q\ & ( 
-- (\CounterHigh|oCount[1]~DUPLICATE_q\ & (!\CounterHigh|oCount\(4) $ (\CounterHigh|oCount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001100100001001000001000001010000011001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datab => \CounterHigh|ALT_INV_oCount\(4),
	datac => \CounterHigh|ALT_INV_oCount\(2),
	datae => \CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	combout => \HexDecoderHigh|Mux6~0_combout\);

-- Location: MLABCELL_X78_Y4_N54
\HexDecoderHigh|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux5~0_combout\ = ( \CounterHigh|oCount\(4) & ( \CounterHigh|oCount\(2) & ( (\CounterHigh|oCount[1]~DUPLICATE_q\) # (\CounterHigh|oCount[3]~DUPLICATE_q\) ) ) ) # ( !\CounterHigh|oCount\(4) & ( \CounterHigh|oCount\(2) & ( 
-- (\CounterHigh|oCount[3]~DUPLICATE_q\ & !\CounterHigh|oCount[1]~DUPLICATE_q\) ) ) ) # ( \CounterHigh|oCount\(4) & ( !\CounterHigh|oCount\(2) & ( (\CounterHigh|oCount[3]~DUPLICATE_q\ & !\CounterHigh|oCount[1]~DUPLICATE_q\) ) ) ) # ( !\CounterHigh|oCount\(4) 
-- & ( !\CounterHigh|oCount\(2) & ( (\CounterHigh|oCount[3]~DUPLICATE_q\ & \CounterHigh|oCount[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000001010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datae => \CounterHigh|ALT_INV_oCount\(4),
	dataf => \CounterHigh|ALT_INV_oCount\(2),
	combout => \HexDecoderHigh|Mux5~0_combout\);

-- Location: MLABCELL_X78_Y4_N24
\HexDecoderHigh|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux4~0_combout\ = ( \CounterHigh|oCount\(4) & ( \CounterHigh|oCount\(2) & ( \CounterHigh|oCount[3]~DUPLICATE_q\ ) ) ) # ( !\CounterHigh|oCount\(4) & ( \CounterHigh|oCount\(2) & ( (!\CounterHigh|oCount[3]~DUPLICATE_q\ & 
-- !\CounterHigh|oCount[1]~DUPLICATE_q\) ) ) ) # ( \CounterHigh|oCount\(4) & ( !\CounterHigh|oCount\(2) & ( (\CounterHigh|oCount[3]~DUPLICATE_q\ & !\CounterHigh|oCount[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000010100000101000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datae => \CounterHigh|ALT_INV_oCount\(4),
	dataf => \CounterHigh|ALT_INV_oCount\(2),
	combout => \HexDecoderHigh|Mux4~0_combout\);

-- Location: MLABCELL_X78_Y4_N33
\HexDecoderHigh|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux3~0_combout\ = ( \CounterHigh|oCount[3]~DUPLICATE_q\ & ( (!\CounterHigh|oCount[1]~DUPLICATE_q\ & (!\CounterHigh|oCount\(4) & !\CounterHigh|oCount\(2))) # (\CounterHigh|oCount[1]~DUPLICATE_q\ & ((\CounterHigh|oCount\(2)))) ) ) # ( 
-- !\CounterHigh|oCount[3]~DUPLICATE_q\ & ( (!\CounterHigh|oCount[1]~DUPLICATE_q\ & (\CounterHigh|oCount\(4) & \CounterHigh|oCount\(2))) # (\CounterHigh|oCount[1]~DUPLICATE_q\ & (!\CounterHigh|oCount\(4) & !\CounterHigh|oCount\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010100001011000010101000010010000101000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datab => \CounterHigh|ALT_INV_oCount\(4),
	datac => \CounterHigh|ALT_INV_oCount\(2),
	datae => \CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	combout => \HexDecoderHigh|Mux3~0_combout\);

-- Location: MLABCELL_X78_Y4_N0
\HexDecoderHigh|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux2~0_combout\ = ( !\CounterHigh|oCount\(4) & ( \CounterHigh|oCount\(2) & ( \CounterHigh|oCount[1]~DUPLICATE_q\ ) ) ) # ( \CounterHigh|oCount\(4) & ( !\CounterHigh|oCount\(2) & ( (!\CounterHigh|oCount[3]~DUPLICATE_q\ & 
-- \CounterHigh|oCount[1]~DUPLICATE_q\) ) ) ) # ( !\CounterHigh|oCount\(4) & ( !\CounterHigh|oCount\(2) & ( (\CounterHigh|oCount[1]~DUPLICATE_q\) # (\CounterHigh|oCount[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000010100000101000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datae => \CounterHigh|ALT_INV_oCount\(4),
	dataf => \CounterHigh|ALT_INV_oCount\(2),
	combout => \HexDecoderHigh|Mux2~0_combout\);

-- Location: MLABCELL_X78_Y4_N21
\HexDecoderHigh|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux1~0_combout\ = ( \CounterHigh|oCount[3]~DUPLICATE_q\ & ( (\CounterHigh|oCount[1]~DUPLICATE_q\ & (!\CounterHigh|oCount\(4) $ (!\CounterHigh|oCount\(2)))) ) ) # ( !\CounterHigh|oCount[3]~DUPLICATE_q\ & ( (!\CounterHigh|oCount\(4) & 
-- ((\CounterHigh|oCount\(2)) # (\CounterHigh|oCount[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100000101000001010001001100010011000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datab => \CounterHigh|ALT_INV_oCount\(4),
	datac => \CounterHigh|ALT_INV_oCount\(2),
	datae => \CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	combout => \HexDecoderHigh|Mux1~0_combout\);

-- Location: MLABCELL_X78_Y4_N36
\HexDecoderHigh|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux0~0_combout\ = ( \CounterHigh|oCount\(4) & ( \CounterHigh|oCount\(2) ) ) # ( !\CounterHigh|oCount\(4) & ( \CounterHigh|oCount\(2) & ( (!\CounterHigh|oCount[3]~DUPLICATE_q\) # (!\CounterHigh|oCount[1]~DUPLICATE_q\) ) ) ) # ( 
-- \CounterHigh|oCount\(4) & ( !\CounterHigh|oCount\(2) & ( (!\CounterHigh|oCount[3]~DUPLICATE_q\) # (\CounterHigh|oCount[1]~DUPLICATE_q\) ) ) ) # ( !\CounterHigh|oCount\(4) & ( !\CounterHigh|oCount\(2) & ( \CounterHigh|oCount[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101011111010111111111010111110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datae => \CounterHigh|ALT_INV_oCount\(4),
	dataf => \CounterHigh|ALT_INV_oCount\(2),
	combout => \HexDecoderHigh|Mux0~0_combout\);

-- Location: LABCELL_X48_Y2_N0
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


