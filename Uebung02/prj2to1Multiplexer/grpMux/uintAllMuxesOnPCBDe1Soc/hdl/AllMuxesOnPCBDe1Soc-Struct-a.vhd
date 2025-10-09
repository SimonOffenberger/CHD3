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
signal KeyPosLogic : std_ulogic_vector (1 downto 0);   
begin 

-- Map Board Pin Naming to the internal naming
AllMpx : entity work.AllMpx(Struct)
port map (
    iAllMuxA        => KeyPosLogic(0),
    iAllMuxB        => KeyPosLogic(1),
    iAllMuxSel      => SW,
    oYMin           => LEDR(2),
    oYPrime         => LEDR(1),
    oYNand          => LEDR(0)
);

-- Convert Negative Logic from the board to pos logic
KeyPosLogic <= not KEY;

end Struct; 
