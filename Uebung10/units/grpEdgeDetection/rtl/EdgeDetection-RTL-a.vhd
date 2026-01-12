-------------------------------------------------------------------------------
-- Title : Edge Detection Entity
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : simon Offenberger
-- Created : 2025-11-11
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015
-------------------------------------------------------------------------------
-- Description: Edge Detection Entity to detect rising edges on a sync signal
-------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Architecure RTL 
--------------------------------------------------------------------------------
architecture RTL of EdgeDetection is
  signal SyncPrev : std_ulogic;
begin

process (iClk, inResetAsync) is
  begin
    -- asynchronous reset
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

-- combinational logic for edge detection
oEdge <= '1' when (iSync = '1' and SyncPrev = '0') else '0';

end architecture RTL;