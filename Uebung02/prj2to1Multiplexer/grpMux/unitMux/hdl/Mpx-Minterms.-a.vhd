-------------------------------------------------------------------------------
-- Title      : Architekure of Multiplexer with Minterms
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Minterms of Mpx is
begin 

oY <=   (not(iSel)  and     iA  and not(iB)) or
        (not(iSel)  and     iA  and     iB)  or
        (   iSel    and     iA  and     iB)  or
        (   iSel    and not(iA) and     iB);       

end Minterms;
