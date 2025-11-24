-------------------------------------------------------------------------------
-- Title : Testbench for the Counter with Asynchronous Zero Reset
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
use work.global.all;

entity Counter_TB is
end Counter_TB;

architecture Testbench of Counter_TB is
    constant cClkFrequency : natural := 50E6;
    signal Clk           : std_ulogic := '0';
    signal nResetAsync   : std_ulogic;
    signal Counter       : unsigned(LogDualis(cClkFrequency)-1 downto 0);
begin

Entity_Counter : entity work.CounterSyncZero(Rtl)
generic map (
    gClkFrequency => cClkFrequency
)
port map (
    iClk         => Clk,
    inResetAsync => nResetAsync,
    oCountedTo     => Counter
);

-- generate 50 Mhz Clock
clkgen: Clk <= not Clk after 10 ns;
  
stimul: process is 
begin
    nResetAsync <= '0';
    wait for 50 ns;
    nResetAsync <= '1';
    wait;
end process;

end Testbench;