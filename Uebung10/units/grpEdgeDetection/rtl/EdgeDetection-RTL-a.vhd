-------------------------------------------------------------------------------
-- Title : Counter
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
architecture RTL of EdgeDetection is
  signal SyncPrev : std_ulogic;
begin

process (iClk, inResetAsync) is
  begin
    if (inResetAsync = not('1')) then
      SyncPrev <= '0';
    elsif (rising_edge(iClk)) then
      if(iEnable = '1') then
        SyncPrev <= iSync;
      else
        SyncPrev <= SyncPrev;
      end if;
    end if;
end process;

oEdge <= '1' when (iSync = '1' and SyncPrev = '0') else '0';

end architecture RTL;