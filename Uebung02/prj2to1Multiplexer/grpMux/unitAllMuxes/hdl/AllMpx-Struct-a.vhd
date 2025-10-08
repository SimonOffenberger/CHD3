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

-- Instantiate Three Mux entities with different Architekures
MpxMinTerms : entity work.Mpx(Minterms)
port map (
    iA         => iAllMuxA,
    iB         => iAllMuxB,
    iSel       => iAllMuxSel,
    oY         => oYMin);

MpxPrimImplTerms : entity work.Mpx(PrimImpl)
port map (
    iA         => iAllMuxA,
    iB         => iAllMuxB,
    iSel       => iAllMuxSel,
    oY         => oYPrime);

MpxNandOnlyTerms : entity work.Mpx(NandOnly)
port map (
    iA         => iAllMuxA,
    iB         => iAllMuxB,
    iSel       => iAllMuxSel,
    oY         => oYNand);

end Struct;
