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

-- DATE "12/19/2025 19:24:49"

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
	iEnable : IN std_logic;
	iA_Sync : IN std_logic;
	iB_Sync : IN std_logic;
	oLEDs : BUFFER std_logic_vector(3 DOWNTO 0);
	oHEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	oHEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	oHEX3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END ReactionGameStruct;

-- Design Ports Information
-- iEnable	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oLEDs[0]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oLEDs[1]	=>  Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oLEDs[2]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oLEDs[3]	=>  Location: PIN_AJ22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[0]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[1]	=>  Location: PIN_AH23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[2]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[3]	=>  Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[4]	=>  Location: PIN_AK24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[5]	=>  Location: PIN_AJ24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX1[6]	=>  Location: PIN_AJ25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[0]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[1]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[2]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[3]	=>  Location: PIN_AK27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[4]	=>  Location: PIN_AH25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[5]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX2[6]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[0]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[1]	=>  Location: PIN_AK22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[2]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[3]	=>  Location: PIN_AK23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[4]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[5]	=>  Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oHEX3[6]	=>  Location: PIN_AK21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- iClk	=>  Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inResetAsync	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iA_Sync	=>  Location: PIN_AK26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iB_Sync	=>  Location: PIN_AJ26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_iEnable : std_logic;
SIGNAL ww_iA_Sync : std_logic;
SIGNAL ww_iB_Sync : std_logic;
SIGNAL ww_oLEDs : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_oHEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oHEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oHEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \iEnable~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \iClk~input_o\ : std_logic;
SIGNAL \iClk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \EntityReactionFSM|State.Unlocked~0_combout\ : std_logic;
SIGNAL \inResetAsync~input_o\ : std_logic;
SIGNAL \iA_Sync~input_o\ : std_logic;
SIGNAL \iB_Sync~input_o\ : std_logic;
SIGNAL \StrobeGen|Add0~9_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~10\ : std_logic;
SIGNAL \StrobeGen|Add0~13_sumout\ : std_logic;
SIGNAL \StrobeGen|Count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|Add0~14\ : std_logic;
SIGNAL \StrobeGen|Add0~17_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~18\ : std_logic;
SIGNAL \StrobeGen|Add0~21_sumout\ : std_logic;
SIGNAL \StrobeGen|Count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|Add0~22\ : std_logic;
SIGNAL \StrobeGen|Add0~25_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~26\ : std_logic;
SIGNAL \StrobeGen|Add0~1_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~2\ : std_logic;
SIGNAL \StrobeGen|Add0~29_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~30\ : std_logic;
SIGNAL \StrobeGen|Add0~33_sumout\ : std_logic;
SIGNAL \StrobeGen|Count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|Add0~34\ : std_logic;
SIGNAL \StrobeGen|Add0~37_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~38\ : std_logic;
SIGNAL \StrobeGen|Add0~41_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~42\ : std_logic;
SIGNAL \StrobeGen|Add0~45_sumout\ : std_logic;
SIGNAL \StrobeGen|Count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|Add0~46\ : std_logic;
SIGNAL \StrobeGen|Add0~5_sumout\ : std_logic;
SIGNAL \StrobeGen|Equal0~1_combout\ : std_logic;
SIGNAL \StrobeGen|Count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|Add0~6\ : std_logic;
SIGNAL \StrobeGen|Add0~49_sumout\ : std_logic;
SIGNAL \StrobeGen|Count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|Add0~50\ : std_logic;
SIGNAL \StrobeGen|Add0~53_sumout\ : std_logic;
SIGNAL \StrobeGen|Add0~54\ : std_logic;
SIGNAL \StrobeGen|Add0~57_sumout\ : std_logic;
SIGNAL \StrobeGen|Count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|Count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|Add0~58\ : std_logic;
SIGNAL \StrobeGen|Add0~61_sumout\ : std_logic;
SIGNAL \StrobeGen|Equal0~2_combout\ : std_logic;
SIGNAL \StrobeGen|Count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|Count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|Equal0~0_combout\ : std_logic;
SIGNAL \StrobeGen|Equal0~3_combout\ : std_logic;
SIGNAL \StrobeGen|oStrobe~q\ : std_logic;
SIGNAL \EntityReactionFSM|State~12_combout\ : std_logic;
SIGNAL \EntityReactionFSM|State.Unlocked~q\ : std_logic;
SIGNAL \EntityReactionFSM|State.CountUpTime~q\ : std_logic;
SIGNAL \EntityReactionFSM|State.ShowResult~q\ : std_logic;
SIGNAL \EntityReactionFSM|State.Locked~0_combout\ : std_logic;
SIGNAL \EntityReactionFSM|State.Locked~q\ : std_logic;
SIGNAL \CounterLow|Mod0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \CounterLow|Mod0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \CounterLow|Add0~0_combout\ : std_logic;
SIGNAL \CounterLow|Mod0|auto_generated|divider|divider|op_4~2\ : std_logic;
SIGNAL \CounterLow|Mod0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \CounterLow|Mod0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \CounterLow|Mod0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \CounterLow|Add0~2_combout\ : std_logic;
SIGNAL \CounterLow|oCount[1]~1_combout\ : std_logic;
SIGNAL \CounterLow|Mod0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \CounterLow|Mod0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \CounterLow|Mod0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \CounterLow|Add0~1_combout\ : std_logic;
SIGNAL \CounterLow|oCount[1]~0_combout\ : std_logic;
SIGNAL \CounterLow|oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterLow|oCount[1]~_wirecell_combout\ : std_logic;
SIGNAL \CounterLow|Mod0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \CounterLow|oCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \HexDecoderLow|Mux6~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|Mux5~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|Mux4~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|Mux3~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|Mux2~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|Mux1~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|Mux0~0_combout\ : std_logic;
SIGNAL \CounterMid|oCount[1]~_wirecell_combout\ : std_logic;
SIGNAL \CounterMid|Mod0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \CounterMid|Mod0|auto_generated|divider|divider|op_4~2\ : std_logic;
SIGNAL \CounterMid|Mod0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \CounterMid|Mod0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \CounterMid|Add0~0_combout\ : std_logic;
SIGNAL \CounterMid|Mod0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \CounterMid|Mod0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \CounterMid|Mod0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \CounterLow|oOverflow~0_combout\ : std_logic;
SIGNAL \CounterLow|oOverflow~1_combout\ : std_logic;
SIGNAL \CounterLow|oOverflow~q\ : std_logic;
SIGNAL \CounterMid|oCount[1]~1_combout\ : std_logic;
SIGNAL \CounterMid|oCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterMid|oCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterMid|Add0~1_combout\ : std_logic;
SIGNAL \CounterMid|Mod0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \CounterMid|Add0~2_combout\ : std_logic;
SIGNAL \CounterMid|oCount[1]~0_combout\ : std_logic;
SIGNAL \CounterMid|Mod0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \CounterMid|oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterMid|Mod0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \HexDecoderMid|Mux6~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|Mux5~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|Mux4~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|Mux3~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|Mux2~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|Mux1~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|Mux0~0_combout\ : std_logic;
SIGNAL \CounterHigh|Mod0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \CounterHigh|Mod0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \CounterHigh|Mod0|auto_generated|divider|divider|op_4~2\ : std_logic;
SIGNAL \CounterHigh|Mod0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \CounterHigh|Mod0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \CounterHigh|Add0~0_combout\ : std_logic;
SIGNAL \CounterMid|Equal0~0_combout\ : std_logic;
SIGNAL \CounterMid|oOverflow~0_combout\ : std_logic;
SIGNAL \CounterMid|oOverflow~q\ : std_logic;
SIGNAL \CounterHigh|oCount[1]~1_combout\ : std_logic;
SIGNAL \CounterHigh|oCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterHigh|Mod0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \CounterHigh|Mod0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \CounterHigh|Mod0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \CounterHigh|Add0~1_combout\ : std_logic;
SIGNAL \CounterHigh|oCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterHigh|Mod0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \CounterHigh|Add0~2_combout\ : std_logic;
SIGNAL \CounterHigh|oCount[1]~0_combout\ : std_logic;
SIGNAL \CounterHigh|oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterHigh|oCount[1]~_wirecell_combout\ : std_logic;
SIGNAL \CounterHigh|Mod0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \HexDecoderHigh|Mux6~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|Mux5~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|Mux4~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|Mux3~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|Mux2~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|Mux1~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|Mux0~0_combout\ : std_logic;
SIGNAL \CounterLow|oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \CounterHigh|oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \CounterMid|oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \StrobeGen|Count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \StrobeGen|ALT_INV_Count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CounterMid|ALT_INV_oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \CounterLow|ALT_INV_oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \CounterHigh|ALT_INV_oCount\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \HexDecoderLow|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \EntityReactionFSM|ALT_INV_State.Unlocked~q\ : std_logic;
SIGNAL \HexDecoderMid|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \EntityReactionFSM|ALT_INV_State.CountUpTime~q\ : std_logic;
SIGNAL \HexDecoderLow|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \EntityReactionFSM|ALT_INV_State.Locked~q\ : std_logic;
SIGNAL \HexDecoderLow|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \EntityReactionFSM|ALT_INV_State.ShowResult~q\ : std_logic;
SIGNAL \HexDecoderHigh|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \HexDecoderMid|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \HexDecoderHigh|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \HexDecoderLow|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_oStrobe~q\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \CounterMid|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CounterMid|ALT_INV_oOverflow~q\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterLow|ALT_INV_oOverflow~q\ : std_logic;
SIGNAL \CounterMid|ALT_INV_oCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterHigh|ALT_INV_oCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_iB_Sync~input_o\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CounterLow|ALT_INV_oOverflow~0_combout\ : std_logic;
SIGNAL \CounterLow|ALT_INV_oCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_iA_Sync~input_o\ : std_logic;
SIGNAL \StrobeGen|ALT_INV_Count[4]~DUPLICATE_q\ : std_logic;

BEGIN

