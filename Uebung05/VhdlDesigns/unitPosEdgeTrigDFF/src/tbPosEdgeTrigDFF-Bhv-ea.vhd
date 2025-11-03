-------------------------------------------------------------------------------
-- Title      : Testbench for design "PosEdgeTrigDFF"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : tbPosEdgeTrigDFF.vhd
-- Author     :   <mzei@PCHHAGENTW1>
-- Company    : 
-- Created    : 2008-11-12
-- Last update: 2012-11-21
-- Platform   : 
-------------------------------------------------------------------------------
-- Description: Testbench for PosEdgeTrigDFF
-------------------------------------------------------------------------------
-- Copyright (c) 2008 - 2012
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author    Description
-- 2008-11-12  1.0      mzei  Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------------------------------------------------

entity tbPosEdgeTrigDFF is

end entity tbPosEdgeTrigDFF;

-----------------------------------------------------------------------------------------

architecture Bhv of tbPosEdgeTrigDFF is

  -- component generics
  constant gRejectDuration1   : time := 2 ns;
  constant gPropagationDelay1 : time := 9 ns;
  constant gRejectDuration2   : time := 2 ns;
  constant gPropagationDelay2 : time := 9 ns;
  constant gRejectDuration3   : time := 2 ns;
  constant gPropagationDelay3 : time := 9 ns;
  constant gRejectDuration4   : time := 2 ns;
  constant gPropagationDelay4 : time := 9 ns;
  constant gRejectDuration5   : time := 2 ns;
  constant gPropagationDelay5 : time := 9 ns;
  constant gRejectDuration6   : time := 2 ns;
  constant gPropagationDelay6 : time := 9 ns;

  constant cClkCycleTime : time := 1 us;

  -- component ports
  signal Data : std_ulogic;
  signal Clk  : std_ulogic := '1';
  signal nClr : std_ulogic;
  signal Q    : std_ulogic;
  signal nQ   : std_ulogic;

begin

  -- clock generation
  Clk <= not Clk after cClkCycleTime/2;

  -- component instantiation
  DUT : entity work.PosEdgeTrigDFF
    generic map (
      gRejectDuration1   => gRejectDuration1,
      gPropagationDelay1 => gPropagationDelay1,
      gRejectDuration2   => gRejectDuration2,
      gPropagationDelay2 => gPropagationDelay2,
      gRejectDuration3   => gRejectDuration3,
      gPropagationDelay3 => gPropagationDelay3,
      gRejectDuration4   => gRejectDuration4,
      gPropagationDelay4 => gPropagationDelay4,
      gRejectDuration5   => gRejectDuration5,
      gPropagationDelay5 => gPropagationDelay5,
      gRejectDuration6   => gRejectDuration6,
      gPropagationDelay6 => gPropagationDelay6)
    port map (
      iD    => Data,
      iC    => Clk,
      inClr => nClr,
      oQ    => Q,
      onQ   => nQ);

  -- waveform generation
  WaveGen_Proc : process
  begin
    -------------------------------------------------------------------------------------
    -- insert signal assignments here
    -------------------------------------------------------------------------------------

    wait;
  end process WaveGen_Proc;

  

end architecture Bhv;

-----------------------------------------------------------------------------------------
