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
architecture RTL of ReactionGameFSM is
  signal NextState : T_REACTION_TIME_GAME_STATE;-- init state
  signal State : T_REACTION_TIME_GAME_STATE; 
  constant cStateAllOff : T_REACTION_TIME_GAME_STATE := Locked;
  constant cLEDOFF : std_ulogic_vector(oLEDs'range) := (others => '0');
  
  constant cLED_LOCKED_INDEX : integer := 0;
  constant cLED_UNLOCKED_INDEX : integer := 1;
  constant cLED_COUNTUP_INDEX : integer := 2;
  constant cLED_SHOWRESULT_INDEX : integer := 3;
begin

  -- State Register
  process (iClk, inResetAsync) is
  begin
    if (inResetAsync = not('1')) then
      State <= Locked;
    elsif (rising_edge(iClk)) then
      if(iEnable = '0') then
        State <= State; -- hold state when not enabled
      else
        State <= NextState;
      end if;
    end if;
  end process;

  -- State Transition Process
  NextStateLogic : process (State,iEnable,iA_Sync,iB_Sync) is
  begin

    -- default assignments
	 NextState <= State;
    oLeds <= cLEDOFF; -- default all leds off
    oZero <= '0';     -- default zero off
    oEnableCounter <= '0'; -- default counter disabled

    case State is

      when Locked => 
        if(iA_Sync = '1') then
          NextState <= Unlocked;
        end if;
        oZero <= '1';                    -- reset counters
        oLeds(cLED_LOCKED_INDEX) <= '1'; -- indicate locked state
        
      when Unlocked =>
        if(iB_Sync = '1') then
          NextState <= CountUpTime;
        end if;
        oLeds(cLED_UNLOCKED_INDEX) <= '1'; -- indicate locked statex
        
      when CountUpTime =>
        oEnableCounter <= '1'; -- enable counter
        if(iA_Sync = '1') then
          NextState <= ShowResult;
        end if;
        oLeds(cLED_COUNTUP_INDEX) <= '1'; -- indicate locked statex
        
      when ShowResult =>
        if(iB_Sync = '1') then
          NextState <= Locked;
        end if;
        oLeds(cLED_SHOWRESULT_INDEX) <= '1'; -- indicate locked statex
        
      when others =>
        NextState <= cStateAllOff;
    end case;

  end process;

end architecture RTL;