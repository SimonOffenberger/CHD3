-------------------------------------------------------------------------------
-- Title : Counter Entity
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : Simon Offenberger
-- Created : 2025-11-11
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015
-------------------------------------------------------------------------------
-- Description :
-------------------------------------------------------------------------------
-- Entity :
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Global.all;

entity Counter is
  generic(
    gCounterOverflowVal : natural := 10
  );
  port (
  iClk         : in  std_ulogic;
  iEnable      : in  std_ulogic;
  inResetAsync : in  std_ulogic;
  iZero        : in  std_ulogic;
  oOverflow    : out std_ulogic;
  oCount       : out unsigned(LogDualis(gCounterOverflowVal) downto 1));
end Counter;
