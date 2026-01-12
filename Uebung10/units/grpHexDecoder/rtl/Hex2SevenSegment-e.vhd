---------------------------------------------------------------------------
-- Title      : Hex-To-Seven-Segment-Decoder
-- Company    : FH OOe Hagenberg/A, Copyright (c) 2015
-------------------------------------------------------------------------------
-- Author         : Simon Offenberger
-- Date           : 07.01.2026
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity Hex2SevenSegment is
  port (
    iHexValue : in  std_ulogic_vector(3 downto 0);
    o7SegCode : out std_ulogic_vector(6 downto 0));
end Hex2SevenSegment;
