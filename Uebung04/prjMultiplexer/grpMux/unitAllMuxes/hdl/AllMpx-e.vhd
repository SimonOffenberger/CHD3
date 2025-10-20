-------------------------------------------------------------------------------
-- Title      : Entity that combines 3 Mux into one
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

entity AllMpx is
  generic (
    n : natural
  );
  port (iAllMuxA   : in std_ulogic_vector(n-1 downto 0);    -- input A
        iAllMuxSel : in std_ulogic_vector(natural(ceil(log2(real(n))))-1 downto 0);    -- input Sel
        oYUsingCase  : out std_ulogic;  -- output Y of Nand Only Mux
        oYUsingIf  : out std_ulogic  -- output Y of Nand Only Mux
        );  
end AllMpx;

