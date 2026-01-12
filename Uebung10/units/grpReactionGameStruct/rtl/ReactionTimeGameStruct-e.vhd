-------------------------------------------------------------------------------
-- Title : Structure of the Reaction Game
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : Simon Offenberger
-- Created : 2025-11-11
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015
-------------------------------------------------------------------------------
-- Description: Interconnects the submodules of the Reaction Game
-------------------------------------------------------------------------------
-- Entity 
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Global.all;

entity ReactionGameStruct is
  generic (
    gClockFrequency    : natural := 50E6);
 port (
  iClk         : in std_ulogic;
  inResetAsync : in std_ulogic;
  iA_Sync      : in std_ulogic;
  iB_Sync      : in std_ulogic;
  oLEDs        : out std_ulogic_vector(3 downto 0);
  oHEX1        : out std_ulogic_vector(6 downto 0);
  oHEX2        : out std_ulogic_vector(6 downto 0);
  oHEX3        : out std_ulogic_vector(6 downto 0)
  );
 end ReactionGameStruct;
