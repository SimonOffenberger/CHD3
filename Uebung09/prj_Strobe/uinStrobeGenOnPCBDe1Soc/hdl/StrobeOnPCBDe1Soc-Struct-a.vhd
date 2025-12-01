-------------------------------------------------------------------------------
-- Title      :  PCB Adater for the Terasic De1 SOC Board
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Struct of StrobeOnPCBDe1Soc is
    constant cClkCycles : natural := 50;
    signal KeyPosLogic : std_ulogic_vector(KEY'range);   
begin 
    
-- Instantiate Entity ShiftRegister
EntityStrobeGen : entity work.StrobeGen(RTL)
generic map (
    gNrClkCycles => cClkCycles
)
port map (
    iClk          => CLOCK_50,         
    inResetAsync  => KeyPosLogic(0),   
    oStrobe       => LEDR(0)
);

-- Convert Negative Logic from the board to pos logic
KeyPosLogic <= not KEY;

end Struct; 
