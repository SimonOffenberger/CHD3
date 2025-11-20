-------------------------------------------------------------------------------
-- Title : FSM For a running light using 2 Processes
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
architecture TwoProcessHandmade of RunningLight is
  signal NextState : std_ulogic_vector(oState'range);
  -- init state 
  constant cStateAllOff : std_ulogic_vector(oState'range) := (others => '0');
begin

-- Stateregister
process (iClk,inResetAsync) is 
begin
  if(inResetAsync = not('1'))then
    oState <= cStateAllOff;
  elsif(rising_edge(iClk)) then
    oState <= NextState;
  end if;

end process;

-- Statetransition Process
NextStateLogic: process (oState) is
begin

  NextState(2) <= (not oState(2) and not oState(1) and not oState(0)) or 
                  (not oState(2) and     oState(1) and     oState(0));
  
  NextState(1) <= (    oState(2) and not oState(1) and not oState(0)) or
                  (not oState(2) and               oState(0));

  NextState(0) <= (not oState(2) and     oState(1)) or 
                  (not oState(2) and     oState(0));

end process;

end architecture TwoProcessHandmade;