-------------------------------------------------------------------------------
-- Title : Counter with Sync Overflow
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
-- Architecure RTL 
--------------------------------------------------------------------------------


architecture Rtl of CounterSyncZero is
  signal Counter : unsigned(oCountedTo'range) := (others => '0');
begin

  process (iClk, inResetAsync) is
  begin
    if inResetAsync = not('1') then
      Counter <= (others => '0');
    elsif rising_edge(iClk) then
      if(to_integer(Counter+1) = gClkFrequency) then
        Counter <= (others => '0');
      else
        Counter <= Counter + 1;
      end if;
    end if;
  end process;

  oCountedTo <= Counter;

end architecture Rtl;