-------------------------------------------------------------------------------
-- Title      : Architekture of a 2 to 1 Multiplexer with nand only
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture PrimImpl of Mpx is
begin 


oY <= '1' when ((iSel = cInactivated  and iA = cActivated) or
                (iSel = cActivated    and iB = cActivated))
          else '0';

end PrimImpl;
