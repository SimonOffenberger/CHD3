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

architecture Rtl of CounterGatedClk is

  signal Clk : std_ulogic;
  signal Counter : unsigned(oCountedTo'range) := (others => '0');

begin

  Clk <= iClk when iEnable = '1' else
         '0';

  process (Clk, inResetAsync) is
  begin
    if inResetAsync = not('1') then

      Counter <= (others => '0');
    elsif rising_edge(Clk) then
      Counter <= Counter + 1 mod 2 ** gCounterBitLength;
    end if;
  end process;

  oCountedTo <= Counter;

end architecture Rtl;