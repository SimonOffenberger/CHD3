---------------------------------------------------------------------------
-- Title      : Testbed of HelloDE1 for DE1-SoC
-- Project    : HelloDE1
-- Company    : FH OOe Hagenberg/A, Copyright (c) 2015
-------------------------------------------------------------------------------
-- Author         : Thomas Mueller-W,
-- Date           : 30.4.2015
-- Authors are
--              tm        : Thomas Mueller-W., Hagenberg
-- Revisions  : V1, 30.4.15, tm
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity HelloOnPcbDe1Soc is
  port (
    CLOCK_50 : in  std_ulogic;
    KEY0     : in  std_ulogic;
    SW       : in  std_ulogic_vector(9 downto 0);
    HEX4     : out std_ulogic_vector(6 downto 0);
    HEX5     : out std_ulogic_vector(6 downto 0);
    LEDR     : out std_ulogic_vector(9 downto 0)
    );
end HelloOnPcbDe1Soc;
