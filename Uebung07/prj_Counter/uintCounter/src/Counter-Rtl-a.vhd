-------------------------------------------------------------------------------
-- Title : Shift Register
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
architecture RTL of Counter is
begin

process (iClk,inResetAsync) is 
begin

  if(inResetAsync = not('1'))then
    oCount <= (others => '0');
  elsif(rising_edge(iClk)) then
    oCount <= (oCount + 1) mod (2**gCountBitWidth);
  end if;

end process;

end architecture RTL;