ww_iClk <= iClk;
ww_inResetAsync <= inResetAsync;
ww_iEnable <= iEnable;
ww_iA_Sync <= iA_Sync;
ww_iB_Sync <= iB_Sync;
oLEDs <= ww_oLEDs;
oHEX1 <= ww_oHEX1;
oHEX2 <= ww_oHEX2;
oHEX3 <= ww_oHEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\StrobeGen|ALT_INV_Count\(0) <= NOT \StrobeGen|Count\(0);
\StrobeGen|ALT_INV_Count\(2) <= NOT \StrobeGen|Count\(2);
\StrobeGen|ALT_INV_Count\(3) <= NOT \StrobeGen|Count\(3);
\StrobeGen|ALT_INV_Count\(4) <= NOT \StrobeGen|Count\(4);
\StrobeGen|ALT_INV_Count\(6) <= NOT \StrobeGen|Count\(6);
\CounterMid|ALT_INV_oCount\(1) <= NOT \CounterMid|oCount\(1);
\CounterLow|ALT_INV_oCount\(3) <= NOT \CounterLow|oCount\(3);
\CounterMid|ALT_INV_oCount\(3) <= NOT \CounterMid|oCount\(3);
\CounterHigh|ALT_INV_oCount\(4) <= NOT \CounterHigh|oCount\(4);
\CounterMid|ALT_INV_oCount\(2) <= NOT \CounterMid|oCount\(2);
\CounterHigh|ALT_INV_oCount\(3) <= NOT \CounterHigh|oCount\(3);
\CounterMid|ALT_INV_oCount\(4) <= NOT \CounterMid|oCount\(4);
\StrobeGen|ALT_INV_Count\(1) <= NOT \StrobeGen|Count\(1);
\StrobeGen|ALT_INV_Count\(7) <= NOT \StrobeGen|Count\(7);
\StrobeGen|ALT_INV_Count\(11) <= NOT \StrobeGen|Count\(11);
\StrobeGen|ALT_INV_Count\(8) <= NOT \StrobeGen|Count\(8);
\StrobeGen|ALT_INV_Count\(9) <= NOT \StrobeGen|Count\(9);
\CounterLow|ALT_INV_oCount\(4) <= NOT \CounterLow|oCount\(4);
\CounterLow|ALT_INV_oCount\(1) <= NOT \CounterLow|oCount\(1);
\CounterLow|ALT_INV_oCount\(2) <= NOT \CounterLow|oCount\(2);
\StrobeGen|ALT_INV_Count\(5) <= NOT \StrobeGen|Count\(5);
\CounterHigh|ALT_INV_oCount\(2) <= NOT \CounterHigh|oCount\(2);
\CounterHigh|ALT_INV_oCount\(1) <= NOT \CounterHigh|oCount\(1);
\StrobeGen|ALT_INV_Count\(12) <= NOT \StrobeGen|Count\(12);
\HexDecoderLow|ALT_INV_Mux4~0_combout\ <= NOT \HexDecoderLow|Mux4~0_combout\;
\EntityReactionFSM|ALT_INV_State.Unlocked~q\ <= NOT \EntityReactionFSM|State.Unlocked~q\;
\HexDecoderMid|ALT_INV_Mux1~0_combout\ <= NOT \HexDecoderMid|Mux1~0_combout\;
\EntityReactionFSM|ALT_INV_State.CountUpTime~q\ <= NOT \EntityReactionFSM|State.CountUpTime~q\;
\StrobeGen|ALT_INV_Count\(10) <= NOT \StrobeGen|Count\(10);
\HexDecoderLow|ALT_INV_Mux1~0_combout\ <= NOT \HexDecoderLow|Mux1~0_combout\;
\HexDecoderMid|ALT_INV_Mux4~0_combout\ <= NOT \HexDecoderMid|Mux4~0_combout\;
\HexDecoderHigh|ALT_INV_Mux3~0_combout\ <= NOT \HexDecoderHigh|Mux3~0_combout\;
\HexDecoderHigh|ALT_INV_Mux2~0_combout\ <= NOT \HexDecoderHigh|Mux2~0_combout\;
\HexDecoderLow|ALT_INV_Mux2~0_combout\ <= NOT \HexDecoderLow|Mux2~0_combout\;
\EntityReactionFSM|ALT_INV_State.Locked~q\ <= NOT \EntityReactionFSM|State.Locked~q\;
\HexDecoderLow|ALT_INV_Mux3~0_combout\ <= NOT \HexDecoderLow|Mux3~0_combout\;
\HexDecoderMid|ALT_INV_Mux2~0_combout\ <= NOT \HexDecoderMid|Mux2~0_combout\;
\StrobeGen|ALT_INV_Count\(15) <= NOT \StrobeGen|Count\(15);
\HexDecoderLow|ALT_INV_Mux6~0_combout\ <= NOT \HexDecoderLow|Mux6~0_combout\;
\HexDecoderMid|ALT_INV_Mux6~0_combout\ <= NOT \HexDecoderMid|Mux6~0_combout\;
\HexDecoderMid|ALT_INV_Mux3~0_combout\ <= NOT \HexDecoderMid|Mux3~0_combout\;
\EntityReactionFSM|ALT_INV_State.ShowResult~q\ <= NOT \EntityReactionFSM|State.ShowResult~q\;
\HexDecoderHigh|ALT_INV_Mux6~0_combout\ <= NOT \HexDecoderHigh|Mux6~0_combout\;
\HexDecoderMid|ALT_INV_Mux5~0_combout\ <= NOT \HexDecoderMid|Mux5~0_combout\;
\HexDecoderHigh|ALT_INV_Mux5~0_combout\ <= NOT \HexDecoderHigh|Mux5~0_combout\;
\HexDecoderHigh|ALT_INV_Mux4~0_combout\ <= NOT \HexDecoderHigh|Mux4~0_combout\;
\StrobeGen|ALT_INV_Count\(13) <= NOT \StrobeGen|Count\(13);
\HexDecoderHigh|ALT_INV_Mux1~0_combout\ <= NOT \HexDecoderHigh|Mux1~0_combout\;
\HexDecoderLow|ALT_INV_Mux5~0_combout\ <= NOT \HexDecoderLow|Mux5~0_combout\;
\StrobeGen|ALT_INV_Count\(14) <= NOT \StrobeGen|Count\(14);
\StrobeGen|ALT_INV_Count[10]~DUPLICATE_q\ <= NOT \StrobeGen|Count[10]~DUPLICATE_q\;
\StrobeGen|ALT_INV_oStrobe~q\ <= NOT \StrobeGen|oStrobe~q\;
\StrobeGen|ALT_INV_Equal0~1_combout\ <= NOT \StrobeGen|Equal0~1_combout\;
\CounterMid|ALT_INV_Equal0~0_combout\ <= NOT \CounterMid|Equal0~0_combout\;
\CounterMid|ALT_INV_oOverflow~q\ <= NOT \CounterMid|oOverflow~q\;
\StrobeGen|ALT_INV_Equal0~0_combout\ <= NOT \StrobeGen|Equal0~0_combout\;
\StrobeGen|ALT_INV_Equal0~2_combout\ <= NOT \StrobeGen|Equal0~2_combout\;
\CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\ <= NOT \CounterLow|oCount[1]~DUPLICATE_q\;
\CounterLow|ALT_INV_oOverflow~q\ <= NOT \CounterLow|oOverflow~q\;
\CounterMid|ALT_INV_oCount[2]~DUPLICATE_q\ <= NOT \CounterMid|oCount[2]~DUPLICATE_q\;
\CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\ <= NOT \CounterHigh|oCount[1]~DUPLICATE_q\;
\CounterHigh|ALT_INV_oCount[2]~DUPLICATE_q\ <= NOT \CounterHigh|oCount[2]~DUPLICATE_q\;
\CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\ <= NOT \CounterHigh|oCount[3]~DUPLICATE_q\;
\StrobeGen|ALT_INV_Count[3]~DUPLICATE_q\ <= NOT \StrobeGen|Count[3]~DUPLICATE_q\;
\StrobeGen|ALT_INV_Count[7]~DUPLICATE_q\ <= NOT \StrobeGen|Count[7]~DUPLICATE_q\;
\ALT_INV_iB_Sync~input_o\ <= NOT \iB_Sync~input_o\;
\StrobeGen|ALT_INV_Count[13]~DUPLICATE_q\ <= NOT \StrobeGen|Count[13]~DUPLICATE_q\;
\StrobeGen|ALT_INV_Count[15]~DUPLICATE_q\ <= NOT \StrobeGen|Count[15]~DUPLICATE_q\;
\CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\ <= NOT \CounterMid|oCount[3]~DUPLICATE_q\;
\StrobeGen|ALT_INV_Count[12]~DUPLICATE_q\ <= NOT \StrobeGen|Count[12]~DUPLICATE_q\;
\StrobeGen|ALT_INV_Count[14]~DUPLICATE_q\ <= NOT \StrobeGen|Count[14]~DUPLICATE_q\;
\CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\ <= NOT \CounterMid|oCount[1]~DUPLICATE_q\;
\CounterLow|ALT_INV_oOverflow~0_combout\ <= NOT \CounterLow|oOverflow~0_combout\;
\CounterLow|ALT_INV_oCount[2]~DUPLICATE_q\ <= NOT \CounterLow|oCount[2]~DUPLICATE_q\;
\StrobeGen|ALT_INV_Count[0]~DUPLICATE_q\ <= NOT \StrobeGen|Count[0]~DUPLICATE_q\;
\StrobeGen|ALT_INV_Count[1]~DUPLICATE_q\ <= NOT \StrobeGen|Count[1]~DUPLICATE_q\;
\ALT_INV_iA_Sync~input_o\ <= NOT \iA_Sync~input_o\;
\StrobeGen|ALT_INV_Count[4]~DUPLICATE_q\ <= NOT \StrobeGen|Count[4]~DUPLICATE_q\;

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X76_Y0_N2
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

-- Location: IOOBUF_X70_Y0_N19
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

-- Location: IOOBUF_X70_Y0_N53
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

-- Location: IOOBUF_X70_Y0_N2
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

-- Location: IOOBUF_X70_Y0_N36
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

-- Location: IOOBUF_X74_Y0_N42
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

-- Location: IOOBUF_X74_Y0_N59
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

-- Location: IOOBUF_X72_Y0_N53
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

-- Location: IOOBUF_X74_Y0_N76
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

-- Location: IOOBUF_X74_Y0_N93
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

-- Location: IOOBUF_X80_Y0_N2
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

-- Location: IOOBUF_X76_Y0_N19
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

-- Location: IOOBUF_X78_Y0_N36
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

-- Location: IOOBUF_X80_Y0_N53
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

-- Location: IOOBUF_X78_Y0_N53
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

-- Location: IOOBUF_X78_Y0_N19
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

-- Location: IOOBUF_X78_Y0_N2
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

-- Location: IOOBUF_X68_Y0_N19
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

-- Location: IOOBUF_X68_Y0_N53
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

-- Location: IOOBUF_X66_Y0_N42
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

-- Location: IOOBUF_X72_Y0_N36
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

-- Location: IOOBUF_X68_Y0_N2
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

-- Location: IOOBUF_X66_Y0_N93
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

-- Location: IOOBUF_X68_Y0_N36
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

-- Location: IOIBUF_X89_Y25_N21
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

-- Location: LABCELL_X74_Y4_N36
\EntityReactionFSM|State.Unlocked~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionFSM|State.Unlocked~0_combout\ = ( !\EntityReactionFSM|State.Locked~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	combout => \EntityReactionFSM|State.Unlocked~0_combout\);

-- Location: IOIBUF_X72_Y0_N18
\inResetAsync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inResetAsync,
	o => \inResetAsync~input_o\);

-- Location: IOIBUF_X76_Y0_N52
\iA_Sync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA_Sync,
	o => \iA_Sync~input_o\);

-- Location: IOIBUF_X76_Y0_N35
\iB_Sync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB_Sync,
	o => \iB_Sync~input_o\);

-- Location: LABCELL_X73_Y4_N0
\StrobeGen|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~9_sumout\ = SUM(( \StrobeGen|Count\(0) ) + ( VCC ) + ( !VCC ))
-- \StrobeGen|Add0~10\ = CARRY(( \StrobeGen|Count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \StrobeGen|ALT_INV_Count\(0),
	cin => GND,
	sumout => \StrobeGen|Add0~9_sumout\,
	cout => \StrobeGen|Add0~10\);

-- Location: FF_X73_Y4_N2
\StrobeGen|Count[0]\ : dffeas
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
	q => \StrobeGen|Count\(0));

