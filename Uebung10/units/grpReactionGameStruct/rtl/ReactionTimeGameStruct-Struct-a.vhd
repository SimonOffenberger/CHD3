-------------------------------------------------------------------------------
-- Title : Structure of the Reaction Game
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : Simon Offenberger
-- Created : 2025-11-11
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015
-------------------------------------------------------------------------------
-- Description: Interconnects the submodules of the Reaction Game
-------------------------------------------------------------------------------
-- Architecure RTL 
--------------------------------------------------------------------------------
architecture struct of ReactionGameStruct is

 constant cCounterFrequency : natural := 1E3; -- 1 kHz Counter Frequency
 
  -- Edge Detection for the A and B Key
  signal AEdge          : std_ulogic;
  signal BEdge          : std_ulogic;

  signal nResetAsync    : std_ulogic;
  signal Clk            : std_ulogic;
  signal Enable         : std_ulogic;
  signal StrobeEnable   : std_ulogic;
  
  signal Zero           : std_ulogic;
  signal EnableCounter  : std_ulogic;

  signal CounterOutputLow  : unsigned(3 downto 0);
  signal CounterOutputMid  : unsigned(3 downto 0);
  signal CounterOutputHigh : unsigned(3 downto 0);

  -- Overflow Signals for cascaded counters
  signal CounterLowOverflow  : std_ulogic;
  signal CounterMidOverflow  : std_ulogic;
  signal CounterHighOverflow : std_ulogic;

begin

nResetAsync <= inResetAsync;
Clk         <= iClk;
Enable      <= StrobeEnable;

EdgeDetectionA : entity work.EdgeDetection(RTL)
  port map (
    iClk => Clk,
    inResetAsync => nResetAsync,
    iEnable => StrobeEnable,
    iSync => iA_Sync,
    oEdge => AEdge
);

EdgeDetectionB : entity work.EdgeDetection(RTL)
  port map (
    iClk => Clk,
    inResetAsync => nResetAsync,
    iEnable => StrobeEnable,
    iSync => iB_Sync,
    oEdge => BEdge
  );

StrobeGen : entity work.StrobeGen(RTL)
  generic map(
    gClkFrequency    => gClockFrequency,
    gStrobeFrequency => cCounterFrequency
  )
  port map (
    iClk         => Clk,
    inResetAsync => nResetAsync, 
    oStrobe      => StrobeEnable
);

-- Instantiate Entity
EntityReactionFSM : entity work.ReactionGameFSM(RTL)
port map (
    iClk           => Clk,         
    inResetAsync   => nResetAsync,    
    iA_Sync        => AEdge,        
    iB_Sync        => BEdge,        
    iEnable        => Enable,
    oLEDs          => oLEDs,
    oEnableCounter => EnableCounter,
    oZero          => Zero
);

CounterLow: entity work.Counter(RTL)
  port map (
    iClk         => Clk,
    iEnable      => EnableCounter and Enable,
    inResetAsync => nResetAsync,
    iZero        => Zero,
    oCount       => CounterOutputLow,
    oOverflow    => CounterLowOverflow
);
  
CounterMid: entity work.Counter(RTL)
  port map (
    iClk         => Clk,
    iEnable      => CounterLowOverflow  and EnableCounter,
    inResetAsync => nResetAsync,
    iZero        => Zero,
    oCount       => CounterOutputMid,
    oOverflow    => CounterMidOverflow
);

CounterHigh: entity work.Counter(RTL)
  port map (
    iClk         => Clk,
    iEnable      => CounterMidOverflow  and EnableCounter,
    inResetAsync => nResetAsync,
    iZero        => Zero,
    oCount       => CounterOutputHigh,
    oOverflow    => CounterHighOverflow
);

HexDecoderLow: entity work.Hex2SevenSegment(Rtl)
  port map(
    iHexValue     => std_ulogic_vector(CounterOutputLow),
    o7SegCode     => oHEX1
);

HexDecoderMid: entity work.Hex2SevenSegment(Rtl)
  port map(
    iHexValue     => std_ulogic_vector(CounterOutputMid),
    o7SegCode     => oHEX2
);

HexDecoderHigh: entity work.Hex2SevenSegment(Rtl)
  port map(
    iHexValue     => std_ulogic_vector(CounterOutputHigh),
    o7SegCode     => oHEX3
);

end architecture struct;