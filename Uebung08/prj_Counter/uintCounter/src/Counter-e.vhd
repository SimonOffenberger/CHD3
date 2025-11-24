-------------------------------------------------------------------------------
-- Title : Counter
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

entity Counter is
  generic(
    gCountBitWidth : natural
  );
  port (
  iClk         : in std_ulogic;
  inResetAsync   : in std_ulogic;
  oCount       : out unsigned(gCountBitWidth downto 1));
 end Counter;
