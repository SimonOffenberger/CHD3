-------------------------------------------------------------------------------
-- Title      :  PCB Adater for the Terasic De1 SOC Board
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Struct of RunningLightWithStrobeOnPCBDe1Soc is
signal KeyPosLogic : std_ulogic_vector(KEY'range);   
signal StrobeSignal : std_ulogic;
signal KeySync : std_ulogic;
begin 

EntityStrobeGen : entity work.StrobeGen(RTL)
generic map (
    gNrClkCycles => 50E6
)
port map (
    iClk          => CLOCK_50,         
    inResetAsync  => KeyPosLogic(0),            
    oStrobe       => StrobeSignal
);

-- Instantiate Entity
EntityRunningLightCase2P : entity work.RunningLight(RTL)
port map (
    iClk          => CLOCK_50,         
    inResetAsync  => KeyPosLogic(0),    
    iOnlyFirstFour  => KeySync,    
    iEnable       => StrobeSignal,         
    oState        => LEDR
);

-- Instantiate Entity
EntitySync : entity work.Sync(RTL)
port map (
    iClk          => CLOCK_50,         
    inResetAsync  => KeyPosLogic(0),    
    iAsync        => KeyPosLogic(1),        
    oSync        => KeySync
);


-- Convert Negative Logic from the board to pos logic
KeyPosLogic <= not KEY;

end Struct; 
