-------------------------------------------------------------------------------
-- Title      : Strobe Generator
-- Project    : General IP
-------------------------------------------------------------------------------
-- $Id: StrobeGen-e.vhd 161 2005-12-09 11:24:54Z pfaff $
-------------------------------------------------------------------------------
-- Author     : Copyright 2003: Markus Pfaff
-- Standard   : Using VHDL'93
-- Simulation : Model Technology Modelsim
-- Synthesis  : Exemplar Leonardo
-------------------------------------------------------------------------------
-- Description:
-- Generates a strobe signal that will be '1' for one clock cycle of the iClk.
-- The strobe comes every gStrobeCycleTime. If this cycle time cannot be
-- generated exactly it will be truncated with the accuracy of one iClk cycle.
-- Due to this slight
-------------------------------------------------------------------------------

architecture RTL of StrobeGen is
  constant cCounterMax : natural := natural(gClkFrequency / gStrobeFrequency);
  signal Count : unsigned(LogDualis(cCounterMax) - 1 downto 0);
begin

 process (iClk, inResetAsync) is
  begin
    -- Reset logic
    if (inResetAsync = not('1')) then
      Count <= (others => '0');
      oStrobe <= '0';
    
    -- Clocked logic
    elsif (rising_edge(iClk)) then

      -- overflow when reaching max count
      if (Count = cCounterMax - 1) then
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
