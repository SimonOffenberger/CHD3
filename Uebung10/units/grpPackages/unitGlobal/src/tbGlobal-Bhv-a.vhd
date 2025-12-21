-------------------------------------------------------------------------------
-- Title      : Testbench for functions in global project package
-- Project    : Audio Signal Processing
-------------------------------------------------------------------------------
-- $Id: tbGlobal-Bhv-a.vhd 161 2005-12-09 11:24:54Z pfaff $
-------------------------------------------------------------------------------
-- Author     : Copyright 2003: Markus Pfaff
-- Standard   : Using VHDL'93
-- Simulation : Model Technology Modelsim
-- Synthesis  : Exemplar Leonardo
-------------------------------------------------------------------------------
-- Description:
--
-------------------------------------------------------------------------------


architecture Bhv of tbGlobal is

begin  -- architecture Bhv

  TickleLogDualis : process is
    type     aIntArray is array (natural range <>) of integer;
    variable LogDualisOf : aIntArray(0 to gUpperLogDualisTestLimit) := (others => 0);
  begin
    for idx in LogDualisOf'range loop
      LogDualisOf(idx) := LogDualis(idx);
      if idx >= 2 then
        assert 2**(LogDualisOf(idx)-1) < idx
          report "MP: Function LogDualis computed wrong value for " & integer'image(idx)
          severity error;
      end if;
      assert 2**LogDualisOf(idx) >= idx
        report "MP: Function LogDualis computed wrong value for " & integer'image(idx)
        severity error;
    end loop;  -- idx
    report "MP: End of test sequence reached."
      severity note;
    wait;
  end process TickleLogDualis;

end architecture Bhv;

