-------------------------------------------------------------------------------
-- Title      : Architekure of Multiplexer with Prime Implicants
-------------------------------------------------------------------------------
-- University : FH-Hagenberg/HSSE, Hagenberg/Austria
--              Copyright (c) 2000
-------------------------------------------------------------------------------
-- Authors are:
-- offenberger: Simon Offenberger
-------------------------------------------------------------------------------

architecture Uni of MpxUni is
begin 
assert(iSel'length = natural(ceil(log2(real(iA'length))))) report "Length Missmacht" severity error;
    
process (iA,iSel) is 
begin

    oY <= iA(iA'low + to_integer(unsigned(iSel)));

end process;

end Uni;
