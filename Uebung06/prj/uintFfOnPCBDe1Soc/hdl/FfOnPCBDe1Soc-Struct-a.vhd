-------------------------------------------------------------------------------
-- Title      :  PCB Adater for the Terasic De1 SOC Board
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Struct of FfOnPCBDe1Soc is
signal KeyPosLogic : std_ulogic_vector(KEY'range);   
begin 

-- Instantiate Entity FfOrLatch
Entity_FF_OR_Latch : entity work.FfOrLatch(Rtl)
port map (
    iD          => KeyPosLogic(0),
    iClk        => CLOCK_50,
    oQ_A        => LEDR(0),
    oQ_B        => LEDR(1),
    oQ_C        => LEDR(2),
    oQ_D        => LEDR(3),
    oQ_E        => LEDR(4),
    oQ_F        => LEDR(5),
    oQ_G        => LEDR(6),
    oQ_H        => LEDR(7),
    oQ_I        => LEDR(8)
);

-- Convert Negative Logic from the board to pos logic
KeyPosLogic <= not KEY;

end Struct; 
