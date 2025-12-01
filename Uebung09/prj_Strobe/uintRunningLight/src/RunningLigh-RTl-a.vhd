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
architecture RTL of RunningLight is
  signal NextState : std_ulogic_vector(oState'range);
  -- init state 
  constant cStateAllOff : std_ulogic_vector(oState'range) := (others => '0');
begin

  -- State Register
  process (iClk, inResetAsync) is
  begin
    if (inResetAsync = not('1')) then
      oState <= cStateAllOff;
    elsif (rising_edge(iClk)) then
      oState <= NextState;
    end if;
  end process;

  -- State Transition Process
  NextStateLogic : process (oState,iEnable) is
  begin

    if (iEnable = '0') then
      NextState <= oState; -- hold state when not enabled
    else
      case oState is
        when "000" => NextState <= "100";
        when "100" => NextState <= "010";
        when "010" => NextState <= "001";
        when "001" => NextState <= "011";
        when "011" => NextState <= "111";
        when "111" => NextState <= "000";
        when others => NextState <= "XXX";
      end case;
    end if;
  end process;

end architecture RTL;