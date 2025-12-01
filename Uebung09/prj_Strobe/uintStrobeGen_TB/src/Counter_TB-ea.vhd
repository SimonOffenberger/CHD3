-------------------------------------------------------------------------------
-- Title : Testbench for the Strobe Generator
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : simon Offenberger
-- Created : 2025-12-1
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

entity StrobeGen_TB is
end StrobeGen_TB;

architecture Testbench of StrobeGen_TB is
    constant cNumClkCycles : natural := 50; 
    signal Clk           : std_ulogic := '0';
    signal nResetAsync   : std_ulogic;
    signal Strobe        : std_ulogic;
begin

Entity_StrobeGen : entity work.StrobeGen(RTL)
generic map (
    gNrClkCycles => cNumClkCycles
)
port map (
    iClk         => Clk,
    inResetAsync => nResetAsync,
    oStrobe     => Strobe
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