-------------------------------------------------------------------------------
-- Title      : Testbench for functions in global project package
-- Project    : Audio Signal Processing
-------------------------------------------------------------------------------
-- $Id: tbGlobal-e.vhd 161 2005-12-09 11:24:54Z pfaff $
-------------------------------------------------------------------------------
-- Author     : Copyright 2003: Markus Pfaff
-- Standard   : Using VHDL'93
-- Simulation : Model Technology Modelsim
-- Synthesis  : Exemplar Leonardo
-------------------------------------------------------------------------------
-- Description:
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.Global.all;

entity tbGlobal is
  generic (
    gUpperLogDualisTestLimit : natural := 2**16+1);
end entity tbGlobal;

