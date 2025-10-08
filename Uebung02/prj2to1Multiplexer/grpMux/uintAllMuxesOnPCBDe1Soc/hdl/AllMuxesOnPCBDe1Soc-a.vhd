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
signal KeyPosLogic : std_ulogic_vector (1 downto 0);   
begin 

AllMpx : entity work.AllMpx(Struct)
port map (
    iAllMuxA        => KeyPosLogic(0),
    iAllMuxB        => KeyPosLogic(1),
    iAllMuxSel      => SW,
    oYMin           => LEDR(2),
    oYPrime         => LEDR(1),
    oYNand          => LEDR(0)
);

KeyPosLogic <= not KEY;

end Struct; 
