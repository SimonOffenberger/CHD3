-------------------------------------------------------------------------------
-- Title : D-FlipFlop
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

entity D_FF is
  port (
    iD           : in  std_ulogic;              -- Data Input
    iClk         : in  std_ulogic;              -- Clock Input
    inResetAsync : in  std_ulogic;              -- Async Reset Input
    iSet         : in  std_ulogic;              -- Sync Set Input
    iEnable      : in  std_ulogic;              -- Enable of Input does not influence Set
    oQ           : out std_ulogic;              -- Data Output
    onQ          : out std_ulogic);             -- Inverted Data Output
end entity D_FF;
