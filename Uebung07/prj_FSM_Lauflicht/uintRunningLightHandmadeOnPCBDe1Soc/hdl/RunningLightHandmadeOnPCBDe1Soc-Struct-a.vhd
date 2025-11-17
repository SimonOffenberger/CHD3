-------------------------------------------------------------------------------
-- Title      :  PCB Adater for the Terasic De1 SOC Board
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Struct of RunningLightHandmadeOnPCBDe1Soc is
signal KeyPosLogic : std_ulogic_vector(KEY'range);   
begin 

-- Instantiate Entity
EntityRunningLightHandmade : entity work.RunningLight(TwoProcessHandmade)
port map (
    iClk          => KeyPosLogic(0),         
    inResetAsync  => KEY(1),                -- negativ Logic for Reset
    oState        => LEDR
);

-- Convert Negative Logic from the board to pos logic
KeyPosLogic <= not KEY;

end Struct; 
