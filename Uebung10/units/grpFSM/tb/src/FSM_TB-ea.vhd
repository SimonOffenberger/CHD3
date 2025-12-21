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

entity FSM_TB is
end FSM_TB;

architecture Testbench of FSM_TB is
    signal Clk           : std_ulogic := '0';
    signal Zero          : std_ulogic := '0';
    signal Enable        : std_ulogic := '1';
    signal A_Sync        : std_ulogic := '0';
    signal B_Sync        : std_ulogic := '0';
    signal nResetAsync   : std_ulogic;
    signal ENCounter     : std_ulogic;
    signal LED           : std_ulogic_vector(3 downto 0);
begin

Entity_FSM : entity work.ReactionGameFSM(RTL)
 port map(
  iClk           => Clk,
  inResetAsync   => nResetAsync,
  iEnable        => Enable,
  iA_Sync        => A_Sync,
  iB_Sync        => B_Sync,
  oLEDs          => LED,
  oZero          => Zero,
  oEnableCounter => ENCounter
);

-- generate 50 Mhz Clock
clkgen: clk <= not clk after 10 ns;
  
stimul: process is 
begin
    nResetAsync <= '0';
    wait for 50 ns;
    nResetAsync <= '1';
    wait for 101 ns;
    A_Sync <= '1';
    wait for 41 ns;
    A_Sync <= '0';
    wait for 80 ns;
    A_Sync <= '0';
    B_Sync <= '1';
    wait for 41 ns;
    B_Sync <= '0';
    A_Sync <= '0';
    wait for 80 ns;
    A_Sync <= '1';
    B_Sync <= '0';
    wait for 41 ns;
    B_Sync <= '0';
    A_Sync <= '0';
    wait for 80 ns;
    A_Sync <= '0';
    B_Sync <= '1';
    wait for 41 ns;
    B_Sync <= '0';
    A_Sync <= '0';
    wait for 80 ns;
    A_Sync <= '1';
    B_Sync <= '0';
    wait for 41 ns;
    B_Sync <= '0';
    A_Sync <= '0';
    wait for 80 ns;
    nResetAsync <= '0';
    wait;
end process;

end Testbench;