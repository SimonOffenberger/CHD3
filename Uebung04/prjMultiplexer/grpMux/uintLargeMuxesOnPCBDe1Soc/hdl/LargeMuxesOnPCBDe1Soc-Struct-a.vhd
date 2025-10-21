-------------------------------------------------------------------------------
-- Title      :  PCB Adater for the Terasic De1 SOC Board
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Struct of LargeMuxesOnPCBDe1Soc is
begin 

-- Map Board Pin Naming to the internal naming
AllMpx : entity work.LargeMuxes(RTL)
generic map (
    gLen => 12
)
port map (
    iAllMuxA        => GPIO_0(11 downto 0),
    iAllMuxSel      => GPIO_0(15 downto 12),
    oYUsingCase     => LEDR(1),
    oYUsingIf       => LEDR(0)
);

end Struct; 
