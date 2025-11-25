-------------------------------------------------------------------------------
-- Title : Counter with Key Event Reset
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

architecture Rtl of CounterKeyEventZero is
	
	signal Counter : unsigned(oCountedTo'range) := (others => '0');

begin

  process (iClk, iKey, inResetAsync) is
  begin
    if inResetAsync = not('1') then

      Counter <= (others => '0');
    elsif rising_edge(iClk) then
      Counter <= Counter + 1 mod 2 ** gCounterBitLength;
    elsif rising_edge(iKey) then
		Counter <= (others => '0');
    end if;
  end process;

  oCountedTo <= Counter;

end architecture Rtl;