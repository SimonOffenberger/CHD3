-------------------------------------------------------------------------------
-- Title      : Testbed of HelloDE1 for DE1-Soc 
-- Project    : HelloDE1
-- Company    : FH OOe Hagenberg/A, Copyright (c) 2015
-------------------------------------------------------------------------------
-- Author         : Thomas Mueller-W,
-- Date           : 30.4.2015
-- Authors are
--              tm        : Thomas Mueller-W., Hagenberg
-- Revisions  : V1, 30.4.15, tm
-------------------------------------------------------------------------------

architecture Struct of HelloOnPcbDe1Soc is

  signal HexA : std_ulogic_vector(6 downto 0);
  signal HexB : std_ulogic_vector(6 downto 0);

begin

-- ---------------------------------------------------------------------------
-- Names of entity ports and names of FPGA pins are different.
-- ---------------------------------------------------------------------------

  TheHelloDE1 : entity work.Hello(Rtl)
    generic map (
      gClockRateHz => 50*10**6)         -- 50 MHz
    port map (
      iClock     => CLOCK_50,
      inReset    => KEY0,
      iSW        => SW,
      o7SegCode0 => HexA,
      o7SegCode1 => HexB,
      oLed       => LEDR);

-- ---------------------------------------------------------------------------
-- Sevensegmentdisplays of DE1-SoC are low active.
-- ---------------------------------------------------------------------------
  HEX0 <= not HexA;
  HEX1 <= not HexB;

end Struct;
