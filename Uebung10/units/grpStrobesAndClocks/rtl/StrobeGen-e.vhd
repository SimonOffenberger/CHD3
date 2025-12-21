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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

entity StrobeGen is
  
  generic (
    gClkFrequency    : natural := 50E6;
    gStrobeFrequency : natural := 1E3);  -- 1 kHz

  port (
    -- Sequential logic inside this unit
    iClk         : in std_ulogic;
    inResetAsync : in std_ulogic;

    -- Strobe with the above given cycle time
    oStrobe : out std_ulogic);
  
-- pragma translate_off
begin

  assert (gClkFrequency >= gStrobeFrequency)
    report "Mp: The Clk frequency is to low to generate such a short strobe cycle."
    severity error;
-- pragma translate_on
  
end StrobeGen;
