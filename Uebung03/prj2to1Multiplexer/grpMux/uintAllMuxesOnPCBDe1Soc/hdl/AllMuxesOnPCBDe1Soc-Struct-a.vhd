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
    oYMin           => LEDR(5),
    oYPrime         => LEDR(4),
    oYNand          => LEDR(3),
    oYTheNand2      => LEDR(2),
    oYUsingCase     => LEDR(1),
    oYUsingIf       => LEDR(0)
);

-- Convert Negative Logic from the board to pos logic
KeyPosLogic <= not KEY;

end Struct; 
