-------------------------------------------------------------------------------
-- Title : FSM For a running light using 1 Processes
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : simon Offenberger
-- Created : 2025-11-18
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015
-------------------------------------------------------------------------------
-- Description:
-------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Architecure RTL 
--------------------------------------------------------------------------------

architecture OneProcessWithCase of RunningLight is
  signal NextState : std_ulogic_vector(oState'range);

  -- init state 
  constant cStateAllOff : std_ulogic_vector(oState'range) := (others => '0');
  begin

-- Stateregister and State Transfer Process
process (iClk,inResetAsync,oState) is 
begin

  if(inResetAsync = not('1'))then
    oState <= cStateAllOff;
  elsif(rising_edge(iClk)) then
    oState <= NextState;
  end if;

  case oState is 
    when "000"  => NextState <= "100";
    when "100"  => NextState <= "010";
    when "010"  => NextState <= "001";
    when "001"  => NextState <= "011";
    when "011"  => NextState <= "111";
    when "111"  => NextState <= "000";
    when others => NextState <= "XXX";
  end case;

end process;

end architecture OneProcessWithCase;
