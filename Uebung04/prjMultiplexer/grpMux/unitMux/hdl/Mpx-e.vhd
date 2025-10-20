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

entity Mpx is
  generic (
    n : natural
  );
  port (iA    : in std_ulogic_vector(n-1 downto 0);    -- input A
        iSel  : in std_ulogic_vector(natural(ceil(log2(real(n))))-1 downto 0);    -- input Sel
        oY    : out std_ulogic);  -- output Y
end Mpx;

