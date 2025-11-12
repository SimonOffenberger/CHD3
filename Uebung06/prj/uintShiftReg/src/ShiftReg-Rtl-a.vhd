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
architecture Rtl of ShiftReg is
 
begin

process (iClk,inResetAsync) is 
begin
  if(inResetAsync = not('1'))then
    oQ <= (others => '0');
  elsif(iClk'event and iClk = '1') then
      -- shift Q 1 to the left and assign iD to oQ'low
      oQ <= oQ(oQ'high -1 downto oQ'low) & iD;
  end if;
end process;


end architecture Rtl;
