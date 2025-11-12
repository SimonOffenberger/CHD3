-------------------------------------------------------------------------------
-- Title : Testbench for the Shiftregister
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : simon Offenberger
-- Created : 2025-11-11
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015
-------------------------------------------------------------------------------
-- Description:
-------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Entity 
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ShiftReg_TB is
end ShiftReg_TB;

architecture Testbench of ShiftReg_TB is
    signal D, nResetAsync  : std_ulogic;
    signal Q : std_ulogic_vector(9 downto 1);
    signal Clk : std_ulogic := '0';
begin

Entity_ShiftReg : entity work.ShiftReg(Rtl)
generic map (
    n => 9
)
port map (
    iD           => D,
    iClk         => Clk,
    inResetAsync => nResetAsync,
    oQ           => Q

);


clkgen: clk <= not clk after 2 ns;
  
stimul: process is 
    variable from_vec, to_vec : std_logic_vector(1 downto 0);
begin
    for i in 0 to 3 loop          
        from_vec := std_logic_vector(to_unsigned(i, 2));
        D            <= from_vec(0);
        nResetAsync  <= from_vec(1);
        wait for 10 ns;
    end loop;

    D <= '0';
    
    wait;
end process stimul;

end Testbench;