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


entity AllMpxTB is
end AllMpxTB;

architecture testbench of AllMpxTB is
    signal A        : std_ulogic := '0';
    signal B        : std_ulogic := '0';
    signal Sel      : std_ulogic := '0';
    signal YMin     : std_ulogic;
    signal YPrime   : std_ulogic;
    signal YNand    : std_ulogic;
begin 

AllMpx : entity work.AllMpx(Struct)
port map (
    iAllMuxA        => A,
    iAllMuxB        => B,
    iAllMuxSel      => Sel,
    oYMin           => YMin,
    oYPrime         => YPrime,
    oYNand          => YNand
);

stimul: process is
begin
    A <= '1' after 10 ns,
         '0' after 30 ns,
         '1' after 50 ns,
         '0' after 70 ns;

    B <= '1' after 20 ns,
         '0' after 40 ns,
         '1' after 60 ns;

    Sel <= '1' after 40 ns;
    wait;
end process stimul;



end testbench;
