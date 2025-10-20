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
    signal A            : std_ulogic_vector;
    signal Sel          : std_ulogic_vector;
    signal YUsingCase    : std_ulogic;
    signal YUsingIf    : std_ulogic;
begin 

-- instanziate the entitiy with all the multiplexer
AllMpx : entity work.AllMpx(Struct)
port map (
    iAllMuxA        => A,
    iAllMuxB        => B,
    iAllMuxSel      => Sel,
    oYMin           => YMin,
    oYPrime         => YPrime,
    oYNand          => YNand,
    oYTheNand2      => YTheNand2,
    oYUsingCase     => YUsingCase,
    oYUsingIf     => YUsingIf
);

-- Feed the testdata to the Entity of the Multiplexer
stimul: process is
begin
    A    <= '0';
    B    <= '0';
    Sel <= '0';

    wait for 10 ns;

    A    <= '1';
    B    <= '0';
    Sel <= '0';

    wait for 10 ns;

    A    <= '1';
    B    <= '1';
    Sel <= '0';

    wait for 10 ns;

    A    <= '0';
    B    <= '1';
    Sel <= '0';

    wait for 10 ns;

    A    <= '0';
    B    <= '0';
    Sel <= '1';

    wait for 10 ns;

    A    <= '1';
    B    <= '0';
    Sel <= '1';

    wait for 10 ns;

    A    <= '1';
    B    <= '1';
    Sel <= '1';

    wait for 10 ns;

    A    <= '1';
    B    <= '1';
    Sel <= '1';

    wait for 10 ns;

    A    <= '1';
    B    <= '0';
    Sel <= 'U';

    wait for 10 ns;

    A    <= '1';
    B    <= '0';
    Sel <= 'X';

    wait;
end process stimul;

-- process that verifies the result of the Multiplexer
verify: postponed process (A,B,Sel) is
begin

    if(Sel = '0') then
        assert YMin = A   report "Muliplexer failure Minterms" severity error;
        assert YPrime = A report "Muliplexer failure Prime Implicant" severity error;
        assert YNand = A  report "Muliplexer failure Nand Only" severity error;
        assert YTheNand2 = A  report "Muliplexer failure TheNand2 Only" severity error;
        assert YUsingCase = A  report "Muliplexer failure Using Case" severity error;
        assert YUsingIf = A  report "Muliplexer failure Using IF" severity error;
    else 
        assert YMin = B   report "Multiplexer failure Minterms" severity error;
        assert YPrime = B report "Multiplexer failure Prime Implicant" severity error;
        assert YNand = B  report "Multiplexer failure Nand Only" severity error;
        assert YTheNand2 = B  report "Multiplexer failure TheNand2" severity error;
        assert YUsingCase = B  report "Multiplexer failure Using Case" severity error;
        assert YUsingIf = B  report "Multiplexer failure Using If" severity error;
    end if;

end process verify;

end testbench;
