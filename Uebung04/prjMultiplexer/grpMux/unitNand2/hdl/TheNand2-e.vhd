-------------------------------------------------------------------------------
-- Title      : Entity of a 2to1 Multiplexer
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

entity TheNand2 is
  port (iANand    : in std_ulogic;    -- input A
        iBNand    : in std_ulogic;    -- input B
        oYNand    : out std_ulogic);  -- output Y
end TheNand2;

