-------------------------------------------------------------------------------
-- Title : Shift Register
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

entity ShiftReg is
  generic(
    n : natural
  );
  port (
    iD           : in  std_ulogic;              -- Data Input
    iClk         : in  std_ulogic;              -- Clock Input
    inResetAsync : in  std_ulogic;              -- Async Reset Input
    oQ           : out std_ulogic_vector(n downto 1));             -- Data Output
end entity ShiftReg;
