-------------------------------------------------------------------------------
-- Title : PCB Adapter for the DE1-SoC Reaction Game
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : Simon Offenberger
-- Created : 2025-11-11
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015
-------------------------------------------------------------------------------
-- Description: PCB Adapter for the DE1-SoC Reaction Game
-------------------------------------------------------------------------------
-- Entity 
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Global.all;

entity ReactionGameOnDE1SOC is
  generic (
    gClockFrequency    : natural := 50E6);
 port (
  CLOCK_50    : in std_ulogic;
  SW          : in std_ulogic_vector(0 downto 0);
  KEY         : in std_ulogic_vector(1 downto 0);
  LEDR        : out std_ulogic_vector(3 downto 0);
  HEX0        : out std_ulogic_vector(6 downto 0);
  HEX1        : out std_ulogic_vector(6 downto 0);
  HEX2        : out std_ulogic_vector(6 downto 0)
  );
 end ReactionGameOnDE1SOC;
