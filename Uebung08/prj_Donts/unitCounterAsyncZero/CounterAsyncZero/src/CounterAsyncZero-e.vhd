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
use work.global.all;

entity CounterAsyncZero is
  generic (
    gClkFrequency : natural := 50E6);
  port (
    inResetAsync : in std_ulogic;
    iClk : in std_ulogic;
    oCountedTo : out unsigned(LogDualis(gClkFrequency) - 1 downto 0));
end entity CounterAsyncZero;