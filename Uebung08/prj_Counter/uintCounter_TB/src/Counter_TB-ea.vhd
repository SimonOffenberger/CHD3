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

entity Counter_TB is
end Counter_TB;

architecture Testbench of Counter_TB is
    constant cBitWidth   : natural := 26; -- only for Simulation
    signal Clk           : std_ulogic := '0';
    signal nResetAsync   : std_ulogic;
    signal Counter    : unsigned(cBitWidth downto 1);
begin

Entity_Counter : entity work.Counter(RTL)
generic map (
    gCountBitWidth => cBitWidth
)
port map (
    iClk         => Clk,
    inResetAsync => nResetAsync,
    oCount     => Counter
);

-- generate 50 Mhz Clock
clkgen: clk <= not clk after 10 ns;
  
stimul: process is 
begin
    nResetAsync <= '0';
    wait for 50 ns;
    nResetAsync <= '1';
    wait;
end process;

end Testbench;