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

entity Mpx is
  port (iA    : in std_ulogic;    -- input A
        iB    : in std_ulogic;    -- input B
        iSel  : in std_ulogic;    -- input Sel
        oY    : out std_ulogic);  -- output Y
end Mpx;

