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
architecture RTL of Sync is
  signal MightMetha : std_ulogic_vector(gNumOfFFStages downto 1);
begin


process (iClk, inResetAsync) is
  begin
    if (inResetAsync = not('1')) then
      MightMetha <= (others => '0');
    elsif (rising_edge(iClk)) then
      MightMetha <= MightMetha(gNumOfFFStages-1 downto MightMetha'low) & iAsync;
    end if;
end process;

oSync <= MightMetha(MightMetha'high);

end architecture RTL;