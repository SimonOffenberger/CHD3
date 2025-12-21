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

  -- Kombinatorisches Carry für die Kaskade (1 wenn dieser Zähler JETZT überlaufen würde)
  oOverflow <= '1' when (iEnable = '1' and iZero = '0' and oCount = gCounterOverflowVal - 1) else '0';

  process(iClk, inResetAsync) is
  begin
    -- asynchroner Reset (angenommen aktiv-low)
    if inResetAsync = not('1') then
      oCount    <= (others => '0');

    elsif rising_edge(iClk) then

      if iZero = '1' then
        oCount <= (others => '0');

      elsif iEnable = '1' then
        if oCount = gCounterOverflowVal - 1 then
          oCount    <= (others => '0');
        else
          oCount <= oCount + 1;
        end if;
      end if;
    end if;
  end process;
end architecture RTL;

