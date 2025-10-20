-------------------------------------------------------------------------------
-- Title      :  PCB Adater for the Terasic De1 SOC Board
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Struct of AllMuxesOnPCBDe1Soc is
signal KeyPosLogic : std_ulogic_vector(KEY'range);   
begin 

-- Map Board Pin Naming to the internal naming
AllMpx : entity work.AllMpx(Struct)
generic map (
    n => 8
)
port map (
    iAllMuxA        => SW,
    iAllMuxSel      => KeyPosLogic,
    oYUsingCase     => LEDR(1),
    oYUsingIf       => LEDR(0)
);

-- Convert Negative Logic from the board to pos logic
KeyPosLogic <= not KEY;

end Struct; 
