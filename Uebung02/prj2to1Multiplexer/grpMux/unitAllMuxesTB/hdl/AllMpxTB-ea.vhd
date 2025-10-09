-------------------------------------------------------------------------------
-- Title      : Entity and Architekture of the Testbench from the 2 to 1 Mux
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


entity AllMpxTB is
end AllMpxTB;

architecture testbench of AllMpxTB is
    signal A        : std_ulogic;
    signal B        : std_ulogic;
    signal Sel      : std_ulogic;
    signal YMin     : std_ulogic;
    signal YPrime   : std_ulogic;
    signal YNand    : std_ulogic;
begin 

-- instanziate the entitiy with all the multiplexer
AllMpx : entity work.AllMpx(Struct)
port map (
    iAllMuxA        => A,
    iAllMuxB        => B,
    iAllMuxSel      => Sel,
    oYMin           => YMin,
    oYPrime         => YPrime,
    oYNand          => YNand
);

-- Feed the testdata to the Entity of the Multiplexer
stimul: process is
begin
    A <= '0',
         '1' after 10 ns,
         '0' after 30 ns,
         '1' after 50 ns,
         '0' after 70 ns;

    B <= '0',
         '1' after 20 ns,
         '0' after 40 ns,
         '1' after 60 ns;

    Sel <= '0',
           '1' after 40 ns;
    wait;
end process stimul;

-- process that verifies the result of the Multiplexer
verify: postponed process (A,B,Sel) is
begin

    if(Sel = '0') then
        assert YMin = A   report "Muliplexer failure Minterms" severity error;
        assert YPrime = A report "Muliplexer failure Prime Implicant" severity error;
        assert YNand = A  report "Muliplexer failure Nand Only" severity error;
    else 
        assert YMin = B   report "Multiplexer failure Minterms" severity error;
        assert YPrime = B report "Multiplexer failure Prime Implicant" severity error;
        assert YNand = B  report "Multiplexer failure Nand Only" severity error;
    end if;

end process verify;

end testbench;
