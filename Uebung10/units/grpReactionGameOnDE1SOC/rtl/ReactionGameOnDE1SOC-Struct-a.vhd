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
architecture struct of ReactionGameOnDE1SOC is
constant cClockFrequency : natural := 50E6;
signal KeyPosLogic : std_ulogic_vector(KEY'range);   
signal HEX0_PosLogic : std_ulogic_vector(6 downto 0);
signal HEX1_PosLogic : std_ulogic_vector(6 downto 0);
signal HEX2_PosLogic : std_ulogic_vector(6 downto 0);
signal StrobeSignal : std_ulogic;

signal A_KeySync : std_ulogic;
signal B_KeySync : std_ulogic;
begin

-- Instantiate Entity
EntityReactionGame : entity work.ReactionGameStruct(struct)
  generic map (
    gClockFrequency    => cClockFrequency
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

-- Instantiate Entity
EntitySyncB : entity work.Sync(RTL)
port map (
    iClk          => CLOCK_50,         
    inResetAsync  => SW(0),    
    iAsync        => KeyPosLogic(0),        
    oSync        => A_KeySync
);

-- Instantiate Entity
EntitySyncA : entity work.Sync(RTL)
port map (
    iClk          => CLOCK_50,         
    inResetAsync  => SW(0),    
    iAsync        => KeyPosLogic(1),        
    oSync         => B_KeySync
);


HEX0 <= not HEX0_PosLogic;
HEX1 <= not HEX1_PosLogic;
HEX2 <= not HEX2_PosLogic;

-- Convert Negative Logic from the board to pos logic
KeyPosLogic <= not KEY;

end architecture struct;