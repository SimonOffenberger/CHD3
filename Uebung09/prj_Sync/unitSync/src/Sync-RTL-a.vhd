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
architecture RTL of StrobeGen is
  constant gCountBitWidth : natural := LogDualis(gNrClkCycles);
  signal Count : unsigned(gCountBitWidth - 1 downto 0);
begin

  process (iClk, inResetAsync) is
  begin
    if (inResetAsync = not('1')) then
      Count <= (others => '0');
      oStrobe <= '0';
    elsif (rising_edge(iClk)) then
      if (Count = gNrClkCycles - 1) then
        Count <= (others => '0');
        -- Generate strobe pulse
        oStrobe <= '1';
      else
        Count <= Count + 1;
        oStrobe <= '0';
      end if;
    end if;

  end process;

end architecture RTL;