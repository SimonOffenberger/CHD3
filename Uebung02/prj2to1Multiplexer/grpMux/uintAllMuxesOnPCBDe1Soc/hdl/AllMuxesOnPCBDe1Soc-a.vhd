-------------------------------------------------------------------------------
-- Title      : Synthesis efficient architecture of SwellLed
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

architecture Struct of AllMuxesOnPCBDe1Soc is
begin 

AllMpx : entity work.AllMpx(Struct)
port map (
    iAllMuxA        => KEY(0),
    iAllMuxB        => KEY(1),
    iAllMuxSel      => SW,
    oYMin           => LEDR(2),
    oYPrime         => LEDR(1),
    oYNand          => LEDR(0)
);

end AllMuxesOnPCBDe1Soc; 
