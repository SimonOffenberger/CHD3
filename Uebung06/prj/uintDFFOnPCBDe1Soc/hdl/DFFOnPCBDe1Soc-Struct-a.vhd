-------------------------------------------------------------------------------
-- Title      :  PCB Adater for the Terasic De1 SOC Board
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Struct of DFFOnPCBDe1Soc is
signal KeyPosLogic : std_ulogic_vector(KEY'range);   
begin 

-- Instantiate Entity D-FlipFlop
Entity_DFF : entity work.D_FF(Rtl)
port map (
    iClk          => SW(0),
    iD            => KeyPosLogic(0),           
    inResetAsync  => SW(1), 
    iSet          => SW(2),
    iEnable       => SW(3),
    oQ            => LEDR(0),
    onQ           => LEDR(1)
);

-- Convert Negative Logic from the board to pos logic
KeyPosLogic <= not KEY;

end Struct; 
