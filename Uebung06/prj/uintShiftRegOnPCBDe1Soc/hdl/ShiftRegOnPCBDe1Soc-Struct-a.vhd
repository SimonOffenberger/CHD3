-------------------------------------------------------------------------------
-- Title      :  PCB Adater for the Terasic De1 SOC Board
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Struct of ShiftRegOnPCBDe1Soc is
signal KeyPosLogic : std_ulogic_vector(KEY'range);   
begin 

-- Instantiate Entity ShiftRegister
Entity_ShiftReg : entity work.ShiftReg(Rtl)
generic map (
    n => 9
)
port map (
    iClk          => KeyPosLogic(0),
    iD            => KeyPosLogic(1),           
    inResetAsync  => KeyPosLogic(2), 
    oQ            => LEDR
);

-- Convert Negative Logic from the board to pos logic
KeyPosLogic <= not KEY;

end Struct; 
