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
architecture TwoProcessWithCase of RunningLight is
  signal NextState : std_ulogic_vector(2 downto 0);
  constant cStateAllOff : std_ulogic_vector(2 downto 0) := "000";
begin

process (iClk,inResetAsync) is 
begin
  if(inResetAsync = not('1'))then
    oState <= cStateAllOff;
  elsif(rising_edge(iClk)) then
    oState <= NextState;
  end if;
end process;


NextStateLogic: process (oState) is
begin
  case oState is 
    when "000" => NextState <= "100";
    when "100" => NextState <= "010";
    when "010" => NextState <= "001";
    when "001" => NextState <= "011";
    when "011" => NextState <= "111";
    when "111" => NextState <= "000";
    when others => NextState <= "XXX";
  end case;
end process;

end architecture TwoProcessWithCase;
