-------------------------------------------------------------------------------
-- Title : Running Light
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : simon Offenberger
-- Created : 2025-11-11
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015
-------------------------------------------------------------------------------
-- Description:
-------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Entity 
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.Global.all;

entity ReactionGameFSM is
 port (
  iClk         : in std_ulogic;
  inResetAsync : in std_ulogic;
  iEnable      : in std_ulogic;
  iA_Sync      : in std_ulogic;
  iB_Sync      : in std_ulogic;
  oLEDs        : out std_ulogic_vector(3 downto 0);
  oZero       : out std_ulogic;
  oEnableCounter : out std_ulogic);
 end ReactionGameFSM;
