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
use ieee.math_real.all; -- library for math functions


entity AllMpxTB is
end AllMpxTB;

architecture testbench of AllMpxTB is
    constant Len        : natural := 12;
    signal A            : std_ulogic_vector (Len-1 downto 0);
    signal Sel          : std_ulogic_vector (natural(ceil(log2(real(Len))))-1 downto 0);
    signal YUsingCase    : std_ulogic;
    signal YUsingIf      : std_ulogic;
begin 

-- Map Board Pin Naming to the internal naming
AllMpx : entity work.LargeMuxes(RTL)
generic map (
    gLen => Len
)
port map (
    iAllMuxA        => A,
    iAllMuxSel      => Sel,
    oYUsingCase     => YUsingCase,
    oYUsingIf       => YUsingIf
);

-- Feed the testdata to the Entity of the Multiplexer
stimul: process is
begin
    -- initialize the values of the Inputs
    A<=(others => '0');
    A(0) <= '1';
    Sel <= (others => '0');
    wait for 10 ns;

    -- loop through all possiblities for Sel
    -- and shift 1 through the bitvector A
    for i in 1 to (len-1) loop
        Sel <= std_ulogic_vector(unsigned(Sel) + 1);
        A <= A sll 1;
        wait for 10 ns;
    end loop;

    wait;
end process stimul;

-- process that verifies the result of the Multiplexer
verify: postponed process (A,Sel) is
begin

    assert (YUsingCase = A(A'low + to_integer(unsigned(Sel))))
    report "Mux malfunction" 
    severity error;
    assert (YUsingIf = A(A'low + to_integer(unsigned(Sel))))
    report "Mux malfunction" 
    severity error;

end process verify;

end testbench;
