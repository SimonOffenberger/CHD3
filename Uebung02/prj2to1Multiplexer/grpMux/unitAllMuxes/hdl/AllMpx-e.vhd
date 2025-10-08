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

library work;
use work.Global.all;

entity AllMpx is
  port (iAllMuxA   : in std_ulogic;    -- input A
        iAllMuxB   : in std_ulogic;    -- input B
        iAllMuxSel : in std_ulogic;    -- input Sel
        oYMin   : out std_ulogic;  -- output Y of Minterm Mux
        oYPrime : out std_ulogic;  -- output Y of PrimeImplicant
        oYNand  : out std_ulogic  -- output Y of Nand Only Mux
        );  
end AllMpx;

