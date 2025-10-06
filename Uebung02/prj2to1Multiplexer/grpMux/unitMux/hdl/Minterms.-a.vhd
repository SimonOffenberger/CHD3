-------------------------------------------------------------------------------
-- Title      : Synthesis efficient architecture of SwellLed
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Minterms of Mpx is
begin 

oY <=   '1' when((iSel = cInactivated  and     iA = cActivated    and iB = cInactivated) or
                 (iSel = cInactivated  and      iA = cActivated    and iB = cActivated)  or
                 (iSel = cActivated    and      iA = cActivated    and iB = cActivated)  or
                 (iSel = cActivated    and      iA = cInactivated  and iB = cActivated))
            else '0';
end Minterms;
