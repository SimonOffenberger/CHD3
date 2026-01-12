-------------------------------------------------------------------------------
-- Title : PCB Adapter for the DE1-SoC Reaction Game
-- Project : Chip Design
-------------------------------------------------------------------------------
-- Author : Simon Offenberger
-- Created : 2025-11-11
-------------------------------------------------------------------------------
-- Copyright (c) Hagenberg/Austria 2015
-------------------------------------------------------------------------------
-- Description: PCB Adapter for the DE1-SoC Reaction Game
-------------------------------------------------------------------------------
-- Architecure RTL 
--------------------------------------------------------------------------------
architecture struct of ReactionGameOnDE1SOC is

signal KeyPosLogic : std_ulogic_vector(KEY'range);    -- Signal for Positive Logic Keys
signal HEX0_PosLogic : std_ulogic_vector(HEX0'range); -- Signal for Positive Logic HEX0
signal HEX1_PosLogic : std_ulogic_vector(HEX1'range); -- Signal for Positive Logic HEX1
signal HEX2_PosLogic : std_ulogic_vector(HEX2'range); -- Signal for Positive Logic HEX2
signal StrobeSignal : std_ulogic;

signal A_KeySync : std_ulogic;    -- Synchronized A Key Signal
signal B_KeySync : std_ulogic;    -- Synchronized B Key Signal

begin

-- Instantiate Entity for the FSM of the Reaction Game
EntityReactionGame : entity work.ReactionGameStruct(struct)
  generic map (
    gClockFrequency    => gClockFrequency
    )
 port map (
  iClk         => CLOCK_50,
  inResetAsync => SW(0),
  iA_Sync      => A_KeySync,
  iB_Sync      => B_KeySync,
  oLEDs        => LEDR,
  oHEX1        => HEX0_PosLogic,
  oHEX2        => HEX1_PosLogic,
  oHEX3        => HEX2_PosLogic
  );

-- Instantiate Entity for Key Synchronization A
EntitySyncA : entity work.Sync(RTL)
port map (
    iClk          => CLOCK_50,         
    inResetAsync  => SW(0),    
    iAsync        => KeyPosLogic(0),        
    oSync        => A_KeySync
);

-- Instantiate Entity for Key Synchronization B
EntitySyncB : entity work.Sync(RTL)
port map (
    iClk          => CLOCK_50,         
    inResetAsync  => SW(0),    
    iAsync        => KeyPosLogic(1),        
    oSync         => B_KeySync
);

-- Convert Positive Logic to Negative Logic for the board
HEX0 <= not HEX0_PosLogic;
HEX1 <= not HEX1_PosLogic;
HEX2 <= not HEX2_PosLogic;

-- Convert Negative Logic from the board to pos logic
KeyPosLogic <= not KEY;

end architecture struct;