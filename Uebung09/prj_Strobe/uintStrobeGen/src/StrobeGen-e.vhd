-------------------------------------------------------------------------------
-- Title : Strobe Generator
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : simon Offenberger
-- Created : 2025-12-1
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
use ieee.numeric_std.all;
use work.Global.all;

entity StrobeGen is
  generic (
    gNrClkCycles : natural := 50E6);
  port (
    -- Sequential logic inside this unit
    iClk : in std_ulogic;
    inResetAsync : in std_ulogic;

    -- Strobe with the above given cycle time
    oStrobe : out std_ulogic);
end StrobeGen;