-- Location: LABCELL_X73_Y4_N3
\StrobeGen|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~13_sumout\ = SUM(( \StrobeGen|Count[1]~DUPLICATE_q\ ) + ( GND ) + ( \StrobeGen|Add0~10\ ))
-- \StrobeGen|Add0~14\ = CARRY(( \StrobeGen|Count[1]~DUPLICATE_q\ ) + ( GND ) + ( \StrobeGen|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \StrobeGen|ALT_INV_Count[1]~DUPLICATE_q\,
	cin => \StrobeGen|Add0~10\,
	sumout => \StrobeGen|Add0~13_sumout\,
	cout => \StrobeGen|Add0~14\);

-- Location: FF_X73_Y4_N5
\StrobeGen|Count[1]~DUPLICATE\ : dffeas
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
	q => \StrobeGen|Count[1]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y4_N6
\StrobeGen|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~17_sumout\ = SUM(( \StrobeGen|Count\(2) ) + ( GND ) + ( \StrobeGen|Add0~14\ ))
-- \StrobeGen|Add0~18\ = CARRY(( \StrobeGen|Count\(2) ) + ( GND ) + ( \StrobeGen|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \StrobeGen|ALT_INV_Count\(2),
	cin => \StrobeGen|Add0~14\,
	sumout => \StrobeGen|Add0~17_sumout\,
	cout => \StrobeGen|Add0~18\);

-- Location: FF_X73_Y4_N7
\StrobeGen|Count[2]\ : dffeas
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
	q => \StrobeGen|Count\(2));

-- Location: LABCELL_X73_Y4_N9
\StrobeGen|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~21_sumout\ = SUM(( \StrobeGen|Count[3]~DUPLICATE_q\ ) + ( GND ) + ( \StrobeGen|Add0~18\ ))
-- \StrobeGen|Add0~22\ = CARRY(( \StrobeGen|Count[3]~DUPLICATE_q\ ) + ( GND ) + ( \StrobeGen|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count[3]~DUPLICATE_q\,
	cin => \StrobeGen|Add0~18\,
	sumout => \StrobeGen|Add0~21_sumout\,
	cout => \StrobeGen|Add0~22\);

-- Location: FF_X73_Y4_N11
\StrobeGen|Count[3]~DUPLICATE\ : dffeas
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
	q => \StrobeGen|Count[3]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y4_N12
\StrobeGen|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~25_sumout\ = SUM(( \StrobeGen|Count\(4) ) + ( GND ) + ( \StrobeGen|Add0~22\ ))
-- \StrobeGen|Add0~26\ = CARRY(( \StrobeGen|Count\(4) ) + ( GND ) + ( \StrobeGen|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \StrobeGen|ALT_INV_Count\(4),
	cin => \StrobeGen|Add0~22\,
	sumout => \StrobeGen|Add0~25_sumout\,
	cout => \StrobeGen|Add0~26\);

-- Location: FF_X73_Y4_N14
\StrobeGen|Count[4]\ : dffeas
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
	q => \StrobeGen|Count\(4));

-- Location: LABCELL_X73_Y4_N15
\StrobeGen|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~1_sumout\ = SUM(( \StrobeGen|Count\(5) ) + ( GND ) + ( \StrobeGen|Add0~26\ ))
-- \StrobeGen|Add0~2\ = CARRY(( \StrobeGen|Count\(5) ) + ( GND ) + ( \StrobeGen|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count\(5),
	cin => \StrobeGen|Add0~26\,
	sumout => \StrobeGen|Add0~1_sumout\,
	cout => \StrobeGen|Add0~2\);

-- Location: FF_X73_Y4_N17
\StrobeGen|Count[5]\ : dffeas
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
	q => \StrobeGen|Count\(5));

-- Location: LABCELL_X73_Y4_N18
\StrobeGen|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~29_sumout\ = SUM(( \StrobeGen|Count\(6) ) + ( GND ) + ( \StrobeGen|Add0~2\ ))
-- \StrobeGen|Add0~30\ = CARRY(( \StrobeGen|Count\(6) ) + ( GND ) + ( \StrobeGen|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count\(6),
	cin => \StrobeGen|Add0~2\,
	sumout => \StrobeGen|Add0~29_sumout\,
	cout => \StrobeGen|Add0~30\);

-- Location: FF_X73_Y4_N20
\StrobeGen|Count[6]\ : dffeas
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
	q => \StrobeGen|Count\(6));

-- Location: LABCELL_X73_Y4_N21
\StrobeGen|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~33_sumout\ = SUM(( \StrobeGen|Count[7]~DUPLICATE_q\ ) + ( GND ) + ( \StrobeGen|Add0~30\ ))
-- \StrobeGen|Add0~34\ = CARRY(( \StrobeGen|Count[7]~DUPLICATE_q\ ) + ( GND ) + ( \StrobeGen|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \StrobeGen|ALT_INV_Count[7]~DUPLICATE_q\,
	cin => \StrobeGen|Add0~30\,
	sumout => \StrobeGen|Add0~33_sumout\,
	cout => \StrobeGen|Add0~34\);

-- Location: FF_X73_Y4_N23
\StrobeGen|Count[7]~DUPLICATE\ : dffeas
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
	q => \StrobeGen|Count[7]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y4_N24
\StrobeGen|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~37_sumout\ = SUM(( \StrobeGen|Count\(8) ) + ( GND ) + ( \StrobeGen|Add0~34\ ))
-- \StrobeGen|Add0~38\ = CARRY(( \StrobeGen|Count\(8) ) + ( GND ) + ( \StrobeGen|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count\(8),
	cin => \StrobeGen|Add0~34\,
	sumout => \StrobeGen|Add0~37_sumout\,
	cout => \StrobeGen|Add0~38\);

-- Location: FF_X73_Y4_N26
\StrobeGen|Count[8]\ : dffeas
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
	q => \StrobeGen|Count\(8));

-- Location: LABCELL_X73_Y4_N27
\StrobeGen|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~41_sumout\ = SUM(( \StrobeGen|Count\(9) ) + ( GND ) + ( \StrobeGen|Add0~38\ ))
-- \StrobeGen|Add0~42\ = CARRY(( \StrobeGen|Count\(9) ) + ( GND ) + ( \StrobeGen|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \StrobeGen|ALT_INV_Count\(9),
	cin => \StrobeGen|Add0~38\,
	sumout => \StrobeGen|Add0~41_sumout\,
	cout => \StrobeGen|Add0~42\);

-- Location: FF_X73_Y4_N29
\StrobeGen|Count[9]\ : dffeas
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
	q => \StrobeGen|Count\(9));

-- Location: LABCELL_X73_Y4_N30
\StrobeGen|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~45_sumout\ = SUM(( \StrobeGen|Count[10]~DUPLICATE_q\ ) + ( GND ) + ( \StrobeGen|Add0~42\ ))
-- \StrobeGen|Add0~46\ = CARRY(( \StrobeGen|Count[10]~DUPLICATE_q\ ) + ( GND ) + ( \StrobeGen|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count[10]~DUPLICATE_q\,
	cin => \StrobeGen|Add0~42\,
	sumout => \StrobeGen|Add0~45_sumout\,
	cout => \StrobeGen|Add0~46\);

-- Location: FF_X73_Y4_N31
\StrobeGen|Count[10]~DUPLICATE\ : dffeas
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
	q => \StrobeGen|Count[10]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y4_N33
\StrobeGen|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~5_sumout\ = SUM(( \StrobeGen|Count\(11) ) + ( GND ) + ( \StrobeGen|Add0~46\ ))
-- \StrobeGen|Add0~6\ = CARRY(( \StrobeGen|Count\(11) ) + ( GND ) + ( \StrobeGen|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StrobeGen|ALT_INV_Count\(11),
	cin => \StrobeGen|Add0~46\,
	sumout => \StrobeGen|Add0~5_sumout\,
	cout => \StrobeGen|Add0~6\);

-- Location: FF_X73_Y4_N35
\StrobeGen|Count[11]\ : dffeas
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
	q => \StrobeGen|Count\(11));

-- Location: FF_X73_Y4_N22
\StrobeGen|Count[7]\ : dffeas
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
	q => \StrobeGen|Count\(7));

-- Location: FF_X73_Y4_N32
\StrobeGen|Count[10]\ : dffeas
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
	q => \StrobeGen|Count\(10));

-- Location: LABCELL_X73_Y4_N54
\StrobeGen|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Equal0~1_combout\ = ( !\StrobeGen|Count\(10) & ( (\StrobeGen|Count\(6) & (!\StrobeGen|Count\(7) & (\StrobeGen|Count\(8) & \StrobeGen|Count\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StrobeGen|ALT_INV_Count\(6),
	datab => \StrobeGen|ALT_INV_Count\(7),
	datac => \StrobeGen|ALT_INV_Count\(8),
	datad => \StrobeGen|ALT_INV_Count\(9),
	dataf => \StrobeGen|ALT_INV_Count\(10),
	combout => \StrobeGen|Equal0~1_combout\);

-- Location: FF_X73_Y4_N41
\StrobeGen|Count[13]~DUPLICATE\ : dffeas
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
	q => \StrobeGen|Count[13]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y4_N36
\StrobeGen|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~49_sumout\ = SUM(( \StrobeGen|Count[12]~DUPLICATE_q\ ) + ( GND ) + ( \StrobeGen|Add0~6\ ))
-- \StrobeGen|Add0~50\ = CARRY(( \StrobeGen|Count[12]~DUPLICATE_q\ ) + ( GND ) + ( \StrobeGen|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count[12]~DUPLICATE_q\,
	cin => \StrobeGen|Add0~6\,
	sumout => \StrobeGen|Add0~49_sumout\,
	cout => \StrobeGen|Add0~50\);

-- Location: FF_X73_Y4_N38
\StrobeGen|Count[12]~DUPLICATE\ : dffeas
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
	q => \StrobeGen|Count[12]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y4_N39
\StrobeGen|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~53_sumout\ = SUM(( \StrobeGen|Count[13]~DUPLICATE_q\ ) + ( GND ) + ( \StrobeGen|Add0~50\ ))
-- \StrobeGen|Add0~54\ = CARRY(( \StrobeGen|Count[13]~DUPLICATE_q\ ) + ( GND ) + ( \StrobeGen|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count[13]~DUPLICATE_q\,
	cin => \StrobeGen|Add0~50\,
	sumout => \StrobeGen|Add0~53_sumout\,
	cout => \StrobeGen|Add0~54\);

-- Location: FF_X73_Y4_N40
\StrobeGen|Count[13]\ : dffeas
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
	q => \StrobeGen|Count\(13));

-- Location: FF_X73_Y4_N37
\StrobeGen|Count[12]\ : dffeas
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
	q => \StrobeGen|Count\(12));

-- Location: FF_X73_Y4_N44
\StrobeGen|Count[14]\ : dffeas
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
	q => \StrobeGen|Count\(14));

-- Location: LABCELL_X73_Y4_N42
\StrobeGen|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~57_sumout\ = SUM(( \StrobeGen|Count\(14) ) + ( GND ) + ( \StrobeGen|Add0~54\ ))
-- \StrobeGen|Add0~58\ = CARRY(( \StrobeGen|Count\(14) ) + ( GND ) + ( \StrobeGen|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \StrobeGen|ALT_INV_Count\(14),
	cin => \StrobeGen|Add0~54\,
	sumout => \StrobeGen|Add0~57_sumout\,
	cout => \StrobeGen|Add0~58\);

-- Location: FF_X73_Y4_N43
\StrobeGen|Count[14]~DUPLICATE\ : dffeas
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
	q => \StrobeGen|Count[14]~DUPLICATE_q\);

-- Location: FF_X73_Y4_N47
\StrobeGen|Count[15]~DUPLICATE\ : dffeas
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
	q => \StrobeGen|Count[15]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y4_N45
\StrobeGen|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Add0~61_sumout\ = SUM(( \StrobeGen|Count[15]~DUPLICATE_q\ ) + ( GND ) + ( \StrobeGen|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_Count[15]~DUPLICATE_q\,
	cin => \StrobeGen|Add0~58\,
	sumout => \StrobeGen|Add0~61_sumout\);

-- Location: FF_X73_Y4_N46
\StrobeGen|Count[15]\ : dffeas
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
	q => \StrobeGen|Count\(15));

-- Location: LABCELL_X74_Y4_N42
\StrobeGen|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Equal0~2_combout\ = ( \StrobeGen|Count[14]~DUPLICATE_q\ & ( \StrobeGen|Count\(15) & ( (!\StrobeGen|Count\(13) & !\StrobeGen|Count\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StrobeGen|ALT_INV_Count\(13),
	datac => \StrobeGen|ALT_INV_Count\(12),
	datae => \StrobeGen|ALT_INV_Count[14]~DUPLICATE_q\,
	dataf => \StrobeGen|ALT_INV_Count\(15),
	combout => \StrobeGen|Equal0~2_combout\);

-- Location: FF_X73_Y4_N4
\StrobeGen|Count[1]\ : dffeas
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
	q => \StrobeGen|Count\(1));

-- Location: FF_X73_Y4_N1
\StrobeGen|Count[0]~DUPLICATE\ : dffeas
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
	q => \StrobeGen|Count[0]~DUPLICATE_q\);

-- Location: FF_X73_Y4_N13
\StrobeGen|Count[4]~DUPLICATE\ : dffeas
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
	q => \StrobeGen|Count[4]~DUPLICATE_q\);

-- Location: FF_X73_Y4_N10
\StrobeGen|Count[3]\ : dffeas
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
	q => \StrobeGen|Count\(3));

-- Location: LABCELL_X74_Y4_N24
\StrobeGen|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Equal0~0_combout\ = ( !\StrobeGen|Count[4]~DUPLICATE_q\ & ( \StrobeGen|Count\(3) & ( (\StrobeGen|Count\(1) & (\StrobeGen|Count\(2) & \StrobeGen|Count[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \StrobeGen|ALT_INV_Count\(1),
	datac => \StrobeGen|ALT_INV_Count\(2),
	datad => \StrobeGen|ALT_INV_Count[0]~DUPLICATE_q\,
	datae => \StrobeGen|ALT_INV_Count[4]~DUPLICATE_q\,
	dataf => \StrobeGen|ALT_INV_Count\(3),
	combout => \StrobeGen|Equal0~0_combout\);

-- Location: LABCELL_X73_Y4_N48
\StrobeGen|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \StrobeGen|Equal0~3_combout\ = ( \StrobeGen|Equal0~2_combout\ & ( \StrobeGen|Equal0~0_combout\ & ( (!\StrobeGen|Count\(11) & (!\StrobeGen|Count\(5) & \StrobeGen|Equal0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StrobeGen|ALT_INV_Count\(11),
	datab => \StrobeGen|ALT_INV_Count\(5),
	datac => \StrobeGen|ALT_INV_Equal0~1_combout\,
	datae => \StrobeGen|ALT_INV_Equal0~2_combout\,
	dataf => \StrobeGen|ALT_INV_Equal0~0_combout\,
	combout => \StrobeGen|Equal0~3_combout\);

-- Location: FF_X73_Y4_N52
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

-- Location: LABCELL_X74_Y4_N6
\EntityReactionFSM|State~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionFSM|State~12_combout\ = ( \EntityReactionFSM|State.Unlocked~q\ & ( \EntityReactionFSM|State.Locked~q\ & ( (\iB_Sync~input_o\ & \StrobeGen|oStrobe~q\) ) ) ) # ( !\EntityReactionFSM|State.Unlocked~q\ & ( \EntityReactionFSM|State.Locked~q\ & ( 
-- (\StrobeGen|oStrobe~q\ & ((!\EntityReactionFSM|State.CountUpTime~q\) # (\iB_Sync~input_o\))) ) ) ) # ( \EntityReactionFSM|State.Unlocked~q\ & ( !\EntityReactionFSM|State.Locked~q\ & ( (\iA_Sync~input_o\ & (\iB_Sync~input_o\ & \StrobeGen|oStrobe~q\)) ) ) ) 
-- # ( !\EntityReactionFSM|State.Unlocked~q\ & ( !\EntityReactionFSM|State.Locked~q\ & ( (\iA_Sync~input_o\ & (\StrobeGen|oStrobe~q\ & ((!\EntityReactionFSM|State.CountUpTime~q\) # (\iB_Sync~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000101000000000000010100000000110011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iA_Sync~input_o\,
	datab => \EntityReactionFSM|ALT_INV_State.CountUpTime~q\,
	datac => \ALT_INV_iB_Sync~input_o\,
	datad => \StrobeGen|ALT_INV_oStrobe~q\,
	datae => \EntityReactionFSM|ALT_INV_State.Unlocked~q\,
	dataf => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	combout => \EntityReactionFSM|State~12_combout\);

-- Location: FF_X74_Y4_N38
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
	ena => \EntityReactionFSM|State~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionFSM|State.Unlocked~q\);

-- Location: FF_X74_Y4_N8
\EntityReactionFSM|State.CountUpTime\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	asdata => \EntityReactionFSM|State.Unlocked~q\,
	clrn => \inResetAsync~input_o\,
	sload => VCC,
	ena => \EntityReactionFSM|State~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionFSM|State.CountUpTime~q\);

-- Location: FF_X74_Y4_N17
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
	ena => \EntityReactionFSM|State~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionFSM|State.ShowResult~q\);

-- Location: LABCELL_X74_Y4_N39
\EntityReactionFSM|State.Locked~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EntityReactionFSM|State.Locked~0_combout\ = !\EntityReactionFSM|State.ShowResult~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionFSM|ALT_INV_State.ShowResult~q\,
	combout => \EntityReactionFSM|State.Locked~0_combout\);

-- Location: FF_X74_Y4_N41
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
	ena => \EntityReactionFSM|State~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EntityReactionFSM|State.Locked~q\);

-- Location: LABCELL_X74_Y2_N0
\CounterLow|Mod0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|Mod0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CounterLow|Mod0|auto_generated|divider|divider|op_4~22_cout\);

-- Location: LABCELL_X74_Y2_N3
\CounterLow|Mod0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|Mod0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( !\CounterLow|oCount\(1) ) + ( VCC ) + ( \CounterLow|Mod0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \CounterLow|Mod0|auto_generated|divider|divider|op_4~2\ = CARRY(( !\CounterLow|oCount\(1) ) + ( VCC ) + ( \CounterLow|Mod0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CounterLow|ALT_INV_oCount\(1),
	cin => \CounterLow|Mod0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \CounterLow|Mod0|auto_generated|divider|divider|op_4~1_sumout\,
	cout => \CounterLow|Mod0|auto_generated|divider|divider|op_4~2\);

-- Location: LABCELL_X74_Y2_N36
\CounterLow|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|Add0~0_combout\ = ( \CounterLow|oCount[2]~DUPLICATE_q\ & ( !\CounterLow|oCount[1]~DUPLICATE_q\ ) ) # ( !\CounterLow|oCount[2]~DUPLICATE_q\ & ( \CounterLow|oCount[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount[2]~DUPLICATE_q\,
	combout => \CounterLow|Add0~0_combout\);

-- Location: LABCELL_X74_Y2_N6
\CounterLow|Mod0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|Mod0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( !\CounterLow|oCount\(1) $ (!\CounterLow|oCount\(2)) ) + ( GND ) + ( \CounterLow|Mod0|auto_generated|divider|divider|op_4~2\ ))
-- \CounterLow|Mod0|auto_generated|divider|divider|op_4~10\ = CARRY(( !\CounterLow|oCount\(1) $ (!\CounterLow|oCount\(2)) ) + ( GND ) + ( \CounterLow|Mod0|auto_generated|divider|divider|op_4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CounterLow|ALT_INV_oCount\(1),
	datad => \CounterLow|ALT_INV_oCount\(2),
	cin => \CounterLow|Mod0|auto_generated|divider|divider|op_4~2\,
	sumout => \CounterLow|Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \CounterLow|Mod0|auto_generated|divider|divider|op_4~10\);

-- Location: LABCELL_X74_Y2_N9
\CounterLow|Mod0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|Mod0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( !\CounterLow|oCount\(3) $ (((!\CounterLow|oCount\(1)) # (!\CounterLow|oCount\(2)))) ) + ( VCC ) + ( \CounterLow|Mod0|auto_generated|divider|divider|op_4~10\ ))
-- \CounterLow|Mod0|auto_generated|divider|divider|op_4~14\ = CARRY(( !\CounterLow|oCount\(3) $ (((!\CounterLow|oCount\(1)) # (!\CounterLow|oCount\(2)))) ) + ( VCC ) + ( \CounterLow|Mod0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount\(1),
	datac => \CounterLow|ALT_INV_oCount\(3),
	datad => \CounterLow|ALT_INV_oCount\(2),
	cin => \CounterLow|Mod0|auto_generated|divider|divider|op_4~10\,
	sumout => \CounterLow|Mod0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \CounterLow|Mod0|auto_generated|divider|divider|op_4~14\);

-- Location: LABCELL_X74_Y2_N12
\CounterLow|Mod0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|Mod0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( !\CounterLow|oCount\(4) $ (((!\CounterLow|oCount\(2)) # ((!\CounterLow|oCount\(3)) # (!\CounterLow|oCount\(1))))) ) + ( GND ) + ( 
-- \CounterLow|Mod0|auto_generated|divider|divider|op_4~14\ ))
-- \CounterLow|Mod0|auto_generated|divider|divider|op_4~18\ = CARRY(( !\CounterLow|oCount\(4) $ (((!\CounterLow|oCount\(2)) # ((!\CounterLow|oCount\(3)) # (!\CounterLow|oCount\(1))))) ) + ( GND ) + ( \CounterLow|Mod0|auto_generated|divider|divider|op_4~14\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount\(2),
	datab => \CounterLow|ALT_INV_oCount\(3),
	datac => \CounterLow|ALT_INV_oCount\(1),
	datad => \CounterLow|ALT_INV_oCount\(4),
	cin => \CounterLow|Mod0|auto_generated|divider|divider|op_4~14\,
	sumout => \CounterLow|Mod0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \CounterLow|Mod0|auto_generated|divider|divider|op_4~18\);

-- Location: LABCELL_X74_Y2_N33
\CounterLow|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|Add0~2_combout\ = ( \CounterLow|oCount\(4) & ( (!\CounterLow|oCount\(3)) # ((!\CounterLow|oCount[2]~DUPLICATE_q\) # (!\CounterLow|oCount[1]~DUPLICATE_q\)) ) ) # ( !\CounterLow|oCount\(4) & ( (\CounterLow|oCount\(3) & 
-- (\CounterLow|oCount[2]~DUPLICATE_q\ & \CounterLow|oCount[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount\(3),
	datac => \CounterLow|ALT_INV_oCount[2]~DUPLICATE_q\,
	datad => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount\(4),
	combout => \CounterLow|Add0~2_combout\);

-- Location: LABCELL_X74_Y4_N57
\CounterLow|oCount[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|oCount[1]~1_combout\ = ( \EntityReactionFSM|State.Locked~q\ & ( (\StrobeGen|oStrobe~q\ & \EntityReactionFSM|State.CountUpTime~q\) ) ) # ( !\EntityReactionFSM|State.Locked~q\ & ( (!\StrobeGen|oStrobe~q\) # 
-- (!\EntityReactionFSM|State.CountUpTime~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \StrobeGen|ALT_INV_oStrobe~q\,
	datac => \EntityReactionFSM|ALT_INV_State.CountUpTime~q\,
	dataf => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	combout => \CounterLow|oCount[1]~1_combout\);

-- Location: FF_X74_Y2_N14
\CounterLow|oCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterLow|Mod0|auto_generated|divider|divider|op_4~17_sumout\,
	asdata => \CounterLow|Add0~2_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterLow|oCount[1]~0_combout\,
	sload => \CounterLow|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterLow|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterLow|oCount\(4));

-- Location: LABCELL_X74_Y2_N15
\CounterLow|Mod0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|Mod0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \CounterLow|Mod0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \CounterLow|Mod0|auto_generated|divider|divider|op_4~18\,
	sumout => \CounterLow|Mod0|auto_generated|divider|divider|op_4~5_sumout\);

-- Location: FF_X74_Y2_N7
\CounterLow|oCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterLow|Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	asdata => \CounterLow|Add0~0_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterLow|oCount[1]~0_combout\,
	sload => \CounterLow|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterLow|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterLow|oCount\(2));

-- Location: LABCELL_X74_Y2_N57
\CounterLow|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|Add0~1_combout\ = ( \CounterLow|oCount\(3) & ( (!\CounterLow|oCount[2]~DUPLICATE_q\) # (!\CounterLow|oCount[1]~DUPLICATE_q\) ) ) # ( !\CounterLow|oCount\(3) & ( (\CounterLow|oCount[2]~DUPLICATE_q\ & \CounterLow|oCount[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount[2]~DUPLICATE_q\,
	datad => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount\(3),
	combout => \CounterLow|Add0~1_combout\);

-- Location: FF_X74_Y2_N11
\CounterLow|oCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterLow|Mod0|auto_generated|divider|divider|op_4~13_sumout\,
	asdata => \CounterLow|Add0~1_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterLow|oCount[1]~0_combout\,
	sload => \CounterLow|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterLow|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterLow|oCount\(3));

-- Location: LABCELL_X74_Y2_N30
\CounterLow|oCount[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|oCount[1]~0_combout\ = ( \EntityReactionFSM|State.Locked~q\ & ( (!\CounterLow|oCount\(3) & (\CounterLow|oCount\(4) & (!\CounterLow|oCount[2]~DUPLICATE_q\ & \CounterLow|oCount[1]~DUPLICATE_q\))) ) ) # ( !\EntityReactionFSM|State.Locked~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount\(3),
	datab => \CounterLow|ALT_INV_oCount\(4),
	datac => \CounterLow|ALT_INV_oCount[2]~DUPLICATE_q\,
	datad => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	dataf => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	combout => \CounterLow|oCount[1]~0_combout\);

-- Location: FF_X74_Y2_N4
\CounterLow|oCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterLow|Mod0|auto_generated|divider|divider|op_4~1_sumout\,
	asdata => \CounterLow|oCount[1]~_wirecell_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterLow|oCount[1]~0_combout\,
	sload => \CounterLow|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterLow|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterLow|oCount[1]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y2_N39
\CounterLow|oCount[1]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|oCount[1]~_wirecell_combout\ = !\CounterLow|oCount[1]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \CounterLow|oCount[1]~_wirecell_combout\);

-- Location: FF_X74_Y2_N5
\CounterLow|oCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterLow|Mod0|auto_generated|divider|divider|op_4~1_sumout\,
	asdata => \CounterLow|oCount[1]~_wirecell_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterLow|oCount[1]~0_combout\,
	sload => \CounterLow|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterLow|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterLow|oCount\(1));

-- Location: FF_X74_Y2_N8
\CounterLow|oCount[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterLow|Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	asdata => \CounterLow|Add0~0_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterLow|oCount[1]~0_combout\,
	sload => \CounterLow|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterLow|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterLow|oCount[2]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y2_N18
\HexDecoderLow|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux6~0_combout\ = ( \CounterLow|oCount\(4) & ( (\CounterLow|oCount[1]~DUPLICATE_q\ & (!\CounterLow|oCount[2]~DUPLICATE_q\ $ (!\CounterLow|oCount\(3)))) ) ) # ( !\CounterLow|oCount\(4) & ( (!\CounterLow|oCount[2]~DUPLICATE_q\ & 
-- (!\CounterLow|oCount\(3) $ (!\CounterLow|oCount[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount[2]~DUPLICATE_q\,
	datab => \CounterLow|ALT_INV_oCount\(3),
	datac => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount\(4),
	combout => \HexDecoderLow|Mux6~0_combout\);

-- Location: LABCELL_X74_Y2_N21
\HexDecoderLow|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux5~0_combout\ = ( \CounterLow|oCount\(4) & ( (!\CounterLow|oCount[1]~DUPLICATE_q\ & ((\CounterLow|oCount\(3)))) # (\CounterLow|oCount[1]~DUPLICATE_q\ & (\CounterLow|oCount[2]~DUPLICATE_q\)) ) ) # ( !\CounterLow|oCount\(4) & ( 
-- (\CounterLow|oCount\(3) & (!\CounterLow|oCount[2]~DUPLICATE_q\ $ (!\CounterLow|oCount[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount[2]~DUPLICATE_q\,
	datac => \CounterLow|ALT_INV_oCount\(3),
	datad => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount\(4),
	combout => \HexDecoderLow|Mux5~0_combout\);

-- Location: LABCELL_X74_Y2_N48
\HexDecoderLow|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux4~0_combout\ = ( \CounterLow|oCount\(4) & ( (\CounterLow|oCount\(3) & ((!\CounterLow|oCount[1]~DUPLICATE_q\) # (\CounterLow|oCount[2]~DUPLICATE_q\))) ) ) # ( !\CounterLow|oCount\(4) & ( (\CounterLow|oCount[2]~DUPLICATE_q\ & 
-- (!\CounterLow|oCount\(3) & !\CounterLow|oCount[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount[2]~DUPLICATE_q\,
	datab => \CounterLow|ALT_INV_oCount\(3),
	datac => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount\(4),
	combout => \HexDecoderLow|Mux4~0_combout\);

-- Location: LABCELL_X74_Y2_N51
\HexDecoderLow|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux3~0_combout\ = ( \CounterLow|oCount\(4) & ( (\CounterLow|oCount[2]~DUPLICATE_q\ & (!\CounterLow|oCount\(3) $ (\CounterLow|oCount[1]~DUPLICATE_q\))) ) ) # ( !\CounterLow|oCount\(4) & ( (!\CounterLow|oCount[2]~DUPLICATE_q\ & 
-- (!\CounterLow|oCount\(3) $ (!\CounterLow|oCount[1]~DUPLICATE_q\))) # (\CounterLow|oCount[2]~DUPLICATE_q\ & (\CounterLow|oCount\(3) & \CounterLow|oCount[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount[2]~DUPLICATE_q\,
	datac => \CounterLow|ALT_INV_oCount\(3),
	datad => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount\(4),
	combout => \HexDecoderLow|Mux3~0_combout\);

-- Location: LABCELL_X74_Y2_N42
\HexDecoderLow|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux2~0_combout\ = ( \CounterLow|oCount\(4) & ( (\CounterLow|oCount[1]~DUPLICATE_q\ & (!\CounterLow|oCount\(3) & !\CounterLow|oCount[2]~DUPLICATE_q\)) ) ) # ( !\CounterLow|oCount\(4) & ( ((\CounterLow|oCount\(3) & 
-- !\CounterLow|oCount[2]~DUPLICATE_q\)) # (\CounterLow|oCount[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	datab => \CounterLow|ALT_INV_oCount\(3),
	datac => \CounterLow|ALT_INV_oCount[2]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount\(4),
	combout => \HexDecoderLow|Mux2~0_combout\);

-- Location: LABCELL_X74_Y2_N45
\HexDecoderLow|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux1~0_combout\ = ( \CounterLow|oCount\(4) & ( (\CounterLow|oCount[1]~DUPLICATE_q\ & (\CounterLow|oCount\(3) & !\CounterLow|oCount[2]~DUPLICATE_q\)) ) ) # ( !\CounterLow|oCount\(4) & ( (!\CounterLow|oCount[1]~DUPLICATE_q\ & 
-- (!\CounterLow|oCount\(3) & \CounterLow|oCount[2]~DUPLICATE_q\)) # (\CounterLow|oCount[1]~DUPLICATE_q\ & ((!\CounterLow|oCount\(3)) # (\CounterLow|oCount[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	datab => \CounterLow|ALT_INV_oCount\(3),
	datac => \CounterLow|ALT_INV_oCount[2]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount\(4),
	combout => \HexDecoderLow|Mux1~0_combout\);

-- Location: LABCELL_X74_Y2_N24
\HexDecoderLow|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderLow|Mux0~0_combout\ = ( \CounterLow|oCount[1]~DUPLICATE_q\ & ( \CounterLow|oCount\(4) ) ) # ( !\CounterLow|oCount[1]~DUPLICATE_q\ & ( \CounterLow|oCount\(4) & ( (!\CounterLow|oCount\(3)) # (\CounterLow|oCount[2]~DUPLICATE_q\) ) ) ) # ( 
-- \CounterLow|oCount[1]~DUPLICATE_q\ & ( !\CounterLow|oCount\(4) & ( !\CounterLow|oCount\(3) $ (!\CounterLow|oCount[2]~DUPLICATE_q\) ) ) ) # ( !\CounterLow|oCount[1]~DUPLICATE_q\ & ( !\CounterLow|oCount\(4) & ( (\CounterLow|oCount[2]~DUPLICATE_q\) # 
-- (\CounterLow|oCount\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111000011110011001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CounterLow|ALT_INV_oCount\(3),
	datac => \CounterLow|ALT_INV_oCount[2]~DUPLICATE_q\,
	datae => \CounterLow|ALT_INV_oCount[1]~DUPLICATE_q\,
	dataf => \CounterLow|ALT_INV_oCount\(4),
	combout => \HexDecoderLow|Mux0~0_combout\);

-- Location: LABCELL_X75_Y4_N9
\CounterMid|oCount[1]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|oCount[1]~_wirecell_combout\ = ( !\CounterMid|oCount[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \CounterMid|oCount[1]~_wirecell_combout\);

-- Location: LABCELL_X75_Y4_N24
\CounterMid|Mod0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|Mod0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CounterMid|Mod0|auto_generated|divider|divider|op_4~22_cout\);

-- Location: LABCELL_X75_Y4_N27
\CounterMid|Mod0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|Mod0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( !\CounterMid|oCount\(1) ) + ( VCC ) + ( \CounterMid|Mod0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \CounterMid|Mod0|auto_generated|divider|divider|op_4~2\ = CARRY(( !\CounterMid|oCount\(1) ) + ( VCC ) + ( \CounterMid|Mod0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CounterMid|ALT_INV_oCount\(1),
	cin => \CounterMid|Mod0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \CounterMid|Mod0|auto_generated|divider|divider|op_4~1_sumout\,
	cout => \CounterMid|Mod0|auto_generated|divider|divider|op_4~2\);

-- Location: LABCELL_X75_Y4_N30
\CounterMid|Mod0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|Mod0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( !\CounterMid|oCount[1]~DUPLICATE_q\ $ (!\CounterMid|oCount\(2)) ) + ( GND ) + ( \CounterMid|Mod0|auto_generated|divider|divider|op_4~2\ ))
-- \CounterMid|Mod0|auto_generated|divider|divider|op_4~10\ = CARRY(( !\CounterMid|oCount[1]~DUPLICATE_q\ $ (!\CounterMid|oCount\(2)) ) + ( GND ) + ( \CounterMid|Mod0|auto_generated|divider|divider|op_4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	datad => \CounterMid|ALT_INV_oCount\(2),
	cin => \CounterMid|Mod0|auto_generated|divider|divider|op_4~2\,
	sumout => \CounterMid|Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \CounterMid|Mod0|auto_generated|divider|divider|op_4~10\);

-- Location: LABCELL_X75_Y4_N33
\CounterMid|Mod0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|Mod0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( !\CounterMid|oCount\(3) $ (((!\CounterMid|oCount\(2)) # (!\CounterMid|oCount\(1)))) ) + ( VCC ) + ( \CounterMid|Mod0|auto_generated|divider|divider|op_4~10\ ))
-- \CounterMid|Mod0|auto_generated|divider|divider|op_4~14\ = CARRY(( !\CounterMid|oCount\(3) $ (((!\CounterMid|oCount\(2)) # (!\CounterMid|oCount\(1)))) ) + ( VCC ) + ( \CounterMid|Mod0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(3),
	datab => \CounterMid|ALT_INV_oCount\(2),
	datac => \CounterMid|ALT_INV_oCount\(1),
	cin => \CounterMid|Mod0|auto_generated|divider|divider|op_4~10\,
	sumout => \CounterMid|Mod0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \CounterMid|Mod0|auto_generated|divider|divider|op_4~14\);

-- Location: LABCELL_X75_Y4_N48
\CounterMid|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|Add0~0_combout\ = ( \CounterMid|oCount[2]~DUPLICATE_q\ & ( !\CounterMid|oCount[1]~DUPLICATE_q\ ) ) # ( !\CounterMid|oCount[2]~DUPLICATE_q\ & ( \CounterMid|oCount[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	dataf => \CounterMid|ALT_INV_oCount[2]~DUPLICATE_q\,
	combout => \CounterMid|Add0~0_combout\);

-- Location: LABCELL_X75_Y4_N36
\CounterMid|Mod0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|Mod0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( !\CounterMid|oCount\(4) $ (((!\CounterMid|oCount\(3)) # ((!\CounterMid|oCount\(2)) # (!\CounterMid|oCount[1]~DUPLICATE_q\)))) ) + ( GND ) + ( 
-- \CounterMid|Mod0|auto_generated|divider|divider|op_4~14\ ))
-- \CounterMid|Mod0|auto_generated|divider|divider|op_4~18\ = CARRY(( !\CounterMid|oCount\(4) $ (((!\CounterMid|oCount\(3)) # ((!\CounterMid|oCount\(2)) # (!\CounterMid|oCount[1]~DUPLICATE_q\)))) ) + ( GND ) + ( 
-- \CounterMid|Mod0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(3),
	datab => \CounterMid|ALT_INV_oCount\(2),
	datac => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	datad => \CounterMid|ALT_INV_oCount\(4),
	cin => \CounterMid|Mod0|auto_generated|divider|divider|op_4~14\,
	sumout => \CounterMid|Mod0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \CounterMid|Mod0|auto_generated|divider|divider|op_4~18\);

-- Location: LABCELL_X75_Y4_N39
\CounterMid|Mod0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|Mod0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \CounterMid|Mod0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \CounterMid|Mod0|auto_generated|divider|divider|op_4~18\,
	sumout => \CounterMid|Mod0|auto_generated|divider|divider|op_4~5_sumout\);

-- Location: LABCELL_X74_Y2_N54
\CounterLow|oOverflow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|oOverflow~0_combout\ = ( !\CounterLow|oCount\(3) & ( (\CounterLow|oCount\(4) & (\CounterLow|oCount\(1) & !\CounterLow|oCount\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CounterLow|ALT_INV_oCount\(4),
	datac => \CounterLow|ALT_INV_oCount\(1),
	datad => \CounterLow|ALT_INV_oCount\(2),
	dataf => \CounterLow|ALT_INV_oCount\(3),
	combout => \CounterLow|oOverflow~0_combout\);

-- Location: LABCELL_X74_Y4_N0
\CounterLow|oOverflow~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterLow|oOverflow~1_combout\ = ( \CounterLow|oOverflow~0_combout\ & ( \StrobeGen|oStrobe~q\ & ( (\EntityReactionFSM|State.CountUpTime~q\ & \EntityReactionFSM|State.Locked~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EntityReactionFSM|ALT_INV_State.CountUpTime~q\,
	datad => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datae => \CounterLow|ALT_INV_oOverflow~0_combout\,
	dataf => \StrobeGen|ALT_INV_oStrobe~q\,
	combout => \CounterLow|oOverflow~1_combout\);

-- Location: FF_X74_Y4_N2
\CounterLow|oOverflow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterLow|oOverflow~1_combout\,
	ena => \inResetAsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterLow|oOverflow~q\);

-- Location: LABCELL_X74_Y4_N12
\CounterMid|oCount[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|oCount[1]~1_combout\ = ( \CounterLow|oOverflow~q\ & ( \EntityReactionFSM|State.Locked~q\ & ( \StrobeGen|oStrobe~q\ ) ) ) # ( \CounterLow|oOverflow~q\ & ( !\EntityReactionFSM|State.Locked~q\ ) ) # ( !\CounterLow|oOverflow~q\ & ( 
-- !\EntityReactionFSM|State.Locked~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \StrobeGen|ALT_INV_oStrobe~q\,
	datae => \CounterLow|ALT_INV_oOverflow~q\,
	dataf => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	combout => \CounterMid|oCount[1]~1_combout\);

-- Location: FF_X75_Y4_N31
\CounterMid|oCount[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	asdata => \CounterMid|Add0~0_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterMid|oCount[1]~0_combout\,
	sload => \CounterMid|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterMid|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oCount[2]~DUPLICATE_q\);

-- Location: FF_X75_Y4_N34
\CounterMid|oCount[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|Mod0|auto_generated|divider|divider|op_4~13_sumout\,
	asdata => \CounterMid|Add0~1_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterMid|oCount[1]~0_combout\,
	sload => \CounterMid|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterMid|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oCount[3]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y4_N51
\CounterMid|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|Add0~1_combout\ = ( \CounterMid|oCount[1]~DUPLICATE_q\ & ( !\CounterMid|oCount[2]~DUPLICATE_q\ $ (!\CounterMid|oCount[3]~DUPLICATE_q\) ) ) # ( !\CounterMid|oCount[1]~DUPLICATE_q\ & ( \CounterMid|oCount[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount[2]~DUPLICATE_q\,
	datac => \CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	dataf => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \CounterMid|Add0~1_combout\);

-- Location: FF_X75_Y4_N35
\CounterMid|oCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|Mod0|auto_generated|divider|divider|op_4~13_sumout\,
	asdata => \CounterMid|Add0~1_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterMid|oCount[1]~0_combout\,
	sload => \CounterMid|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterMid|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oCount\(3));

-- Location: LABCELL_X75_Y4_N45
\CounterMid|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|Add0~2_combout\ = ( \CounterMid|oCount\(2) & ( !\CounterMid|oCount\(4) $ (((!\CounterMid|oCount[3]~DUPLICATE_q\) # (!\CounterMid|oCount[1]~DUPLICATE_q\))) ) ) # ( !\CounterMid|oCount\(2) & ( \CounterMid|oCount\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	datad => \CounterMid|ALT_INV_oCount\(4),
	dataf => \CounterMid|ALT_INV_oCount\(2),
	combout => \CounterMid|Add0~2_combout\);

-- Location: FF_X75_Y4_N38
\CounterMid|oCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|Mod0|auto_generated|divider|divider|op_4~17_sumout\,
	asdata => \CounterMid|Add0~2_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterMid|oCount[1]~0_combout\,
	sload => \CounterMid|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterMid|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oCount\(4));

-- Location: LABCELL_X75_Y4_N42
\CounterMid|oCount[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|oCount[1]~0_combout\ = ( \CounterMid|oCount\(2) & ( !\EntityReactionFSM|State.Locked~q\ ) ) # ( !\CounterMid|oCount\(2) & ( (!\EntityReactionFSM|State.Locked~q\) # ((\CounterMid|oCount\(4) & (!\CounterMid|oCount[3]~DUPLICATE_q\ & 
-- \CounterMid|oCount[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100111111110000010011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(4),
	datab => \CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	datad => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	dataf => \CounterMid|ALT_INV_oCount\(2),
	combout => \CounterMid|oCount[1]~0_combout\);

-- Location: FF_X75_Y4_N28
\CounterMid|oCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|Mod0|auto_generated|divider|divider|op_4~1_sumout\,
	asdata => \CounterMid|oCount[1]~_wirecell_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterMid|oCount[1]~0_combout\,
	sload => \CounterMid|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterMid|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oCount\(1));

-- Location: FF_X75_Y4_N29
\CounterMid|oCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|Mod0|auto_generated|divider|divider|op_4~1_sumout\,
	asdata => \CounterMid|oCount[1]~_wirecell_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterMid|oCount[1]~0_combout\,
	sload => \CounterMid|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterMid|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oCount[1]~DUPLICATE_q\);

-- Location: FF_X75_Y4_N32
\CounterMid|oCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	asdata => \CounterMid|Add0~0_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterMid|oCount[1]~0_combout\,
	sload => \CounterMid|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterMid|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oCount\(2));

-- Location: LABCELL_X75_Y4_N15
\HexDecoderMid|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux6~0_combout\ = ( \CounterMid|oCount[1]~DUPLICATE_q\ & ( (!\CounterMid|oCount\(2) & (!\CounterMid|oCount[3]~DUPLICATE_q\ $ (\CounterMid|oCount\(4)))) # (\CounterMid|oCount\(2) & (!\CounterMid|oCount[3]~DUPLICATE_q\ & 
-- \CounterMid|oCount\(4))) ) ) # ( !\CounterMid|oCount[1]~DUPLICATE_q\ & ( (!\CounterMid|oCount\(2) & (\CounterMid|oCount[3]~DUPLICATE_q\ & !\CounterMid|oCount\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000010001000011001101000100001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(2),
	datab => \CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	datad => \CounterMid|ALT_INV_oCount\(4),
	dataf => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \HexDecoderMid|Mux6~0_combout\);

-- Location: LABCELL_X75_Y4_N21
\HexDecoderMid|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux5~0_combout\ = ( \CounterMid|oCount[1]~DUPLICATE_q\ & ( (!\CounterMid|oCount\(2) & (\CounterMid|oCount[3]~DUPLICATE_q\ & !\CounterMid|oCount\(4))) # (\CounterMid|oCount\(2) & ((\CounterMid|oCount\(4)))) ) ) # ( 
-- !\CounterMid|oCount[1]~DUPLICATE_q\ & ( (\CounterMid|oCount[3]~DUPLICATE_q\ & ((\CounterMid|oCount\(4)) # (\CounterMid|oCount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(2),
	datab => \CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	datad => \CounterMid|ALT_INV_oCount\(4),
	dataf => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \HexDecoderMid|Mux5~0_combout\);

-- Location: LABCELL_X75_Y4_N0
\HexDecoderMid|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux4~0_combout\ = ( \CounterMid|oCount[3]~DUPLICATE_q\ & ( (\CounterMid|oCount\(4) & ((!\CounterMid|oCount[1]~DUPLICATE_q\) # (\CounterMid|oCount\(2)))) ) ) # ( !\CounterMid|oCount[3]~DUPLICATE_q\ & ( (\CounterMid|oCount\(2) & 
-- (!\CounterMid|oCount[1]~DUPLICATE_q\ & !\CounterMid|oCount\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(2),
	datac => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	datad => \CounterMid|ALT_INV_oCount\(4),
	dataf => \CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	combout => \HexDecoderMid|Mux4~0_combout\);

-- Location: LABCELL_X75_Y4_N3
\HexDecoderMid|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux3~0_combout\ = ( \CounterMid|oCount[1]~DUPLICATE_q\ & ( (!\CounterMid|oCount\(2) & (!\CounterMid|oCount[3]~DUPLICATE_q\ & !\CounterMid|oCount\(4))) # (\CounterMid|oCount\(2) & (\CounterMid|oCount[3]~DUPLICATE_q\)) ) ) # ( 
-- !\CounterMid|oCount[1]~DUPLICATE_q\ & ( (!\CounterMid|oCount\(2) & (\CounterMid|oCount[3]~DUPLICATE_q\ & !\CounterMid|oCount\(4))) # (\CounterMid|oCount\(2) & (!\CounterMid|oCount[3]~DUPLICATE_q\ & \CounterMid|oCount\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001000100001000100100010010011001000100011001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(2),
	datab => \CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	datad => \CounterMid|ALT_INV_oCount\(4),
	dataf => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \HexDecoderMid|Mux3~0_combout\);

-- Location: LABCELL_X75_Y4_N18
\HexDecoderMid|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux2~0_combout\ = ( \CounterMid|oCount[1]~DUPLICATE_q\ & ( (!\CounterMid|oCount\(4)) # ((!\CounterMid|oCount[3]~DUPLICATE_q\ & !\CounterMid|oCount\(2))) ) ) # ( !\CounterMid|oCount[1]~DUPLICATE_q\ & ( (\CounterMid|oCount[3]~DUPLICATE_q\ & 
-- (!\CounterMid|oCount\(2) & !\CounterMid|oCount\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \CounterMid|ALT_INV_oCount\(2),
	datad => \CounterMid|ALT_INV_oCount\(4),
	dataf => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \HexDecoderMid|Mux2~0_combout\);

-- Location: LABCELL_X75_Y4_N54
\HexDecoderMid|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux1~0_combout\ = ( \CounterMid|oCount[1]~DUPLICATE_q\ & ( !\CounterMid|oCount\(4) $ (((\CounterMid|oCount[3]~DUPLICATE_q\ & !\CounterMid|oCount\(2)))) ) ) # ( !\CounterMid|oCount[1]~DUPLICATE_q\ & ( (!\CounterMid|oCount[3]~DUPLICATE_q\ & 
-- (\CounterMid|oCount\(2) & !\CounterMid|oCount\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011001111001100001100111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \CounterMid|ALT_INV_oCount\(2),
	datad => \CounterMid|ALT_INV_oCount\(4),
	dataf => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \HexDecoderMid|Mux1~0_combout\);

-- Location: LABCELL_X75_Y4_N57
\HexDecoderMid|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderMid|Mux0~0_combout\ = ( \CounterMid|oCount[1]~DUPLICATE_q\ & ( (!\CounterMid|oCount\(2) $ (!\CounterMid|oCount[3]~DUPLICATE_q\)) # (\CounterMid|oCount\(4)) ) ) # ( !\CounterMid|oCount[1]~DUPLICATE_q\ & ( (!\CounterMid|oCount[3]~DUPLICATE_q\ $ 
-- (!\CounterMid|oCount\(4))) # (\CounterMid|oCount\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111011101011101111101110101100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterMid|ALT_INV_oCount\(2),
	datab => \CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	datad => \CounterMid|ALT_INV_oCount\(4),
	dataf => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \HexDecoderMid|Mux0~0_combout\);

-- Location: MLABCELL_X72_Y4_N18
\CounterHigh|Mod0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|Mod0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~22_cout\);

-- Location: MLABCELL_X72_Y4_N21
\CounterHigh|Mod0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|Mod0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( !\CounterHigh|oCount\(1) ) + ( VCC ) + ( \CounterHigh|Mod0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \CounterHigh|Mod0|auto_generated|divider|divider|op_4~2\ = CARRY(( !\CounterHigh|oCount\(1) ) + ( VCC ) + ( \CounterHigh|Mod0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CounterHigh|ALT_INV_oCount\(1),
	cin => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~1_sumout\,
	cout => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~2\);

-- Location: MLABCELL_X72_Y4_N24
\CounterHigh|Mod0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|Mod0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( !\CounterHigh|oCount\(1) $ (!\CounterHigh|oCount\(2)) ) + ( GND ) + ( \CounterHigh|Mod0|auto_generated|divider|divider|op_4~2\ ))
-- \CounterHigh|Mod0|auto_generated|divider|divider|op_4~10\ = CARRY(( !\CounterHigh|oCount\(1) $ (!\CounterHigh|oCount\(2)) ) + ( GND ) + ( \CounterHigh|Mod0|auto_generated|divider|divider|op_4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CounterHigh|ALT_INV_oCount\(1),
	datad => \CounterHigh|ALT_INV_oCount\(2),
	cin => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~2\,
	sumout => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~10\);

-- Location: MLABCELL_X72_Y4_N27
\CounterHigh|Mod0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|Mod0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( !\CounterHigh|oCount[3]~DUPLICATE_q\ $ (((!\CounterHigh|oCount\(1)) # (!\CounterHigh|oCount\(2)))) ) + ( VCC ) + ( \CounterHigh|Mod0|auto_generated|divider|divider|op_4~10\ ))
-- \CounterHigh|Mod0|auto_generated|divider|divider|op_4~14\ = CARRY(( !\CounterHigh|oCount[3]~DUPLICATE_q\ $ (((!\CounterHigh|oCount\(1)) # (!\CounterHigh|oCount\(2)))) ) + ( VCC ) + ( \CounterHigh|Mod0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount\(1),
	datac => \CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	datad => \CounterHigh|ALT_INV_oCount\(2),
	cin => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~10\,
	sumout => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~14\);

-- Location: MLABCELL_X72_Y4_N0
\CounterHigh|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|Add0~0_combout\ = !\CounterHigh|oCount\(2) $ (!\CounterHigh|oCount[1]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount\(2),
	datab => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \CounterHigh|Add0~0_combout\);

-- Location: LABCELL_X75_Y4_N12
\CounterMid|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|Equal0~0_combout\ = ( \CounterMid|oCount[1]~DUPLICATE_q\ & ( (!\CounterMid|oCount[3]~DUPLICATE_q\ & (!\CounterMid|oCount[2]~DUPLICATE_q\ & \CounterMid|oCount\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CounterMid|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \CounterMid|ALT_INV_oCount[2]~DUPLICATE_q\,
	datad => \CounterMid|ALT_INV_oCount\(4),
	dataf => \CounterMid|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \CounterMid|Equal0~0_combout\);

-- Location: LABCELL_X74_Y4_N33
\CounterMid|oOverflow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterMid|oOverflow~0_combout\ = ( \CounterLow|oOverflow~q\ & ( \CounterMid|Equal0~0_combout\ & ( (\EntityReactionFSM|State.Locked~q\ & \StrobeGen|oStrobe~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	datad => \StrobeGen|ALT_INV_oStrobe~q\,
	datae => \CounterLow|ALT_INV_oOverflow~q\,
	dataf => \CounterMid|ALT_INV_Equal0~0_combout\,
	combout => \CounterMid|oOverflow~0_combout\);

-- Location: FF_X74_Y4_N34
\CounterMid|oOverflow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterMid|oOverflow~0_combout\,
	ena => \inResetAsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterMid|oOverflow~q\);

-- Location: LABCELL_X73_Y4_N57
\CounterHigh|oCount[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|oCount[1]~1_combout\ = ( \EntityReactionFSM|State.Locked~q\ & ( (\CounterMid|oOverflow~q\ & \StrobeGen|oStrobe~q\) ) ) # ( !\EntityReactionFSM|State.Locked~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CounterMid|ALT_INV_oOverflow~q\,
	datad => \StrobeGen|ALT_INV_oStrobe~q\,
	dataf => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	combout => \CounterHigh|oCount[1]~1_combout\);

-- Location: FF_X72_Y4_N26
\CounterHigh|oCount[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	asdata => \CounterHigh|Add0~0_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterHigh|oCount[1]~0_combout\,
	sload => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterHigh|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterHigh|oCount[2]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N30
\CounterHigh|Mod0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|Mod0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( !\CounterHigh|oCount\(4) $ (((!\CounterHigh|oCount\(1)) # ((!\CounterHigh|oCount[3]~DUPLICATE_q\) # (!\CounterHigh|oCount[2]~DUPLICATE_q\)))) ) + ( GND ) + ( 
-- \CounterHigh|Mod0|auto_generated|divider|divider|op_4~14\ ))
-- \CounterHigh|Mod0|auto_generated|divider|divider|op_4~18\ = CARRY(( !\CounterHigh|oCount\(4) $ (((!\CounterHigh|oCount\(1)) # ((!\CounterHigh|oCount[3]~DUPLICATE_q\) # (!\CounterHigh|oCount[2]~DUPLICATE_q\)))) ) + ( GND ) + ( 
-- \CounterHigh|Mod0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount\(1),
	datab => \CounterHigh|ALT_INV_oCount[3]~DUPLICATE_q\,
	datac => \CounterHigh|ALT_INV_oCount[2]~DUPLICATE_q\,
	datad => \CounterHigh|ALT_INV_oCount\(4),
	cin => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~14\,
	sumout => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~18\);

-- Location: MLABCELL_X72_Y4_N33
\CounterHigh|Mod0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|Mod0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \CounterHigh|Mod0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~18\,
	sumout => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~5_sumout\);

-- Location: FF_X72_Y4_N29
\CounterHigh|oCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~13_sumout\,
	asdata => \CounterHigh|Add0~1_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterHigh|oCount[1]~0_combout\,
	sload => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterHigh|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterHigh|oCount\(3));

-- Location: MLABCELL_X72_Y4_N51
\CounterHigh|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|Add0~1_combout\ = !\CounterHigh|oCount\(3) $ (((!\CounterHigh|oCount\(2)) # (!\CounterHigh|oCount[1]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111000010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount\(2),
	datab => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datad => \CounterHigh|ALT_INV_oCount\(3),
	combout => \CounterHigh|Add0~1_combout\);

-- Location: FF_X72_Y4_N28
\CounterHigh|oCount[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~13_sumout\,
	asdata => \CounterHigh|Add0~1_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterHigh|oCount[1]~0_combout\,
	sload => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterHigh|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterHigh|oCount[3]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N48
\CounterHigh|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|Add0~2_combout\ = ( \CounterHigh|oCount\(4) & ( (!\CounterHigh|oCount\(2)) # ((!\CounterHigh|oCount[1]~DUPLICATE_q\) # (!\CounterHigh|oCount\(3))) ) ) # ( !\CounterHigh|oCount\(4) & ( (\CounterHigh|oCount\(2) & 
-- (\CounterHigh|oCount[1]~DUPLICATE_q\ & \CounterHigh|oCount\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount\(2),
	datab => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datad => \CounterHigh|ALT_INV_oCount\(3),
	dataf => \CounterHigh|ALT_INV_oCount\(4),
	combout => \CounterHigh|Add0~2_combout\);

-- Location: FF_X72_Y4_N32
\CounterHigh|oCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~17_sumout\,
	asdata => \CounterHigh|Add0~2_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterHigh|oCount[1]~0_combout\,
	sload => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterHigh|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterHigh|oCount\(4));

-- Location: MLABCELL_X72_Y4_N9
\CounterHigh|oCount[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|oCount[1]~0_combout\ = ( !\CounterHigh|oCount\(3) & ( \EntityReactionFSM|State.Locked~q\ & ( (\CounterHigh|oCount[1]~DUPLICATE_q\ & (\CounterHigh|oCount\(4) & !\CounterHigh|oCount\(2))) ) ) ) # ( \CounterHigh|oCount\(3) & ( 
-- !\EntityReactionFSM|State.Locked~q\ ) ) # ( !\CounterHigh|oCount\(3) & ( !\EntityReactionFSM|State.Locked~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datac => \CounterHigh|ALT_INV_oCount\(4),
	datad => \CounterHigh|ALT_INV_oCount\(2),
	datae => \CounterHigh|ALT_INV_oCount\(3),
	dataf => \EntityReactionFSM|ALT_INV_State.Locked~q\,
	combout => \CounterHigh|oCount[1]~0_combout\);

-- Location: FF_X72_Y4_N22
\CounterHigh|oCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~1_sumout\,
	asdata => \CounterHigh|oCount[1]~_wirecell_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterHigh|oCount[1]~0_combout\,
	sload => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterHigh|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterHigh|oCount[1]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N57
\CounterHigh|oCount[1]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterHigh|oCount[1]~_wirecell_combout\ = ( !\CounterHigh|oCount[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \CounterHigh|oCount[1]~_wirecell_combout\);

-- Location: FF_X72_Y4_N23
\CounterHigh|oCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~1_sumout\,
	asdata => \CounterHigh|oCount[1]~_wirecell_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterHigh|oCount[1]~0_combout\,
	sload => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterHigh|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterHigh|oCount\(1));

-- Location: FF_X72_Y4_N25
\CounterHigh|oCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	asdata => \CounterHigh|Add0~0_combout\,
	clrn => \inResetAsync~input_o\,
	sclr => \CounterHigh|oCount[1]~0_combout\,
	sload => \CounterHigh|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	ena => \CounterHigh|oCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterHigh|oCount\(2));

-- Location: MLABCELL_X72_Y4_N3
\HexDecoderHigh|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux6~0_combout\ = (!\CounterHigh|oCount\(4) & (!\CounterHigh|oCount\(2) & (!\CounterHigh|oCount[1]~DUPLICATE_q\ $ (!\CounterHigh|oCount\(3))))) # (\CounterHigh|oCount\(4) & (\CounterHigh|oCount[1]~DUPLICATE_q\ & (!\CounterHigh|oCount\(2) $ 
-- (!\CounterHigh|oCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110000010001000011000001000100001100000100010000110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount\(2),
	datab => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datac => \CounterHigh|ALT_INV_oCount\(4),
	datad => \CounterHigh|ALT_INV_oCount\(3),
	combout => \HexDecoderHigh|Mux6~0_combout\);

-- Location: MLABCELL_X72_Y4_N42
\HexDecoderHigh|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux5~0_combout\ = ( \CounterHigh|oCount[1]~DUPLICATE_q\ & ( (!\CounterHigh|oCount\(2) & (!\CounterHigh|oCount\(4) & \CounterHigh|oCount\(3))) # (\CounterHigh|oCount\(2) & (\CounterHigh|oCount\(4))) ) ) # ( 
-- !\CounterHigh|oCount[1]~DUPLICATE_q\ & ( (\CounterHigh|oCount\(3) & ((\CounterHigh|oCount\(4)) # (\CounterHigh|oCount\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount\(2),
	datab => \CounterHigh|ALT_INV_oCount\(4),
	datac => \CounterHigh|ALT_INV_oCount\(3),
	dataf => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \HexDecoderHigh|Mux5~0_combout\);

-- Location: MLABCELL_X72_Y4_N45
\HexDecoderHigh|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux4~0_combout\ = (!\CounterHigh|oCount\(4) & (\CounterHigh|oCount\(2) & (!\CounterHigh|oCount[1]~DUPLICATE_q\ & !\CounterHigh|oCount\(3)))) # (\CounterHigh|oCount\(4) & (\CounterHigh|oCount\(3) & ((!\CounterHigh|oCount[1]~DUPLICATE_q\) # 
-- (\CounterHigh|oCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000110001010000000011000101000000001100010100000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount\(2),
	datab => \CounterHigh|ALT_INV_oCount\(4),
	datac => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datad => \CounterHigh|ALT_INV_oCount\(3),
	combout => \HexDecoderHigh|Mux4~0_combout\);

-- Location: MLABCELL_X72_Y4_N36
\HexDecoderHigh|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux3~0_combout\ = ( \CounterHigh|oCount[1]~DUPLICATE_q\ & ( (!\CounterHigh|oCount\(2) & (!\CounterHigh|oCount\(4) & !\CounterHigh|oCount\(3))) # (\CounterHigh|oCount\(2) & ((\CounterHigh|oCount\(3)))) ) ) # ( 
-- !\CounterHigh|oCount[1]~DUPLICATE_q\ & ( (!\CounterHigh|oCount\(2) & (!\CounterHigh|oCount\(4) & \CounterHigh|oCount\(3))) # (\CounterHigh|oCount\(2) & (\CounterHigh|oCount\(4) & !\CounterHigh|oCount\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount\(2),
	datab => \CounterHigh|ALT_INV_oCount\(4),
	datac => \CounterHigh|ALT_INV_oCount\(3),
	dataf => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \HexDecoderHigh|Mux3~0_combout\);

-- Location: MLABCELL_X72_Y4_N39
\HexDecoderHigh|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux2~0_combout\ = (!\CounterHigh|oCount\(2) & ((!\CounterHigh|oCount\(3) & ((\CounterHigh|oCount[1]~DUPLICATE_q\))) # (\CounterHigh|oCount\(3) & (!\CounterHigh|oCount\(4))))) # (\CounterHigh|oCount\(2) & (!\CounterHigh|oCount\(4) & 
-- (\CounterHigh|oCount[1]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111010001100000011101000110000001110100011000000111010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount\(2),
	datab => \CounterHigh|ALT_INV_oCount\(4),
	datac => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datad => \CounterHigh|ALT_INV_oCount\(3),
	combout => \HexDecoderHigh|Mux2~0_combout\);

-- Location: MLABCELL_X72_Y4_N12
\HexDecoderHigh|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux1~0_combout\ = ( \CounterHigh|oCount[1]~DUPLICATE_q\ & ( !\CounterHigh|oCount\(4) $ (((!\CounterHigh|oCount\(2) & \CounterHigh|oCount\(3)))) ) ) # ( !\CounterHigh|oCount[1]~DUPLICATE_q\ & ( (\CounterHigh|oCount\(2) & 
-- (!\CounterHigh|oCount\(4) & !\CounterHigh|oCount\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011000110110001101100011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount\(2),
	datab => \CounterHigh|ALT_INV_oCount\(4),
	datac => \CounterHigh|ALT_INV_oCount\(3),
	dataf => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	combout => \HexDecoderHigh|Mux1~0_combout\);

-- Location: MLABCELL_X72_Y4_N15
\HexDecoderHigh|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDecoderHigh|Mux0~0_combout\ = (!\CounterHigh|oCount[1]~DUPLICATE_q\ & ((!\CounterHigh|oCount\(4) $ (!\CounterHigh|oCount\(3))) # (\CounterHigh|oCount\(2)))) # (\CounterHigh|oCount[1]~DUPLICATE_q\ & ((!\CounterHigh|oCount\(2) $ 
-- (!\CounterHigh|oCount\(3))) # (\CounterHigh|oCount\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111011011011101111101101101110111110110110111011111011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CounterHigh|ALT_INV_oCount\(2),
	datab => \CounterHigh|ALT_INV_oCount\(4),
	datac => \CounterHigh|ALT_INV_oCount[1]~DUPLICATE_q\,
	datad => \CounterHigh|ALT_INV_oCount\(3),
	combout => \HexDecoderHigh|Mux0~0_combout\);

-- Location: IOIBUF_X2_Y0_N58
\iEnable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iEnable,
	o => \iEnable~input_o\);

-- Location: LABCELL_X2_Y37_N3
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


