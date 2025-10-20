-------------------------------------------------------------------------------
-- Title      : Entity of a 2to1 Multiplexer
-------------------------------------------------------------------------------
-- Abstract: 
-------------------------------------------------------------------------------
-- University  : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity MpxUni is
  port (iA    : in std_ulogic_vector;    -- input A
        iSel  : in std_ulogic_vector;    -- input Sel
        oY    : out std_ulogic);  -- output Y
end MpxUni;

