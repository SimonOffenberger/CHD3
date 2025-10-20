-------------------------------------------------------------------------------
-- Title      : Achitekture that instanziates all the Muxes with differnt architekures
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Struct of AllMpx is
begin 

MpxUsingCase : entity work.Mpx(UsingCase)
generic map (
    n => 8
)
port map (
    iA         => iAllMuxA,
    iSel       => iAllMuxSel,
    oY         => oYUsingCase);

-- MpxUsingIf : entity work.Mpx(UsingIf)
-- generic map (
--     n=>8
-- )
-- port map (
--     iA         => iAllMuxA,
--     iSel       => iAllMuxSel,
--     oY         => oYUsingIf);

    
MpxUniversal : entity work.MpxUni(Uni)
port map (
    iA         => iAllMuxA,
    iSel       => iAllMuxSel,
    oY         => oYUsingIf);
            
        
end Struct;