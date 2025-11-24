-------------------------------------------------------------------------------
-- Title : Counter with Asynchronous Zero Reset
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
use ieee.numeric_std.all;

entity CounterKeyEventZeroSync is
  generic (
    -- Clock: 50 MHz : 26 bits are needed to make the MSB cycle through its
    -- pace in more than 1 s
    gCounterBitLength : natural := 26);
  port (
    inResetAsync : in std_ulogic;
    iClk : in std_ulogic;
    iKey : in std_ulogic;
    oCountedTo : out unsigned(gCounterBitLength - 1 downto 0));
end entity CounterKeyEventZeroSync;