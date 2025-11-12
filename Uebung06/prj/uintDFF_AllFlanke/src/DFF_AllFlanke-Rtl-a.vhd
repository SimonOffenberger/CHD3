-------------------------------------------------------------------------------
-- Title : D-FlipFlop Allflanke
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
architecture Rtl of DFF_AllFlanke is
 
begin

process (iClk,inResetAsync) is 
begin
  if(inResetAsync = not('1'))then
    oQ <= '0';
    onQ <= '1';
  elsif(rising_edge(iClk) or falling_edge(iClk)) then
    if(iSet = '1') then
      oQ <= '1';
      onQ <= '0';
    elsif(iEnable = '1') then 
      oQ <= iD;
      onQ <= not(iD);
    end if;
  end if;
end process;



end architecture Rtl;
