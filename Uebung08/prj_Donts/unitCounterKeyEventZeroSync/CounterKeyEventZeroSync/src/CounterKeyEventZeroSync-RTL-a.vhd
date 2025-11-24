-------------------------------------------------------------------------------
-- Title : Counter with Asynchronous Zero Reset
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

architecture Rtl of CounterKeyEventZeroSync is
	
	signal Counter     : unsigned(oCountedTo'range) := (others => '0');
	signal NextCounter : unsigned(oCountedTo'range) := (others => '0');

begin

  process (iClk, inResetAsync) is
  begin
    if inResetAsync = not('1') then
      Counter <= (others => '0');
    elsif rising_edge(iClk) then
        Counter <= NextCounter;
    end if;
  end process;

process (iKey,Counter)
begin

  if(iKey = '1') then
    NextCounter <= (others => '0');
  else
    NextCounter <= Counter + 1 mod 2 ** gCounterBitLength;
  end if;
  
  end process;
  
oCountedTo <= Counter;
  
end architecture Rtl;