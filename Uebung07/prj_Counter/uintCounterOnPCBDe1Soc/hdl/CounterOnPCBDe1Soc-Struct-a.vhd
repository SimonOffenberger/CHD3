-------------------------------------------------------------------------------
-- Title      :  PCB Adater for the Terasic De1 SOC Board
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Struct of RunningLightCase1POnPCBDe1Soc is
signal KeyPosLogic : std_ulogic_vector(KEY'range);   
begin 

-- Instantiate Entity ShiftRegister
EntityRunningLightCase2P : entity work.RunningLight(OneProcessWithCase)
port map (
    iClk          => KeyPosLogic(0),         
    inResetAsync  => KeyPosLogic(1), 
    oState        => LEDR
);

-- Convert Negative Logic from the board to pos logic
KeyPosLogic <= not KEY;

end Struct; 
